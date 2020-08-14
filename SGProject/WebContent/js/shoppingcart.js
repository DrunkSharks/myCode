var delete_num; //记录删除的商品索引
var cartId;
function jisuan(){
	var heji=0;
	$("#mycart .product ul").each(function(i,dom){
		//单价
		var price=parseFloat($(dom).children(".price").text());
		//数量
		var num=parseInt($(dom).children(".count").children(".pro_num").children("input").attr("value"));
		//小计
		var xiaoji=price*num;
		$(dom).children(".total").text(xiaoji.toFixed(2));
		//只对没被删除的和没被选中的商品合计
		if($(dom).parent().css("display")!="none" && $(dom).children(".isselect").children().children(".select").css("display")=="block")
		{
			heji+=xiaoji;
		}
	});
	$("#jiesuan #account #heji span").text(heji.toFixed(2));
}

//商品数量
function productNum(){
	var num=0;
	$("#mycart .product .count .pro_num input").each(function(i,dom){
		if($(dom).parent().parent().parent().parent().css("display")!="none")
		{
			num+=parseInt($(dom).attr("value"));
		}
	});
	//console.log(num);
	$("#jiesuan #account #content #zong").text(num);
}

//选中商品数量
function selectNum(){
	var num=0;
	$("#mycart .product ul").each(function(i,dom){
		if($(dom).children(".isselect").children().children(".select").css("display")=="block" && $(dom).parent().css("display")!="none")
		{
			num+=parseInt($(dom).children(".count").children(".pro_num").children("input").attr("value"));
		}
	});
	//console.log(num);
	$("#jiesuan #account #content #num").text(num);
}

