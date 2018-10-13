<?php

use Botble\Base\Supports\SortItemsWithChildrenHelper;
use Botble\Blog\Repositories\Interfaces\CategoryInterface;
use Botble\Blog\Repositories\Interfaces\PostInterface;
use Botble\Blog\Repositories\Interfaces\TagInterface;
use Botble\Blog\Supports\PostFormat;

if (!function_exists('get_featured_posts')) {
    /**
     * @param $limit
     * @return mixed
     * @author Sang Nguyen
     */
    function get_featured_posts($limit)
    {
        return app(PostInterface::class)->getFeatured($limit);
    }
}

if (!function_exists('get_latest_posts')) {
    /**
     * @param $limit
     * @param array $excepts
     * @return mixed
     * @author Sang Nguyen
     */
    function get_latest_posts($limit, $excepts = [])
    {
        return app(PostInterface::class)->getListPostNonInList($excepts, $limit);
    }
}


if (!function_exists('get_related_posts')) {
    /**
     * @param $current_slug
     * @param $limit
     * @return mixed
     * @author Sang Nguyen
     */
    function get_related_posts($current_slug, $limit)
    {
        return app(PostInterface::class)->getRelated($current_slug, $limit);
    }
}

if (!function_exists('get_posts_by_category')) {
    /**
     * @param $category_id
     * @param $paginate
     * @param $limit
     * @return mixed
     * @author Sang Nguyen
     */
    function get_posts_by_category($category_id, $paginate = 12, $limit = 0)
    {
        return app(PostInterface::class)->getByCategory($category_id, $paginate, $limit);
    }
}

if (!function_exists('get_posts_by_tag')) {
    /**
     * @param $slug
     * @param $paginate
     * @return mixed
     * @author Sang Nguyen
     */
    function get_posts_by_tag($slug, $paginate = 12)
    {
        return app(PostInterface::class)->getByTag($slug, $paginate);
    }
}

if (!function_exists('get_posts_by_user')) {
    /**
     * @param $user_id
     * @param $paginate
     * @return mixed
     * @author Sang Nguyen
     */
    function get_posts_by_user($user_id, $paginate = 12)
    {
        return app(PostInterface::class)->getByUserId($user_id, $paginate);
    }
}

if (!function_exists('get_post_by_slug')) {
    /**
     * @param $slug
     * @return mixed
     * @author Sang Nguyen
     */
    function get_post_by_slug($slug)
    {
        return app(PostInterface::class)->getBySlug($slug, true);
    }
}


if (!function_exists('get_all_posts')) {
    /**
     * @param boolean $active
     * @return mixed
     * @author Sang Nguyen
     */
    function get_all_posts($active = true)
    {
        return app(PostInterface::class)->getAllPosts($active);
    }
}

if (!function_exists('get_recent_posts')) {
    /**
     * @param $limit
     * @return mixed
     * @author Sang Nguyen
     */
    function get_recent_posts($limit)
    {
        return app(PostInterface::class)->getRecentPosts($limit);
    }
}


if (!function_exists('get_featured_categories')) {
    /**
     * @param $limit
     * @return mixed
     * @author Sang Nguyen
     */
    function get_featured_categories($limit)
    {
        return app(CategoryInterface::class)->getFeaturedCategories($limit);
    }
}

if (!function_exists('get_category_by_slug')) {
    /**
     * @param $slug
     * @return mixed
     * @author Sang Nguyen
     */
    function get_category_by_slug($slug)
    {
        return app(CategoryInterface::class)->getBySlug($slug, true);
    }
}

if (!function_exists('get_all_categories')) {
    /**
     * @param array $condition
     * @return mixed
     * @author Sang Nguyen
     */
    function get_all_categories(array $condition = [])
    {
        return app(CategoryInterface::class)->getAllCategories($condition);
    }
}

if (!function_exists('get_tag_by_slug')) {
    /**
     * @param $slug
     * @return mixed
     * @author Sang Nguyen
     */
    function get_tag_by_slug($slug)
    {
        return app(TagInterface::class)->getBySlug($slug, true);
    }
}

if (!function_exists('get_all_tags')) {
    /**
     * @param boolean $active
     * @return mixed
     * @author Sang Nguyen
     */
    function get_all_tags($active = true)
    {
        return app(TagInterface::class)->getAllTags($active);
    }
}

if (!function_exists('get_popular_tags')) {
    /**
     * @param integer $limit
     * @return mixed
     * @author Sang Nguyen
     */
    function get_popular_tags($limit = 10)
    {
        return app(TagInterface::class)->getPopularTags($limit);
    }
}

if (!function_exists('get_popular_posts')) {
    /**
     * @param integer $limit
     * @param array $args
     * @return mixed
     * @author Sang Nguyen
     */
    function get_popular_posts($limit = 10, array $args = [])
    {
        return app(PostInterface::class)->getPopularPosts($limit, $args);
    }
}

if (!function_exists('get_category_by_id')) {
    /**
     * @param integer $id
     * @return mixed
     * @author Sang Nguyen
     */
    function get_category_by_id($id)
    {
        return app(CategoryInterface::class)->getCategoryById($id);
    }
}

if (!function_exists('get_categories')) {
    /**
     * @param array $args
     * @return array|mixed
     */
    function get_categories(array $args = [])
    {
        $indent = array_get($args, 'indent', '——');

        $repo = app(CategoryInterface::class);
        $categories = $repo->getCategories(array_get($args, 'select', ['*']), [
            'categories.order' => 'ASC',
            'categories.created_at' => 'DESC'
        ]);
        $categories = sort_item_with_children($categories);
        foreach ($categories as $category) {
            $indentText = '';
            $depth = (int)$category->depth;
            for ($i = 0; $i < $depth; $i++) {
                $indentText .= $indent;
            }
            $category->indent_text = $indentText;
        }
        return $categories;
    }
}

if (!function_exists('get_categories_with_children')) {
    /**
     * @return array
     */
    function get_categories_with_children()
    {
        $repo = app(CategoryInterface::class);
        $categories = $repo->allBy(['status' => 1], [], ['id', 'name', 'parent_id']);
        $sortHelper = app(SortItemsWithChildrenHelper::class);
        $sortHelper
            ->setChildrenProperty('child_cats')
            ->setItems($categories);
        return $sortHelper->sort();
    }
}

if (!function_exists('register_post_format')) {
    /**
     * @param array $formats
     * @return void
     * @author Sang Nguyen
     */
    function register_post_format(array $formats)
    {
        PostFormat::registerPostFormat($formats);
    }
}

if (!function_exists('get_post_formats')) {
    /**
     * @param bool $convert_to_list
     * @return array
     * @author Sang Nguyen
     */
    function get_post_formats($convert_to_list = false)
    {
        return PostFormat::getPostFormats($convert_to_list);
    }
}
