//= require jquery
//= require rails-ujs
//= require_tree .

$(function(){
	$("form#new_confess").keypress(function(event) {
	    if (event.which == 13) {
	        event.preventDefault();
			$('input[type="submit"]').attr('disabled','disabled');
	        $("form").submit();
	    }
	});
});