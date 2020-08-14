$().ready(function(){
	var isChang = 0;
	$(".colBtn").mouseover(function(){
		var colBtnNo = $(this).index();
		if(colBtnNo!=isChang){
			$(this).css({
			"background-color":"white",
			"border-color": "#122B40"
		});
		}
	}).mouseout(function(){
		var colBtnNo = $(this).index();
		if(colBtnNo!=isChang){
			$(this).css("border-color","#d9d9d9");
		}
	});
	$(".colBtn").click(function(){
		var colIndex = $(this).index();
		isChang = colIndex;
		$(".colBtn").css("border-color","#d9d9d9");
		$(this).css({
			"border-color":"red",
			"outline":"none"
		});
		switch (colIndex){
			case 1:
				$("#bigImg").attr("src","img/bluePen.jpg");
				break;
			case 2:
				$("#bigImg").attr("src","img/blackPen.jpg");
				break;
			case 3:
				$("#bigImg").attr("src","img/whitePen.jpg");
				break;
			case 4:
				$("#bigImg").attr("src","img/yelloPen.png");
				break;
			case 5:
				$("#bigImg").attr("src","img/redPen.jpg");
				break;
			default:
				break;
		}
	});
	$(".imgList").children().hover(
		function(){
			$(this).css("border","1px solid red");
			var colIndex = $(this).index();
			switch (colIndex){
				case 0:
					$("#bigImg").attr("src","img/whitePen.jpg");
					break;
				case 1:
					$("#bigImg").attr("src","img/bluePen.jpg");
					break;
				case 2:
					$("#bigImg").attr("src","img/blackPen.jpg");
					break;
				case 3:
					$("#bigImg").attr("src","img/yelloPen.png");
					break;
				case 4:
					$("#bigImg").attr("src","img/redPen.jpg");
					break;
				default:
					break;
			}
		}
		,function(){
			$(this).css("border","1px solid #d9d9d9");
		}
	);
	$(".fixWin a").hover(
		function(){
			var fixIndex = $(this).index();
			switch (fixIndex){
				case 0:
					$(this).children().attr("src","img/redPerCen.png");
					break;
				case 1:
					$(this).children().attr("src","img/redCart.png");
					break;
				default:
					break;
			}
		}
		,function(){
			var fixIndex = $(this).index();
			switch (fixIndex){
				case 0:
					$(this).children().attr("src","img/perCen.png");
					break;
				case 1:
					$(this).children().attr("src","img/cart.png");
					break;
				default:
					break;
			}
		}
	);
	$(".reduce").hover(
		function(){
			var num = $(".num input").val();
			if(num>1){
				$(this).css("border","1px solid black");
			}
		}
		,function(){
			$(this).css("border","1px solid #d9d9d9");
		}
	);
	$(".reduce").click(function(){
		var num = $(".num input").val();
		if(num>1){
			$(".num input").val(--num);
		}
	});
	$(".add").hover(
		function(){
			$(this).css("border","1px solid black");
		}
		,function(){
			$(this).css("border","1px solid #d9d9d9");
		}
	);
	$(".add").click(function(){
		var num = $(".num input").val();
		$(".num input").val(++num);
		$("#pnum").val($(".num input").val());
	});
	$(".proDetails").hover(
		function(){
			var isDisplay = $(".picture").css("display");
			if(isDisplay=="none"){
				$(this).css("color","red");
			}
		}
		,function(){
			var isDisplay = $(".picture").css("display");
			if(isDisplay=="none"){
				$(this).css("color","black");
			}
		}
	);
	$(".proEvalu").hover(
		function(){
			var isDisplay = $(".discussion").css("display");
			if(isDisplay=="none"){
				$(this).css("color","red");
			}
		}
		,function(){
			var isDisplay = $(".discussion").css("display");
			if(isDisplay=="none"){
				$(this).css("color","black");
			}
		}
	);
	var isChang = 0;
	$(".proDetails").click(function(){
		if(isChang==1){
			isChang = 0;
			$(this).css("color","red").removeClass("noChang").addClass("chang");
			$(".proEvalu").css("color","black").removeClass("chang").addClass("noChang");
			$(".discussion").css("display","none");
			$(".picture").css("display","block");
			$(".more").css("display","none");
		}
	});
	$(".proEvalu").click(function(){
		if(isChang==0){
			isChang = 1;
			$(this).css("color","red").removeClass("noChang").addClass("chang");
			$(".proDetails").css("color","black").removeClass("chang").addClass("noChang");
			$(".discussion").css("display","block");
			$(".picture").css("display","none");
		}
	});
	$(".loadMore").click(function(){
		$(".more").css("display","block");
	});
	$(".commDetail").children().find("a").hover(
		function(){
			$(this).css("color","red");
		}
		,function(){
			$(this).css("color","black");
		}
	);
	$("#messImg").click(function(){
		$(".moreSpec").css("display","block");
	});
	$(".commDetail>div,.moreSpec").hover(
		function(){
			$(this).css("background-color","#F0F0F0");
		}
		,function(){
			$(this).css("background-color","white");
		}
	);
	$("#moreDiv,.floatDiv").hover(
		function(){
			$(".floatDiv").css("display","block");
		}
		,function(){
			$(".floatDiv").css("display","none");
		}
	);
	$(".fdBottom div").hover(
		function(){
			$(this).css("background-color","#F5F5F5");
		}
		,function(){
			$(this).css("background-color","white");
		}
	);
});