$(document).ready(function(){var e=$("#table-backups");e.on("click",".deleteDialog",function(e){e.preventDefault(),$("#delete-crud-entry").data("section",$(this).data("section")),$("#delete-crud-modal").modal("show")}),e.on("click",".restoreBackup",function(e){e.preventDefault(),$("#restore-backup-button").data("section",$(this).data("section")),$("#restore-backup-modal").modal("show")}),$("#delete-crud-entry").on("click",function(o){o.preventDefault(),$("#delete-crud-modal").modal("hide");var t=$(this).data("section");$.ajax({url:t,type:"GET",success:function(o){o.error?Botble.showNotice("error",o.message,Botble.languages.notices_msg.error):(e.find('a[data-section="'+t+'"]').closest("tr").remove(),Botble.showNotice("success",o.message,Botble.languages.notices_msg.success))},error:function(e){Botble.handleError(e)}})}),$("#restore-backup-button").on("click",function(e){e.preventDefault();var o=$(this);o.html('<i class="fa fa-spin fa-spinner" aria-hidden="true"></i> '+o.text()),$.ajax({url:o.data("section"),type:"GET",success:function(e){o.find("i").remove(),o.closest(".modal").modal("hide"),e.error?Botble.showNotice("error",e.message,Botble.languages.notices_msg.error):(Botble.showNotice("success",e.message,Botble.languages.notices_msg.success),window.location.reload())},error:function(e){o.find("i").remove(),Botble.handleError(e)}})}),$(document).on("click","#generate_backup",function(e){e.preventDefault(),$("#name").val(""),$("#description").val(""),$("#create-backup-modal").modal("show")}),$("#create-backup-modal").on("click","#create-backup-button",function(o){o.preventDefault();var t=$(this);t.html('<i class="fa fa-spin fa-spinner" aria-hidden="true"></i> '+t.text());var a=$("#name").val(),r=$("#description").val(),s=!1;""!==a&&null!==a||(s=!0,Botble.showNotice("error","Backup name is required!",Botble.languages.notices_msg.error)),""!==r&&null!==r||(s=!0,Botble.showNotice("error","Backup description is required!",Botble.languages.notices_msg.error)),s?t.find("i").remove():$.ajax({url:$("div[data-route-create]").data("route-create"),type:"POST",data:{name:a,description:r},success:function(o){t.find("i").remove(),t.closest(".modal").modal("hide"),o.error?Botble.showNotice("error",o.message,Botble.languages.notices_msg.error):(e.find("tbody").append(o.data),Botble.showNotice("success",o.message,Botble.languages.notices_msg.success))},error:function(e){t.find("i").remove(),Botble.handleError(e)}})})});