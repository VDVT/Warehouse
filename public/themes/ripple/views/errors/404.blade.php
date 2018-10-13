<div class="page-404 mt-5" style="padding-bottom: 0">
    <div class="container block-4" id="donation-form">
        <div class="row">
            <div class="col"></div>
            <div class="col-md-8">
                <div class="text-center">
                <img src="{{ Theme::asset()->url('images/404_error.jpg') }}" alt="{{ __('Page could not be found') }}">
                </div>
                <p>&nbsp;</p>
                <h3>{{ __('Page could not be found') }}</h3>
                <p>{{ __('This may have occurred because of several reasons') }}</p>
                <ul>
                    <li>{{ __('The page you requested does not exist.') }}</li>
                    <li>{{ __('The link you clicked is outdated and have moved to a new location.') }}</li>
                    <li>{{ __('You are not authorized to view the requested resource.') }}</li>
                </ul>

                <p>{!! __('Please use the menu above or return to the homepage by <a href=":link">clicking here</a>.', ['link' => route('public.index')]) !!}</p>
            </div>
            <div class="col"></div>
        </div>
    </div>
  <br>
<br>
</section>