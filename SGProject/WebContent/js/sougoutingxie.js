$(function() {
	$(".module_11_li1,.module_11_li3").mouseover(function() {
		$(this).hide();
		$(this).next().show();
	});
	$(".module_11_li9,.module_11_li10").mouseout(function() {
		$(this).hide();
		$(this).prev().show();
	});

	$(".module_11_li5,.module_11_li7").mouseover(function() {
		$(this).hide();
		$(this).next().show();
	});
	$(".module_11_li11,.module_11_li12").mouseout(function() {
		$(this).hide();
		$(this).prev().show();
	});
});