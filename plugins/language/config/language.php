<?php

return [

    // Negotiate for the user locale using the Accept-Language header if it's not defined in the URL?
    // If false, system will take app.php locale attribute
    'useAcceptLanguageHeader' => env('LANGUAGE_USE_ACCEPT_LANGUAGE_HEADER', true),

    // If LaravelLocalizationRedirectFilter is active and hideDefaultLocaleInURL
    // is true, the url would not have the default application language
    //
    // IMPORTANT - When hideDefaultLocaleInURL is set to true, the unlocalized root is treated as the applications default locale "app.locale".
    // Because of this language negotiation using the Accept-Language header will NEVER occur when hideDefaultLocaleInURL is true.
    //
    'hideDefaultLocaleInURL' => env('LANGUAGE_HIDE_DEFAULT_LOCALE_IN_URL', true),

    'show_item_in_default_language_if_current_version_not_existed' => env('LANGUAGE_SHOW_ITEM_IN_DEFAULT_IF_CURRENT_VERSION_NOT_EXISTED', true),

];
