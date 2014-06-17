$(document).ready(function(){
	$(".created_surveys .delete").on("click", function(event) {
		event.preventDefault();

			var target = $(event.target)

		$.ajax({
			url: target.attr('href'),
			type: 'DELETE',
			success: function(response){
				target.parent().remove();
			}
		});
	});
});


