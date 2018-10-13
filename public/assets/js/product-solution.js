$(document).ready(function(){
 //    var el = document.getElementById("autocomplete_list_related");
	// var sortable = new Sortable(el, {
	// 	group: 'omega',
	// 	animation: 150,
	// 	dataIdAttr: 'data-id'
	// });

	const source = document.getElementById("attribute-item-template").innerHTML
	const template = Handlebars.compile (source);
	const default_image = '/assets/images/no-image.svg'

    $('.btn-performance-attribute').on('click', function(event) {
    	event.preventDefault();
		const attr_item_template = template({key: Date.now()})
    	$('.group-attribute').append(attr_item_template);

    	initMediaIntegrate();
    });

    $(document).on('click', '.attr-item-drop', function(event){
    	event.preventDefault();
    	$(this).closest('.attribute-item').remove()
    });

	initMediaIntegrate();

	$(document).on('click', '.btn-performance-remove-image', function(event){
		event.preventDefault();
    	$(this).siblings('.performance_img').val('');
    	$(this).siblings('.performance-image-preview').attr('src', default_image);
    	$(this).siblings('.btn-performance-remove-image').show();
    });

    $('.product_name').autoComplete({
        minChars: 2,
        // cache: false,
        source: function(term, suggest){
            term = term.toLowerCase();
            $.ajax({
	            url: '/admin/product-categories-api',
	            type: 'GET',
	            data: {},
	            dataType: "json",
	            success:function(data) {
	                const products = data;
	                var suggestions = [];
	                if(products.length > 0){
	                	for (i=0; i<products.length; i++)
                			if (products[i].name.toLowerCase().indexOf(term) >= 0) 
                				suggestions.push(products[i]);
	                }
	                suggest(suggestions);
	            },
	            error: function(errorThrown){
	                console.log(errorThrown);
	            }
	        });
        },
        renderItem: function (item, search){
	        search = search.replace(/[-\/\\^$*+?.()|[\]{}]/g, '\\$&');
	        var re = new RegExp("(" + search.split(' ').join('|') + ")", "gi");
	        return '<div class="autocomplete-suggestion" data-id="'+item.id+'" data-name="'+item.name+'">'+item.name.replace(re, "<b>$1</b>")+'</div>';
	    },
	    onSelect: function(e, term, item){
	        $('.related_product_box #autocomplete_list_related').append(`
				<li data-id="${item.data('id')}">
		            <i class="fa fa-times-circle rm-product-related-item" aria-hidden="true"></i>
		            <span>${item.data('name')}</span>
		            <input type="hidden" name="related_product[]" value="${item.data('id')}">
		            <i class="fa fa-arrows-v drag-product-related-item" aria-hidden="true"></i>
		        </li>
	        `);
	    }
    });

    

	$(document).on('click', '#autocomplete_list_related .fa', function(event){
    	event.preventDefault();
    	$(this).parent().remove()
    });

});

const initMediaIntegrate = () => {
	if (jQuery().rvMedia) {
	    $('.btn-performance-image').rvMedia({
	        multiple: false,
	        onSelectFiles: function (files, $el) {
	            var firstItem = _.first(files);
	            $el.siblings('.performance_img').val(firstItem.url);
                $el.siblings('.performance-image-preview').attr('src', firstItem.thumb);
                $el.siblings('.btn-performance-remove-image').show();
	        }
	    });
	}
}