$(document).ready(function(){

	if (jQuery().rvMedia) {
	    $('.btn-content-image').rvMedia({
	        multiple: false,
	        onSelectFiles: function (files, $el) {
	            var firstItem = _.first(files);
	            $el.siblings('.icon').val(firstItem.url);
                $el.siblings('.content-image-preview').attr('src', firstItem.thumb);
                $el.siblings('.btn-content-remove-image').show();
                $el.siblings('.content-image-preview').show();
	        }
	    });
	}

    $('.autoComplete_field').autoComplete({
        minChars: 2,
        // cache: false,
        source: function(term, suggest){
            term = term.toLowerCase();
            $.ajax({
	            url: '/admin/projects-api',
	            type: 'GET',
	            data: {},
	            dataType: "json",
	            success:function(data) {
	                const projects = data;
	                var suggestions = [];
	                if(projects.length > 0){
	                	for (i=0; i<projects.length; i++)
                			if (projects[i].name.toLowerCase().indexOf(term) >= 0) 
                				suggestions.push(projects[i]);
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
	        $('.autocomplete_box #autocomplete_list_item').append(`
				<li data-id="${item.data('id')}">
		            <i class="fa fa-times-circle rm-product-related-item" aria-hidden="true"></i>
		            <span>${item.data('name')}</span>
		            <input type="hidden" name="recent_project[]" value="${item.data('id')}">
		            <i class="fa fa-arrows-v drag-product-related-item" aria-hidden="true"></i>
		        </li>
	        `);
	    }
    });



	$(document).on('click', '#autocomplete_list_item .fa', function(event){
    	event.preventDefault();
    	$(this).parent().remove()
    });


    $('.key_autoComplete_field').autoComplete({
        minChars: 2,
        // cache: false,
        source: function(term, suggest){
            term = term.toLowerCase();
            $.ajax({
	            url: '/admin/productsolutions-api',
	            type: 'GET',
	            data: {},
	            dataType: "json",
	            success:function(data) {
	                const projects = data;
	                var suggestions = [];
	                if(projects.length > 0){
	                	for (i=0; i<projects.length; i++)
                			if (projects[i].name.toLowerCase().indexOf(term) >= 0) 
                				suggestions.push(projects[i]);
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
	        $('.key_autocomplete_box #key_autocomplete_list_item').append(`
				<li data-id="${item.data('id')}">
		            <i class="fa fa-times-circle rm-product-related-item" aria-hidden="true"></i>
		            <span>${item.data('name')}</span>
		            <input type="hidden" name="key_solution[]" value="${item.data('id')}">
		            <i class="fa fa-arrows-v drag-product-related-item" aria-hidden="true"></i>
		        </li>
	        `);
	    }
    });

    

	$(document).on('click', '#key_autocomplete_list_item .fa', function(event){
    	event.preventDefault();
    	$(this).parent().remove()
    });

});