$().ready(function(){
	ischecked();
	isAllSelect();
	productNum();
	selectNum();
	jisuan();
	//全选
	$(".allselect .checkbox").click(function(){
		var isselect;  //1为选中  2为未选中
		var display=$(this).children().css("display");
		if(display=="none")
		{
			display="block";
			isselect=1;
		}
		else{
			display="none";
			isselect=2;
		}
		//console.log(display);
		window.location.href="MycartServlet?action=updateAll&isselect="+isselect;
		/*
		$(".allselect .checkbox .select").css("display",display);
		$("#mycart .product .isselect .checkbox .select").css("display",display);
		selectNum();
		jisuan();
		*/
	});
	
	//单选
	$("#mycart .product .isselect .checkbox").click(function(){
		var isselect;  //1为选中  2为未选中
		var display=$(this).children(".select").css("display");
		if(display=="none")
		{
			display="block";
			isselect=1;
		}
		else{
			display="none";
			isselect=2;
		}
		$(this).children(".select").css("display",display);
		/*
		var displays=[];
		displays=$("#mycart .product .isselect .checkbox .select");
		var flag=true;
		for(var i=0;i<displays.length;i++)
		{
			if(displays[i].style.display=="none" || displays[i].style.display=="")
			{
				flag=false;			
				//$(".allselect .checkbox .select").css("display","none");
			}
		}
		if(flag)
		{
			$(".allselect .checkbox .select").css("display","block");
		}
		else{
			$(".allselect .checkbox .select").css("display","none");
		}*/
		isAllSelect();
		selectNum();
		jisuan();
		
		//选中修改数据库中数据
		var cid=$(this).parent().siblings("#cartId").attr("value");
		//console.log(cid);
		window.location.href="MycartServlet?action=update&isselect="+isselect+"&cid="+cid;
	});
	
	//减按钮悬浮
	$("#mycart .product .count .pro_num .sub").hover(function(){
		var amount=$(this).siblings("input").attr("value");
		if(amount>1)
		{
			$(this).addClass("xuanfu");
		}	
	},function(){
		var amount=$(this).siblings("input").attr("value");
		if(amount>1)
		{
			$(this).removeClass("xuanfu");
		}
	});
	//加按钮悬浮
	$("#mycart .product .count .pro_num .add").hover(function(){
		$(this).addClass("xuanfu");
	},function(){
		$(this).removeClass("xuanfu");
	});
	
	//加按钮点击事件
	$("#mycart .product .count .pro_num .add").click(function(){
		var num=$(this).siblings("input").attr("value");
		num++;
		var cid=$(this).parent().parent().siblings("#cartId").attr("value");
		window.location.href="MycartServlet?action=update&num="+num+"&cid="+cid;
		/*
		$(this).siblings("input").attr("value",num);
		productNum();
		selectNum();
		jisuan();*/
	});
	
	//减按钮点击事件
	$("#mycart .product .count .pro_num .sub").click(function(){
		var num=$(this).siblings("input").attr("value");
		if(num>1)
		{
			num--;
			$(this).siblings("input").attr("value",num);
		}
		if(num<=1)
		{
			$(this).removeClass("xuanfu");
		}
		var cid=$(this).parent().parent().siblings("#cartId").attr("value");
		window.location.href="MycartServlet?action=update&num="+num+"&cid="+cid;
		/*
		productNum();
		selectNum();
		jisuan();
		*/
	});
	
	
	
	//删除商品
	$("#mycart .product .delete a").click(function(){
		$("#mask").css("display","block");
		$("#confirmbox").css("display","block");
		delete_num=$("#mycart .product .delete a").index($(this));
		cartId=$(this).parent().prev().attr("value");
		//console.log(delete_num)
		/*
		if($("#mycart .product .delete").index($(this))==$("#mycart .product .delete").size()-1)
		{
			$(this).parent().parent().prev().css("border","0");
		}
		$(this).parent().parent().css("display","none");
		productNum();
		selectNum();
		jisuan();
		*/
	});
	
	//确认按钮点击事件
	$("#confirmbox #confirm").click(function(){
		$("#mask").css("display","none");
		$("#confirmbox").css("display","none");
		if(delete_num==$("#mycart .product .delete a").size()-1)
		{
			$("#mycart .product").eq(delete_num-1).css("border","0");
			//$(this).parent().parent().prev().css("border","0");
		}
		$("#mycart .product").eq(delete_num).css("display","none");
		//$(this).parent().parent().css("display","none");
		productNum();
		selectNum();
		jisuan();
		window.location.href="MycartServlet?action=delete&cartId="+cartId;
	});
	
	//取消按钮点击事件
	$("#confirmbox #cancel").click(function(){
		$("#mask").css("display","none");
		$("#confirmbox").css("display","none");
	});
	
	//鼠标悬浮图片效果
	$("#recommend div a").hover(function(){
		$(this).animate({
			top:"-=4px"
		},300);
	},function(){
		$(this).animate({
			top:"+=4px"
		},300);	
	});
	
	var top=($(window).height()-227)/2;
	var left=($(window).width()-440)/2;
	$("#confirmbox").css({
		"top":top,
		"left":left
	});
});

function delete_pro(){
	if(delete_num==$("#mycart .product .delete a").size()-1)
	{
		$("#mycart .product").eq(delete_num-1).css("border","0");
		//$(this).parent().parent().prev().css("border","0");
	}
	$("#mycart .product").eq(detele_num).css("display","none");
	//$(this).parent().parent().css("display","none");
	productNum();
	selectNum();
	jisuan();
}

function ischecked(){
	$("#mycart .product .isselect .checkbox .ischecked").each(function(i,dom){
		if($(dom).attr("value")=="1")
		{
			$(dom).next().css("display","block");
		}
		else if($(dom).attr("value")=="2"){
			$(dom).next().css("display","none");
		}
	});
}

function isAllSelect(){
	var displays=[];
	displays=$("#mycart .product .isselect .checkbox .select");
	var flag=true;
	for(var i=0;i<displays.length;i++)
	{
		if(displays[i].style.display=="none" || displays[i].style.display=="")
		{
			flag=false;			
			//$(".allselect .checkbox .select").css("display","none");
		}
	}
	if(flag)
	{
		$(".allselect .checkbox .select").css("display","block");
	}
	else{
		$(".allselect .checkbox .select").css("display","none");
	}
}
