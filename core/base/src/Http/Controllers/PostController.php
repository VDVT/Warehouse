<?php

namespace Botble\Base\Http\Controllers;

use Illuminate\Routing\Controller;
use SeoHelper;
use Theme;
use Botble\Blog\Repositories\Interfaces\PostInterface;
use Botble\Base\Supports\Helper;


class PostController extends Controller
{
    protected $postRepository;

    public function __construct(PostInterface $postRepository)
    {
        $this->postRepository = $postRepository;
    }

	public function getList()
    {
        $posts = $this->postRepository->getAllPosts(7);
        return Theme::scope('post.list', compact('posts'))->render();
    }

	public function details($slug, PostInterface $postRepository)
    {
        $post = $postRepository->getBySlug($slug, true);
        if (empty($post)) abort(404);
        Helper::handleViewCount($post, 'viewed_post');
        $seo = get_meta_data($post->id, 'seo_meta', POST_MODULE_SCREEN_NAME, true);
        if(!empty($seo))
            SeoHelper::setTitle($seo['seo_title'])->setDescription($seo['seo_description'])->setKeywords($seo['seo_keyword']);

        return Theme::scope('post.details', compact('post'))->render();
    }
}