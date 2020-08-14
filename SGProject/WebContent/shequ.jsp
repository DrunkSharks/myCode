<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>社区</title>
<link rel="stylesheet" type="text/css" href="css/shequ.css" />
<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" type="text/css"
	href="css/bootstrap-theme.min.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
</head>

<body>

	<!--quanju开始-->
	<div class="quanju">

		<!--shequ_title开始-->
		<div class="shequ_title">
			<div class="shequ_title_div1">
				<img src="img/shequ_logo.png" />
			</div>
			<div class="shequ_title_div2">
				<a href="#">社区首页</a>
			</div>
			<div class="shequ_title_div3">
				<a href="#">智能录音笔C1</a>
			</div>
			<div class="shequ_title_div4">
				<a href="#">翻译笔</a>
			</div>
			<div class="shequ_title_div5">
				<a href="#">糖猫M2</a>
			</div>
			<div class="shequ_title_div6">
				<a href="#">糖猫T3</a>
			</div>
			<div class="shequ_title_div7">
				<a href="#">更多</a><i><img src="img/shequ_xiala.png" /></i>
			</div>
			<div class="shequ_title_div8"></div>
			<div class="shequ_title_div9">
				<a href="#">登录</a>
			</div>
			<div class="shequ_title_div10">
				<a href="#">注册</a>
			</div>
		</div>
		<!--shequ_title结束-->

		<!--background开始-->
		<div class="background">

			<!--shequ_lunbo开始-->
			<div class="shequ_lunbo">
				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="img/shequ_lunbo_1.png" alt="">
							<div class="carousel-caption"></div>
						</div>
						<div class="item">
							<img src="img/shequ_lunbo_2.png" alt="">
							<div class="carousel-caption"></div>
						</div>

					</div>

				</div>
			</div>
			<!--shequ_lunbo结束-->

			<div class="center">


				<!--shequ_left开始-->
				<div class="shequ_left">
					<!--shequ_left_div开始-->
					<c:if test="${sessionScope.shequXinwens==null }">
						<c:redirect url="ShequXinwenServlet?action=allList"></c:redirect>
					</c:if>
					<c:set var="sXinwens" value="${sessionScope.shequXinwens.get(0) }"></c:set>
					<div class="shequ_left_div">
						<div class="shequ_left_div_title">
							<div class="shequ_left_div_title_font">
								<a href="#">${sXinwens.sxDes }</a>
							</div>
							<div class="shequ_left_div_title_img">
								<img src="img/shequ_user.png" />&nbsp;${sXinwens.sxLoginName }&emsp;<img
									src="img/shequ_model.png" />&nbsp;智能录音笔C1&emsp;${sXinwens.sxModdate }
							</div>

							<div class="shequ_left_div_title_info">
								<img src="img/shequ_view.png" />&nbsp;${sXinwens.sxClick }&emsp;&emsp;<img
									src="img/shequ_reply.png" style="position: relative; top: 2px;" />&nbsp;${sXinwens.sxPinglun }&emsp;&emsp;<img
									src="img/shequ_share_home.png"
									style="position: relative; top: 3px;" />
							</div>
						</div>

						<div class="shequ_left_div_img">
							<a href="#"><img src="img/shequ_left_div_title.jpg" /></a>
						</div>
						<p>智能录音笔C1亮相全国政协新闻发布会，新华社记者强烈推荐</p>
					</div>

					<!--shequ_left_div结束-->

					<!--shequ_left_div2开始-->
					<div class="shequ_left_div2">

						<c:if test="${sessionScope.shequXinwens==null }">
							<c:redirect url="ShequXinwenServlet?action=allList"></c:redirect>
						</c:if>
						<c:forEach items="${sessionScope.shequXinwens }" var="shequXinwen">
							<c:if test="${shequXinwen.sxId!=1 }">
								<div class="shequ_left_div2_info1">
									<div class="shequ_left_div2_info1_div1">
										<img src="img/shequ_left_div2_info1_user.gif"
											style="position: relative; top: 25px;" />
									</div>
									<div class="shequ_left_div2_info1_div2">
										<div class="shequ_left_div2_info1_div2_font">
											<a href="#">${shequXinwen.sxDes }</a>
										</div>
										<div class="shequ_left_div2_info1_div2_img">
											<img src="img/shequ_user.png" />&nbsp;${shequXinwen.sxLoginName }
											&emsp;<img src="img/shequ_model.png" />&nbsp;智能录音笔C1&emsp;${shequXinwen.sxModdate }
										</div>

									</div>
									<div class="shequ_left_div2_info1_div3">
										<img src="img/shequ_view.png" />&nbsp;${shequXinwen.sxClick }&emsp;&emsp;<img
											src="img/shequ_reply.png"
											style="position: relative; top: 2px;" />&nbsp;${shequXinwen.sxPinglun }&emsp;&emsp;<img
											src="img/shequ_share_home.png"
											style="position: relative; top: 3px;" />
									</div>
								</div>
							</c:if>
						</c:forEach>


						<div class="shequ_left_div2_info2">
							加载更多<img src="img/shequ_xiala.png"
								style="position: relative; top: 3px;" />
						</div>

					</div>
					<!--shequ_left_div2结束-->

				</div>
				<!--shequ_left结束-->

				<!--shequ_right开始-->
				<div class="shequ_right">

					<div class="shequ_right_login">
						<div class="shequ_right_login_div1">
							<div class="shequ_right_login_div1_img">
								<img src="img/shequ_left_div2_info1_user.gif" />
							</div>
							<div class="shequ_right_login_div1_login">
								&emsp; <a href="#">登录</a>
								<p>&emsp;社区新首页等你来体验！</p>
							</div>
						</div>
					</div>

					<div class="shequ_right_login2">
						<h3>推荐板块</h3>
					</div>

					<div class="shequ_right_login3">
						<a href="#" class="shequ_right_login3_a1">翻译宝Pro</a> <a href="#"
							class="shequ_right_login3_a2">翻译宝</a> <a href="#"
							class="shequ_right_login3_a3">翻译笔</a> <a href="#"
							class="shequ_right_login3_a4">糖猫M2</a> <a href="#"
							class="shequ_right_login3_a5">糖猫R1</a> <a href="#"
							class="shequ_right_login3_a6">糖猫E2</a> <a href="#"
							class="shequ_right_login3_a7">糖猫Hero</a> <a href="#"
							class="shequ_right_login3_a8">糖猫M1</a> <a href="#"
							class="shequ_right_login3_a9">糖猫Plus</a>
					</div>

					<div class="shequ_right_login4">
						<h3>热门活动</h3>
					</div>

					<div class="shequ_right_login5">
						<h3>热门文章</h3>
					</div>


					<c:if test="${sessionScope.shequRecs==null }">
						<c:redirect url="ShequrecServlet?action=allList"></c:redirect>
					</c:if>
					<c:forEach items="${sessionScope.shequRecs }" var="list">
						<div class="shequ_right_login6">
							<a href="#"><img src="img/${list.srPicpath }" /></a>
							<p>
								<a href="#">${list.srDes }</a>
							</p>
						</div>
					</c:forEach>

					<div class="shequ_right_login7">
						<h3>头条推荐</h3>
					</div>

					<div class="shequ_right_login8">
						<a href="#" style="padding-top: 20px;">糖猫4G旗舰双摄版Hero表开箱图鉴：更有科技</a>
						<a href="#">孩子安全有保证，美好时刻随时记录不错过</a> <a href="#"
							style="padding-bottom: 20px;">糖猫新款手表color，用色彩记录孩子的美好</a>
					</div>

				</div>
				<!--shequ_right结束-->

			</div>

		</div>
		<!--background结束-->

		<!--shequ_foot开始-->
		<div class="shequ_foot">
			<div class="shequ_foot_div1">
				<a href="#">关于我们</a> <a href="#">意见反馈及投诉</a> <a href="#">用户协议</a> <a
					href="#">隐私政策</a> <a href="#">网址大全</a>
			</div>
			<p>Copyright ©2018 Sogou.com. All Rights Reserved. 京ICP证050897号</p>
		</div>
		<!--shequ_foot结束-->

	</div>
	<!--quanju结束-->
</body>

</html>
<script src="js/jquery-1.11.3.min.js" type="text/javascript"
	charset="utf-8"></script>
<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>