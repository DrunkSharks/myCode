<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/header.css" />
		<script type="text/javascript" src="js/jquery-1.11.3.min.js" ></script>
		<script>
			$().ready(function(){
				
				$(".drop-qr").mouseover(function(){
					
					$(".qrcode-box").removeClass("dis");
					$(".desc").removeClass("dis");
				});
				$(".drop-qr").mouseout(function(){
					
					$(".qrcode-box").addClass("dis");
					$(".desc").addClass("dis");
				});

			});
			$().ready(function(){
				
				$(".menu-name").mouseover(function(){
					
					$(".sub-menu").removeClass("dis");
					$(".sub-menu").removeClass("dis");
				});
				$(".menu-name").mouseout(function(){
					$(".sub-menu").addClass("dis");
					$(".sub-menu").addClass("dis");

				});
				$(".menu-name1").mouseover(function(){
					
					$(".sub-menu1").removeClass("dis");
					$(".sub-menu1").removeClass("dis");
				});
				$(".menu-name1").mouseout(function(){
					$(".sub-menu1").addClass("dis");
					$(".sub-menu1").addClass("dis");

				});
				$(".menu-name2").mouseover(function(){
					
					$(".sub-menu2").removeClass("dis");
					$(".sub-menu2").removeClass("dis");
				});
				$(".menu-name2").mouseout(function(){
					$(".sub-menu2").addClass("dis");
					$(".sub-menu2").addClass("dis");

				});				
			});
			

		</script>
	</head>
	<body>
			<div class="top">
			<div class="top_center">
				<a href="#" class="t1" target="_parent">搜狗商城</a>
				<span class="sep fl"></span>
				<a href="#" class="t1" target="_parent">意见反馈</a>
				<span class="sep fl"></span>
				<a href="#" class="t1" target="_parent">收藏本站</a>
				<a href="MycartServlet?action=getListMycart" class="t2 cart" target="_parent">购物车</a>
				<a href="login.jsp" class="t2" target="_parent">在线客服</a>
				<span class="sep fr"></span>
				<a href="" class="t2 fr drop-qr" target="_parent">手机商城
				<div class="qrcode-box dis">
					<img src="img/iphoneshop.png" width="144" height="144" class="disimg">
					<div class="desc">
						微信扫码用手机够买
					</div>
				</div>
				</a>
				<span class="sep fr"></span>
				<a href="sma.html" class="t2" target="_parent">S码通道</a>
				<span class="sep fr"></span>
				
					<c:choose>
						<c:when test="${not empty sessionScope.user.uLoginName}">
							<a href="login_shop" class="dropdown-toggle fr"  data-toggle="dropdown" target="_parent">${sessionScope.user.uLoginName}</a>
								 </c:when>
								 <c:otherwise>
								 	<a href="register.jsp" class="fr" target="_parent">注册</a>
								 	<a href="login.jsp" class="fr" target="_parent">登录</a>
								 </c:otherwise>
				 	</c:choose>
				 
			</div>
		</div>
		<div class="top_1">
			<div class="top_1_center">
				<img src="img/sougou-logo.png" class="fl"/>
				<span class="name fl">搜狗商城</span>
				<ul class="menu fl">
					<li class="menu-name l1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
					<li class="menu-name l1"><a target="_parent" href="index.jsp" >首页</a></li>
					<li class="menu-name l2"><a target="_parent" href="goodslist.jsp" pbtag="智能翻译">智能翻译</a>
						<div class="sub-menu h5-hide fl dis" pbflag="导航菜单-下拉">
							<ul class="wp ">
								<li class="sub-item">
									<a target="_parent" href="#" pbtag="搜狗AI录音笔C1 Pro">
										<span class="cover">
											<img src="img/fy1.jpg" alt="搜狗AI录音笔C1 Pro"/>
										</span>
										<span class="name">搜狗AI录音笔C1 Pro</span>
										<span class="price">¥&nbsp;598</span>
									</a>
									
								
									<span class="sub-sep"></span>
								</li>
							
								<li class="sub-item">
									<a target="_parent" href="#" pbtag="搜狗AI录音笔炫彩版">
										<span class="cover">
											<img src="img/fy2.jpg" alt="搜狗AI录音笔炫彩版"/>
										</span>
										<span class="name">搜狗AI录音笔炫彩版</span>
										<span class="price">¥&nbsp;398</span>
									</a>
									
								
									<span class="sub-sep"></span>
								</li>
								<li class="sub-item">
									<a target="_parent" href="#" pbtag="搜狗AI录音笔">
										<span class="cover">
											<img src="img/fy3.jpg" alt="搜狗AI录音笔"/>
										</span>
										<span class="name">搜狗AI录音笔</span>
										<span class="price">¥&nbsp;398</span>
									</a>
									<span class="sub-sep"></span>
								</li>
								<li class="sub-item">
									<a target="_parent" href="#" pbtag="翻译宝Pro">
										<span class="cover">
											<img src="img/fy4.png" alt="翻译宝Pro"/>
										</span>
										<span class="name">翻译宝Pro</span>
										<span class="price">¥&nbsp;2499</span>
									</a>
									<span class="sub-sep"></span>
								</li>
								<li class="sub-item">
									<a target="_parent" href="#" pbtag="录音翻译笔">
										<span class="cover">
											<img src="img/fy5.png" alt="录音翻译笔"/>
										</span>
										<span class="name">录音翻译笔</span>
										<span class="price">¥&nbsp;398</span>
									</a>
									
								</li>
								</li>
							</ul>
						</div>
					</li>
					<li class="menu-name1 l2"><a target="_parent" href="goodslist.jsp" >糖猫手表</a>		
						<div class="sub-menu1 h5-hide fl dis" pbflag="导航菜单-下拉">
							<ul class="wp ">
								<li class="sub-item">
									<a target="_parent" href="#" pbtag="糖猫Y1">
										<span class="cover">
											<img src="img/tm1.jpg" alt="糖猫Y1"/>
										</span>
										<span class="name">糖猫Y1</span>
										<span class="price">¥&nbsp;598</span>
									</a>
								
									<span class="sub-sep"></span>
								</li>
							
								<li class="sub-item">
									<a target="_parent" href="#" pbtag="JOY2大嘴猴联名款">
										<span class="cover">
											<img src="img/tm2.jpg" alt="JOY2大嘴猴联名款"/>
										</span>
										<span class="name">JOY2大嘴猴联名款</span>
										<span class="price">¥&nbsp;399</span>
									</a>
									
								
									<span class="sub-sep"></span>
								</li>
								<li class="sub-item">
									<a target="_parent" href="#" pbtag="糖猫plus2">
										<span class="cover">
											<img src="img/tm3.jpg" alt="糖猫plus2"/>
										</span>
										<span class="name">糖猫plus2</span>
										<span class="price">¥&nbsp;199</span>
									</a>
									<span class="sub-sep"></span>
								</li>
								<li class="sub-item">
									<a target="_parent" href="#" pbtag="糖猫Joy2">
										<span class="cover">
											<img src="img/tm4.jpg" alt="糖猫Joy2"/>
										</span>
										<span class="name">糖猫Joy2</span>
										<span class="price">¥&nbsp;379</span>
									</a>
									<span class="sub-sep"></span>
								</li>
								<li class="sub-item">
									<a target="_parent" href="#" pbtag="糖猫M2">
										<span class="cover">
											<img src="img/tm5.png" alt="糖猫M2"/>
										</span>
										<span class="name">糖猫M2</span>
										<span class="price">¥&nbsp;398</span>
									</a>
									
								</li>

								</li>
							</ul>
						</div>
					</li>
					<li class="menu-name2 l1"><a target="_parent" href="goodslist.jsp" >配件</a>
						<div class="sub-menu2 h5-hide fl dis" pbflag="导航菜单-下拉">
							<ul class="wp">
								<li class="sub-item">
									<a target="_parent" href="#" pbtag="糖猫T2 卡通吊坠保护套">
										<span class="cover">
											<img src="img/pj1.jpg" alt="糖猫T2 卡通吊坠保护套"/>
										</span>
										<span class="name">糖猫T2 卡通吊坠保护套</span>
										<span class="price">¥&nbsp;60</span>
									</a>
								
									<span class="sub-sep"></span>
								</li>
							
								<li class="sub-item">
									<a target="_parent" href="#" pbtag="basic 卡通吊坠保护套">
										<span class="cover">
											<img src="img/pj2.jpg" alt="basic 卡通吊坠保护套"/>
										</span>
										<span class="name">basic 卡通吊坠保护套</span>
										<span class="price">¥&nbsp;60</span>
									</a>
									<span class="sub-sep"></span>
								</li>
								<li class="sub-item">
									<a target="_parent" href="#" pbtag="糖猫学生儿童小书包">
										<span class="cover">
											<img src="img/pj3.jpg" alt="糖猫学生儿童小书包"/>
										</span>
										<span class="name">糖猫学生儿童小书包</span>
										<span class="price">¥&nbsp;110</span>
									</a>
									<span class="sub-sep"></span>
								</li>
								<li class="sub-item">
									<a target="_parent" href="#" pbtag="T2/basic专用原装表带">
										<span class="cover">
											<img src="img/pj4.jpg" alt="T2/basic专用原装表带"/>
										</span>
										<span class="name">T2/basic专用原装表带</span>
										<span class="price">¥&nbsp;79</span>
									</a>
									<span class="sub-sep"></span>
								</li>
								<li class="sub-item">
									<a target="_parent" href="#" pbtag="Color专用表带">
										<span class="cover">
											<img src="img/tm5.png" alt="Color专用表带"/>
										</span>
										<span class="name">Color专用表带</span>
										<span class="price">¥&nbsp;58</span>
									</a>
									
								</li>

								</li>
							</ul>
						</div>
					</li>
					<li class="menu-name l1"><a target="_parent" href="shequ.jsp" >社区</a></li>
					<li class="menu-name l3"><a target="_parent" href="sougoutingxie.jsp" >录音笔网页版</a></li>
				</ul>
			</div>
		</div>
	</body>
</html>
