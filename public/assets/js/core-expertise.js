$(document).ready(function(){

	if (jQuery().rvMedia) {
	    $('.btn-content-image').rvMedia({
	        multiple: false,
	        onSelectFiles: function (files, $el) {
	            var firstItem = _.first(files);
	            $el.siblings('.content_image').val(firstItem.url);
                $el.siblings('.content-image-preview').attr('src', firstItem.thumb);
                $el.siblings('.btn-content-remove-image').show();
                $el.siblings('.content-image-preview').show();
	        }
	    });
	}

});