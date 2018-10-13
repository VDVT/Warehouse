<?php

register_page_template([
    'default' => __('Default')
]);

register_page_template([
    'no-sidebar' => __('No Sidebar')
]);

add_shortcode('google-map', 'Google map', 'Custom map', 'add_google_map_shortcode');

/**
 * @param $shortcode
 * @return mixed
 * @author Sang Nguyen
 */
function add_google_map_shortcode ($shortcode) {
    return Theme::partial('google-map', ['address' => $shortcode->content]);
}

shortcode()->setAdminConfig('google-map', Theme::partial('google-map-admin-config'));

add_shortcode('youtube-video', 'Youtube video', 'Add youtube video', 'add_youtube_video_shortcode');

/**
 * @param $shortcode
 * @return mixed
 * @author Sang Nguyen
 */
function add_youtube_video_shortcode ($shortcode) {
    return Theme::partial('video', ['url' => $shortcode->content]);
}

shortcode()->setAdminConfig('youtube-video', Theme::partial('youtube-admin-config'));

theme_option()->setSection([
    'title' => __('General'),
    'desc' => __('General settings'),
    'id' => 'opt-text-subsection-general',
    'subsection' => true,
    'icon' => 'fa fa-home',
]);

theme_option()->setSection([
    'title' => __('Logo'),
    'desc' => __('Change logo'),
    'id' => 'opt-text-subsection-logo',
    'subsection' => true,
    'icon' => 'fa fa-image',
    'fields' => [
        [
            'id' => 'logo',
            'type' => 'mediaImage',
            'label' => __('Logo'),
            'attributes' => [
                'name' => 'logo',
                'value' => null,
            ],
        ],
    ],
]);

theme_option()->setField([
    'id' => 'copyright',
    'section_id' => 'opt-text-subsection-general',
    'type' => 'text',
    'label' => __('Copyright'),
    'attributes' => [
        'name' => 'copyright',
        'value' => '© 2017 Botble Technologies. All right reserved. Designed by Nghia Minh',
        'options' => [
            'class' => 'form-control',
            'placeholder' => __('Change copyright'),
            'data-counter' => 120,
        ]
    ],
    'helper' => __('Copyright on footer of site'),
]);

theme_option()->setField([
    'id' => 'theme-color',
    'section_id' => 'opt-text-subsection-general',
    'type' => 'select',
    'label' => __('Theme color'),
    'attributes' => [
        'name' => 'theme_color',
        'list' => ['red' => 'Red', 'green' => 'Green', 'blue' => 'Blue'],
        'value' => 'red',
        'options' => [
            'class' => 'form-control',
        ],
    ],
    'helper' => __('Primary theme color'),
]);

theme_option()->setField([
    'id' => 'top-banner',
    'section_id' => 'opt-text-subsection-general',
    'type' => 'text',
    'label' => __('Top banner'),
    'attributes' => [
        'name' => 'top_banner',
        'value' => '/themes/newstv/assets/images/banner.png',
        'options' => [
            'class' => 'form-control',
            'placeholder' => __('Input image URL...'),
        ]
    ],
]);

theme_option()->setArgs(['debug' => true]);