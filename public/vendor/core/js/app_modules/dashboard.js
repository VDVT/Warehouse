var BDashboard=BDashboard||{};BDashboard.loadWidget=function(t,e,o,l){Botble.blockUI({target:t,iconOnly:!0,overlayColor:"none"}),"undefined"==typeof o&&(o={}),$.ajax({type:"GET",cache:!1,url:e,data:o,success:function(e){Botble.unblockUI(t),e.error?t.html('<div class="dashboard_widget_msg"><p>'+e.message+"</p>"):(t.html(e.data),"undefined"!=typeof l&&l(),0!=t.find(".scroller").length&&Botble.callScroll(t.find(".scroller")),$(".equal-height").equalHeights(),BDashboard.initSortable())},error:function(e){Botble.unblockUI(t),Botble.handleError(e)}})},BDashboard.initSortable=function(){var t=document.getElementById("list_widgets");Sortable.create(t,{group:"widgets",sort:!0,delay:0,disabled:!1,store:null,animation:150,handle:".portlet-title",ghostClass:"sortable-ghost",chosenClass:"sortable-chosen",dataIdAttr:"data-id",forceFallback:!1,fallbackClass:"sortable-fallback",fallbackOnBody:!1,scroll:!0,scrollSensitivity:30,scrollSpeed:10,onEnd:function(){var t=[];$.each($(".widget_item"),function(e,o){t.push($(o).prop("id"))}),$.ajax({type:"POST",cache:!1,url:BDashboard.routes.update_widget_order,data:{items:t},success:function(t){t.error?Botble.showNotice("error",t.message,Botble.languages.notices_msg.error):Botble.showNotice("success",t.message,Botble.languages.notices_msg.success)},error:function(t){Botble.handleError(t)}})}})},BDashboard.init=function(){var t=$("#list_widgets");$(document).on("click",".portlet > .portlet-title > .tools > a.remove",function(t){t.preventDefault(),$("#hide-widget-confirm-bttn").data("id",$(this).closest(".widget_item").prop("id")),$("#hide_widget_modal").modal("show")}),t.on("click",".page_next, .page_previous",function(t){t.preventDefault(),BDashboard.loadWidget($(this).closest(".portlet").find(".portlet-body"),$(this).prop("href"))}),t.on("change",".number_record .numb",function(t){t.preventDefault();var e=$(".number_record .numb").val();isNaN(e)?Botble.showNotice("error","Please input a number!",Botble.languages.notices_msg.error):BDashboard.loadWidget($(this).closest(".portlet").find(".portlet-body"),$(this).closest(".widget_item").attr("data-url"),{paginate:e})}),t.on("click",".btn_change_paginate",function(t){t.preventDefault();var e=$(".number_record .numb"),o=parseInt(e.val());$(this).hasClass("btn_up")&&(o+=5),$(this).hasClass("btn_down")&&(o-5>0?o-=5:o=0),e.val(o),BDashboard.loadWidget($(this).closest(".portlet").find(".portlet-body"),$(this).closest(".widget_item").attr("data-url"),{paginate:o})}),$("#hide-widget-confirm-bttn").click(function(t){t.preventDefault();var e=$(this).data("id");$.ajax({type:"GET",cache:!1,url:BDashboard.routes.hide_widget+"?name="+e,success:function(t){t.error?Botble.showNotice("error",t.message,Botble.languages.notices_msg.error):($("#"+e).fadeOut(),Botble.showNotice("success",t.message,Botble.languages.notices_msg.success)),$("#hide_widget_modal").modal("hide");var o=$(this).closest(".portlet");$(document).hasClass("page-portlet-fullscreen")&&$(document).removeClass("page-portlet-fullscreen"),o.find(".portlet-title .fullscreen").tooltip("destroy"),o.find(".portlet-title > .tools > .reload").tooltip("destroy"),o.find(".portlet-title > .tools > .remove").tooltip("destroy"),o.find(".portlet-title > .tools > .config").tooltip("destroy"),o.find(".portlet-title > .tools > .collapse, .portlet > .portlet-title > .tools > .expand").tooltip("destroy"),o.remove()},error:function(t){Botble.handleError(t)}})}),$(document).on("click",".portlet > .portlet-title > .tools > a.reload",function(t){t.preventDefault(),BDashboard.loadWidget($(this).closest(".portlet").find(".portlet-body"),$(this).closest(".widget_item").attr("data-url"))}),$(document).on("click",".portlet > .portlet-title > .tools > .collapse, .portlet .portlet-title > .tools > .expand",function(t){t.preventDefault();var e="expand";"collapse"==$.trim($(this).data("state"))?($(this).closest(".portlet").find(".portlet-body").removeClass("collapse"),e="collapse",BDashboard.loadWidget($(this).closest(".portlet").find(".portlet-body"),$(this).closest(".widget_item").attr("data-url"))):$(this).closest(".portlet").find(".portlet-body").removeClass("expand"),$(this).prop("data-state",e),$.ajax({type:"POST",cache:!1,url:BDashboard.routes.edit_widget_item,data:{name:$(this).closest(".widget_item").prop("id"),setting_name:"state",setting_value:e},success:function(){console.log("Save setting item successfully!")},error:function(t){Botble.handleError(t)}})});var e=$("#manage_widget_modal");$(document).on("click",".manage-widget",function(t){t.preventDefault(),e.modal("show")}),e.on("change",".swc_wrap input",function(){$(this).closest("section").find("i").toggleClass("widget_none_color")})},$(document).ready(function(){BDashboard.init()});