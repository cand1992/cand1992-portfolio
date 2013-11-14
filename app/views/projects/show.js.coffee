$(".project-info").html("<%= escape_javascript( render 'projects/project_modal', project: @project )%>")
$("#project-<%=@project.id %>").modal('show')