$(function() {
	$("#contact-card").draggable();
	$(".block").on("click", function() {
		$(".info").toggleClass("active");
	});
});