var i=0;
var size;
var num;
var p=0;
var flag=true;
//轮播
function carousel() {
	if(i<size-1)
	{
		i++;
	}
	else{
		i=0;
	}
	$("#page span").eq(i).addClass("pagebgc").siblings().removeClass("pagebgc");
	flag=false;
	$("#carousel").animate({
		left: "-=100%"
	}, 500, function() {
		$("#carousel div:first").insertAfter($("#carousel div:last"));
		$("#carousel").css("left", "0");
		flag=true;
	});
}

//爆款产品轮播
function swiper(){
	if(p<num-1)
	{
		p++;
	}
	else{
		p=0;
	}
	$("#swiper_page span").eq(p).addClass("pagebgc").siblings().removeClass("pagebgc");
	flag=false;
	$("#swiper").animate({
		left: "-=1180px"
	}, 500, function() {
		$("#swiper div:first").insertAfter($("#swiper div:last"));
		$("#swiper").css("left", "0");
		flag=true;
	});
}
$().ready(function() {
	//第一个轮播图个数
	size=$("#carousel div").size();
	//第二个轮播图个数
	num=$("#swiper_container #swiper div").size();
	//console.log(size);
	console.log(num);
	var time=setInterval(carousel, 3000);
	var swip=setInterval(swiper,3000);
	
	//轮播图页数点击
	$("#container #page span").click(function(){
		clearInterval(time);
		var index=$("#container #page span").index(this);
		//console.log(index);
		//相隔图片数量
		var d=(index+size-i)%size;
		var distance=(d*100)+"%";
		//console.log(distance);
		flag=false;
		$("#carousel").animate({
			left: '-='+distance
		}, 500, function() {
			for(var j=0;j<d;j++)
			{
				$("#carousel div:first").insertAfter($("#carousel div:last"));
			}
			$("#carousel").css("left", "0");
			flag=true;
		});
		i=index;
		$("#page span").eq(i).addClass("pagebgc").siblings().removeClass("pagebgc");
		time=setInterval(carousel,3000);
	});
	//上一页
	$("#container #flip #last").click(function(){
		if(flag)
		{
			flag=false;
			clearInterval(time);
			$("#carousel div:last").insertBefore($("#carousel div:first"));
			$("#carousel").css("left","-100%");
			$("#carousel").animate({
				left:"+=100%"
			},500,function(){
				flag=true;
			});
			i=(i+size)%size-1;
			$("#page span").eq(i).addClass("pagebgc").siblings().removeClass("pagebgc");
			time=setInterval(carousel,3000);
		}
	});
	//下一页
	$("#container #flip #next").click(function(){
		if(flag)
		{
			flag=false;
			clearInterval(time);
			carousel();
			time=setInterval(carousel,3000);
		}
	});
	
	
	//鼠标悬浮图片特效
	$("#recommend .recommend_product").hover(function(){
		$(this).animate({
			top:"-=4px"
		},300);
	},function(){
		$(this).animate({
			top:"+=4px"
		},300);
	});
	
	$("#tangmao_products .tangmao_product,#peijian .peijian_product").hover(function(){
		$(this).addClass("imgboxshadow");
		$(this).animate({
			top:"-=4px",
		},300);
	},function(){
		$(this).removeClass("imgboxshadow");
		$(this).animate({
			top:"+=4px"
		},300);
	});
	
	$("#product_video .video").hover(function(){
		$(this).addClass("imgboxshadow");
		$(this).children(".bofang").addClass("bofangtoumingdu");
		$(this).animate({
			top:"-=4px",
		},300);
	},function(){
		$(this).removeClass("imgboxshadow");
		$(this).children(".bofang").removeClass("bofangtoumingdu");
		$(this).animate({
			top:"+=4px"
		},300);
	});
	
	//爆款产品轮播器
	$("#swiper_container #swiper_page span").click(function(){
		clearInterval(swip);
		var swip_index=$("#swiper_container #swiper_page span").index(this);

		//相隔图片数量
		var r=(swip_index+num-p)%num;
		var swip_distance=(r*1180)+"px"
		flag=false;
		$("#swiper").animate({
			left: '-='+swip_distance
		}, 500, function() {
			for(var j=0;j<r;j++)
			{
				$("#swiper div:first").insertAfter($("#swiper div:last"));
			}
			$("#swiper").css("left", "0");
			flag=true;
		});
		p=swip_index;
		$("#swiper_container #swiper_page span").eq(p).addClass("pagebgc").siblings().removeClass("pagebgc");
		swip=setInterval(swiper,3000);
	});
	//上一页
	$("#swiper_container #swiper_flip #swiper_last").click(function(){
		if(flag)
		{
			flag=false;
			clearInterval(swip);
			$("#swiper div:last").insertBefore($("#swiper div:first"));
			$("#swiper").css("left","-1180px");
			$("#swiper").animate({
				left:"+=1180px"
			},500,function(){
				flag=true;
			});
			p=(p+num)%num-1;
			$("#swiper_container #swiper_page span").eq(p).addClass("pagebgc").siblings().removeClass("pagebgc");
			swip=setInterval(swiper,3000);
		}
	});
	//下一页
	$("#swiper_container #swiper_flip #swiper_next").click(function(){
		if(flag)
		{
			flag=false;
			clearInterval(swip);
			swiper();
			swip=setInterval(swiper,3000);
		}
	});
	
	$(".all").hover(function(){
		$(this).addClass("allcolor");
		$(this).children().css("color","#EA413C");
	},function(){
		$(this).removeClass("allcolor");
		$(this).children("span").css("color","#9C9C9C");
	});
	
	var arr=["img/mp4/m1.mp4"
			,"img/mp4/m2.mp4"
			,"img/mp4/m3.mp4"
			,"img/mp4/m4.mp4"];
	//点击播放视频
	$("#product_video .video").click(function(){
		var video_index=$("#product_video .video").index(this);
		//console.log(video_index);
		$("#mask #shipin div").eq(video_index).css("display","block");
		$("#mask #shipin div").eq(video_index).siblings().css("display","none");
		$("#mask").css("display","block");
		$("#mask #shipin div").eq(video_index).children("video").attr("src",arr[video_index]);
		$("#mask #shipin div").eq(video_index).children("video")[0].play();
	});
	
	//关闭视频
	$("#mask #shipin .close").click(function(){
		//console.log($(this).parent().next());
		$(this).parent().next().attr("src","");
		$("#mask").css("display","none");
	});
});