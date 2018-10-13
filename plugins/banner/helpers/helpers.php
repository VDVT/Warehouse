<?php

use Botble\Base\Supports\SortItemsWithChildrenHelper;
use Botble\Banner\Repositories\Interfaces\BannerInterface;
use Botble\Blog\Repositories\Interfaces\PostInterface;
use Botble\Blog\Repositories\Interfaces\TagInterface;
use Botble\Blog\Supports\PostFormat;

if (!function_exists('aa')) {
    /**
     * @param $limit
     * @return mixed
     * @author Sang Nguyen
     */
    function get_banners()
    {
        return app(BannerInterface::class)->getBanners();
    }
}