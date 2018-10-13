$(document).ready(function(){
	initMediaIntegrate();
});

const initMediaIntegrate = () => {
	if (jQuery().rvMedia) {
	    $('.btn-add-document').rvMedia({
	        multiple: false,
	        onSelectFiles: function (files, $el) {
	            var firstItem = _.first(files);

	            console.log(firstItem)

	            $el.siblings('[name="file_id"]').val(firstItem.id);
	            $el.siblings('[name="file"]').val(firstItem.url);
	            $el.siblings('[name="file_name"]').val(firstItem.basename);
                $el.siblings('.document-name-preview').html(`
					<span>
                        <i class="fa fa-file-archive-o" aria-hidden="true"></i> 
                        ${firstItem.basename}
                    </span>
                `);
             //    $el.siblings('.btn-performance-remove-image').show();
	        }
	    });
	}
}