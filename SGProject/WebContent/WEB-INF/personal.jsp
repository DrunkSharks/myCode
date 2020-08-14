<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.gec.project.dao.entity.User"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<%
	User user=(User)session.getAttribute("user");
	if(user==null){
		response.sendRedirect("login.jsp");
		return;
	}

%>
	<head>
		<meta charset="UTF-8">
		<title>个人中心</title>
		<link rel="stylesheet" type="text/css" href="css/persional.css"/>
		<style type="text/css">
			
		</style>
		<script src="js/jquery-1.8.3.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/personal.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			$(function(){
				
			});
		</script>
	</head>

	<body>
		<iframe src="header.jsp" frameborder="0" width="100%" height="100px" scrolling="no"></iframe>
		<div class="personal">
			<div class="personal-left">
				<div class="title">
					个人中心
				</div>
				<ul>
					<li class="i-index" id="1">
						<a href="#">
							<i class="border-left red-border-left" id="bor"></i>
							<i class="index-img1"></i>
							<span class="redname">我的主页</span></a>
					</li>
					<li class="i-order" id="2">
						<a href="#">
							<i class="border-left" id="bor"></i>
							<i class="order-img"></i>
							<span class="name">我的订单</span></a>
					</li>
					<li class="i-yushou" id="3">
						<a href="#">
							<i class="border-left" id="bor"></i>
							<i class="yushou-img"></i>
							<span class="name">我的预售</span></a>
					</li>
					<li class="i-shouhou" id="4">
						<a href="#">
							<i class="border-left" id="bor"></i>
							<i class="shouhou-img"></i>
							<span class="name">我的售后</span></a>
					</li>
					<li class="i-gift" id="5">
						<a href="#">
							<i class="border-left" id="bor"></i>
							<i class="gift-img"></i>
							<span class="name">我的礼物</span></a>
					</li>
					<li class="i-quan" id="6">
						<a href="#">
							<i class="border-left" id="bor"></i>
							<i class="quan-img"></i>
							<span class="name">我的优惠券</span></a>
					</li>
					<li class="i-address" id="7">
						<a href="#">
							<i class="border-left" id="bor"></i>
							<i class="address-img"></i>
							<span class="name">收货地址</span></a>
					</li>
					<li class="i-scode" id="8">
						<a href="#">
							<i class="border-left" id="bor"></i>
							<i class="scode-img"></i>
							<span class="name">S码通道</span></a>
					</li>

				</ul>
			</div>
			
			
			<div class="personal-right">
				<div class="right-index">
					<div class="shang">
						<div class="user">

							<img src="img/avt.jpg"/>
							<div class="info">
								<div class="row">
									<span>用户<%=user.getuId() %></span>
								</div>
								<div class="row">
									<span>绑定手机：<%=user.getuPhone().substring(0,4) %>****<%=user.getuPhone().substring(8,11) %></span>
								</div>
								<div class="row">
									<a href="#">修改密码></a>
								</div>
							</div>
							<a href="UserServlet?action=logout">
							<div class="login-out">
								注销账号
							</div></a>
						</div>
						<div class="items">
							<a href="#">
							<div class="nopay">
								
							</div>
							<br />
							<p>待付款的订单：0></p>
						</a>
						<span class="sep">
							
						</span>
						<a href="#">
							<div class="nosend">
								
							</div>
							<br />
							<p>待发货的订单：0></p>
						</a>
						<span class="sep">
							
						</span>
						<a href="#">
							<div class="noreceive">
								
							</div>
							<br />
							<p>待收货的订单：0></p>
						</a>
						<span class="sep">
							
						</span>
						<a href="#">
							<div class="cart">
								
							</div>
							<br />
							<p>我的购物车：0></p>
						</a>
						</div>
					</div>
					<div class="xia">
						<div class="goods">
							<div class="tit">
							猜你喜欢
						</div>
						<div class="love">
								<a href="#">
							<div class="wuping">
								<img src="img/${sessionScope.tangMaoPros[0].pRecPicPath }" width="240px" height="240px"/>
								<span class="name">${sessionScope.tangMaoPros[0].pName }</span>
								<span class="desc">${sessionScope.tangMaoPros[0].pDes }</span>
								<span class="price">￥${sessionScope.tangMaoPros[0].pPrice }</span>
							</div></a>
							<a href="#">
							<div class="wuping">
								<img src="img/${sessionScope.tangMaoPros[1].pRecPicPath }" width="240px" height="240px"/>
								<span class="name">${sessionScope.tangMaoPros[1].pName }</span>
								<span class="desc">${sessionScope.tangMaoPros[1].pDes }</span><br />
								<span class="price">￥${sessionScope.tangMaoPros[1].pPrice }</span>
							</div></a>
							<a href="#">
							<a href="#">
							<div class="wuping">
								<img src="img/${sessionScope.tangMaoPros[2].pRecPicPath }" width="240px" height="240px"/>
								<span class="name">${sessionScope.tangMaoPros[2].pName }</span>
								<span class="desc">${sessionScope.tangMaoPros[2].pDes }</span><br />
								<span class="price">￥${sessionScope.tangMaoPros[2].pPrice }</span>
							</div></a>
						</div>
						</div>
					</div>
				</div>
				
				
				<div class="right-order yincang">
					<div class="tabs">
						<a href="#" class="tab redtab" id="1">所有订单</a>
						<a href="#" class="tab" id="2">待付款</a>
						<a href="#" class="tab" id="3">待发货</a>
						<a href="#" class="tab" id="4">已发货</a>
						<a href="#" class="tab" id="5">已完成</a>
						<a href="#" class="tab" id="6">待评价</a>
					</div>
					<div class="order-empty">
						<img src="img/noresult.png"/>
						<div class="tip">
							您当前还没有订单哦~
						</div> 
						<a href="#" class="button">
							去逛逛
						</a>
					</div>
				</div>
				
				
				<div class="right-yushou yincang">
					<div class="tabs" style="font-weight: bold;">
						我的预售
					</div>
					<div class="yushou-empty">
						<img src="img/noresult.png"/>
						<div class="tip">
							您当前还没有预售订单哦~
						</div> 
						<a href="#" class="button">
							去逛逛
						</a>
					</div>
				</div>
				
				
				<div class="right-shouhou yincang">
					<div class="tabs" style="font-weight: bold;">
						申请记录
					</div>
					<div class="shouhou-empty">
						<img src="img/noresult.png"/>
						<div class="tip">
							暂无售后记录哦~
						</div> 
						<a href="#" class="button">
							去逛逛
						</a>
					</div>
				</div>
				
				
				<div class="right-gift yincang">
					<div class="tabs" style="font-weight: bold;">
						我的礼物
					</div>
					<p>微信关注商城公众号和小程序，才可以参与给好友送礼物活动和查看礼物记录呦~</p>
					<div class="qr-code">
						<ul>
							<li><img src="img/erweima.jpg" width="160px" height="160px"/>
							<p>微信公众号</p>
							<p style="margin-top: 15px;">扫码关注，可以获取最新优惠活动，不仅有精美商品推荐，还有抢优惠券、抽奖、送礼品等活动呦！</p>
							</li>
							<li><img src="img/xiaochengxu.jpg" width="160px" height="160px"/>
							<p>微信小程序</p>
							<p style="margin-top: 15px;">扫码访问，添加到我的小程序，可以随时给好友送礼物，体验最新送礼方式，还有更多优惠购物玩法等你来玩~</p>
							</li>
						</ul>
					</div>
				</div>
				
				
				<div class="right-quan yincang">
					<div class="tabs" style="font-weight: bold;">
						优惠券
					</div>
					<div class="tabs">
						<a href="#" class="tab redtab" id="1">未使用</a>
						<a href="#" class="tab" id="2">已使用</a>
						<a href="#" class="tab" id="3">已失效</a>
					</div>
					<div class="quan-empty">
						<img src="img/dog.png" width="120px" height="160px"/>
						<p>未找到相应优惠券</p>
						<p>关注参与搜狗官方商城微信公众号和商城社区活动可有机会获得优惠券呦~</p>
					</div>
				</div>
				
				
				<div class="right-address  yincang">
					<div class="tabs" style="font-weight: bold;">
						收获地址
					</div>
					
					<div class="addaddress">
						<div class="addimg"></div>
						添加新地址
					</div>
				</div>
				
				
				<div class="right-scode yincang">
					<div class="scode-shang">
						<div class="tabs" style="font-weight: bold;">
						S码通道
					</div>
					<input type="text" name="" placeholder="输入S码以绑定" class="scode-input" value="" />
					<button class="score-btn">立即绑定</button>
					</div>
					<div class="scode-xia">
						<div class="qus">S码使用规则</div>
						<div class="ans">1、使用S码可优先购买预售商品。<br />
							2、使用S码享受商品优先发货特权。<br />
							3、每个购买资格只可使用一次，商品下单后购买资格即刻失效，请勿将其从购物车中删除。
						</div>
						<div class="qus">谁会有S码</div>
						<div class="ans">
							我们将S码赠与搜狗商城及社区活跃用户，以及为搜狗提供热心帮助的好朋友们。
						</div>
						<div class="qus">让我们做朋友吧！</div>
						<div class="ans">
							关注搜狗官方商城微信，也有机会获得S码。欢迎关注~
						</div>
						<img src="img/erweima.jpg" width="160px" height="160px"/>
					</div>
				</div>
			</div>
		</div>
		<iframe src="foots.jsp" frameborder="0" width="100%" height="430px" scrolling="no"></iframe>
	</body>
</html>