$().ready(function() {
	$(".fl").find("a").eq(0).css("color", "#ea413c");
	$(".fl").find("a").click(function() {
		$(".fl").find("a").css("color", "#595959");
		$(this).css("color", "#ea413c");
	});
});
$().ready(function() {
	$(".px").find("a").eq(0).css("color", "#ea413c");
	$(".px").find("a").eq(0).find(".x").addClass("xhover");
	$(".px").find("a").toggle(
		function() {
			$(".px").find("a").css("color", "#595959");
			$(".px").find("i").removeClass("shover");
			$(".px").find("i").removeClass("xhover");
			$(this).css("color", "#ea413c");
			$(this).find(".s").addClass("shover");
		},
		function() {
			$(".px").find("a").css("color", "#595959");
			$(".px").find("i").removeClass("shover");
			$(".px").find("i").removeClass("xhover");
			$(this).css("color", "#ea413c");
			$(this).find(".x").addClass("xhover");
		}
	);
});
$().ready(function() {
	$(".fy_btn").find(".page-ye").eq(0).addClass("bred")
	$(".page-qian").click(function() {
		var a = $(".fy_btn").find(".bred");
		if(a.index() == 1);
		else {
			a.removeClass("bred");
			a.prev().addClass("bred");
		}
	});
	$(".fy_btn").find(".page-ye").click(function() {
		$(this).siblings().removeClass("bred");
		$(this).addClass("bred");
	});
	$(".page-hou").click(function() {
		var a = $(".fy_btn").find(".bred");
		if(a.index() == $(".fy_btn").find(".page-ye").length);
		else {
			a.removeClass("bred");
			a.next().addClass("bred");
		}
	});
});