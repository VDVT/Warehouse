<script id="attribute-item-template" type="text/x-handlebars-template">
	<div class="attribute-item">
	    <div class="attr-item-left">
	        <img class="performance-image-preview" src="{{ asset('assets/images/no-image.svg') }}" alt="">
	        <input type="hidden" class="performance_img" name="performance[@{{key}}][image]">
	        <br>
	        <button type="button" class="btn btn-warning btn-performance-image"><i class="fa fa-plus"></i> {{ trans('productsolutions::productsolutions.forms.add_image') }}</button>
	        <a title="{{ trans('productsolutions::productsolutions.forms.remove_image') }}" class="btn-performance-remove-image" href=""><i class="fa fa-trash-o" aria-hidden="true"></i></a>
	    </div>
	    <div class="attr-item-right">
	        <textarea class="form-control" rows="5" placeholder="Description for product solution" name="performance[@{{key}}][content]" cols="50"></textarea>
	    </div>
	    <div class="attr-item-drop">
	        <i class="fa fa-trash-o" aria-hidden="true"></i>
	    </div>
	    <div class="clearfix"></div>
	</div>
</script>