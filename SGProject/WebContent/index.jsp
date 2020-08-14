<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>搜狗商城</title>
		<link rel="stylesheet" type="text/css" href="css/index.css" />
		<script src="js/jquery-1.8.3.min.js" type="text/javascript" charset="utf-8"></script>
		
		<script src="js/index.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body>
		<div id="box">
			
			<div id="header">
				<iframe src="header.jsp" width="100%" height="350" scrolling="no" frameborder="0"></iframe>
			</div>
			<div id="container">
				<div id="carousel">
					<div>
						<a href="#" id="carousel1"></a>
					</div>
					<div>
						<a href="#" id="carousel2"></a>
					</div>
					<div>
						<a href="#" id="carousel3"></a>
					</div>
					<div>
						<a href="#" id="carousel4"></a>
					</div>
					<div>
						<a href="#" id="carousel5"></a>
					</div>
					<div>
						<a href="#" id="carousel6"></a>
					</div>
					<div>
						<a href="#" id="carousel7"></a>
					</div>
					<div>
						<a href="#" id="carousel8"></a>
					</div>
				</div>
				<div id="flip">
					<div id="last"></div>
					<div id="next"></div>
				</div>
				<div id="page">
					<span class="icon-page pagebgc"></span>
					<span class="icon-page"></span>
					<span class="icon-page"></span>
					<span class="icon-page"></span>
					<span class="icon-page"></span>
					<span class="icon-page"></span>
					<span class="icon-page"></span>
					<span class="icon-page"></span>
				</div>
			</div>
			<div id="recommend">
			<c:if test="${sessionScope.zhiNengType==null }">
						<c:redirect url="HomepageServlet?action=showHomepage"></c:redirect>
					</c:if>
				<p>智能产品推荐<span>${sessionScope.zhiNengType.sDes}</span></p>
				<div>
					<c:forEach items="${sessionScope.zhiNengPros}" var="zhiNengPro" begin="0" end="1">
						<a href="ProductServlet?action=productDetails&pid=${zhiNengPro.pId }" class="recommend_product"><img src="img/${zhiNengPro.pRecPicPath}"/></a>
					</c:forEach>
				</div>
			</div>
			<div id="tangmao_products">
				<p>糖猫产品<span>${sessionScope.tangMaoType.sDes}</span><a href="#" class="all">全部&nbsp;<span>&gt;</span></a></p>
				<div>
					<c:forEach items="${ sessionScope.tangMaoPros}" var="tangMaoPro">
						<a href="ProductServlet?action=productDetails&pid=${tangMaoPro.pId }" class="tangmao_product">
							<dl>
								<dt><img src="img/${tangMaoPro.pRecPicPath } "/></dt>
								<dd>
									<span class="tangmao_name">${tangMaoPro.pName }</span>
									<span class="gongneng">${tangMaoPro.pDes }</span>
									<span class="tangmao_price">￥${tangMaoPro.pPrice }</span>
								</dd>
							</dl>
						</a>
					</c:forEach>
				</div>
			</div>
			<div class="ad">
				<img src="img/ad1.png"/>
			</div>
			<div id="gg">
				<a href="personal.jsp">
					<img src="img/per.png">
				</a>
			</div>
			<div id="baokuan_products">
				<p>爆款产品<span>给您精心挑选的爆款产品</span></p>
			</div>
			<div id="swiper_container">
				<div id="swiper">
					<div>
						<a href="#" id="swiper1"></a>
					</div>
					<div>
						<a href="#" id="swiper2"></a>
					</div>
					<div>
						<a href="#" id="swiper3"></a>
					</div>
					<div>
						<a href="#" id="swiper4"></a>
					</div>
				</div>
				<div id="swiper_flip">
					<div id="swiper_last"></div>
					<div id="swiper_next"></div>
				</div>
				<div id="swiper_page">
					<span class="icon-page pagebgc"></span>
					<span class="icon-page"></span>
					<span class="icon-page"></span>
					<span class="icon-page"></span>
				</div>
			</div>
			<div id="peijian">
				<p>糖猫配件<span>${sessionScope.peiJianType.sDes}</span><a href="#" class="all">全部&nbsp;<span>&gt;</span></a></p>
				<div>
					<c:forEach items="${sessionScope.peiJians}" var="peiJian">
						<a href="ProductServlet?action=productDetails&pid=${peiJian.pId }" class="peijian_product">
							<dl>
								<dt><img src="img/${peiJian.pRecPicPath }"/></dt>
								<dd>
									<span class="peijian_name">${peiJian.pName}</span>
									<span class="pjgn">${peiJian.pDes }</span>
									<span class="peijian_price">￥${peiJian.pPrice }</span>
								</dd>
							</dl>
						</a>
					</c:forEach>
				</div>
			</div>
			<div class="ad">
				<img src="img/ad2.png"/>
			</div>
			<div id="product_video">
				<p>产品视频<span>生动演示，更快了解产品特色</span></p>
				<div>
					<a href="javascript:void(0)" class="video">
						<dl>
							<dt><img src="img/videoimg1.jpg"/></dt>
							<dd>
								<span class="video_name">搜狗AI录音笔</span><br/>
								<span class="video_intro">录音笔也能出口成章了！</span>
							</dd>
						</dl>
						<div class="bofang"></div>
					</a>
					<a href="javascript:void(0)" class="video">
						<dl>
							<dt><img src="img/videoimg2.jpg"/></dt>
							<dd>
								<span class="video_name">糖猫JOY2</span><br/>
								<span class="video_intro">不在身边，也能时刻关心你的孩子</span>
							</dd>
						</dl>
						<div class="bofang"></div>
					</a>
					<a href="javascript:void(0)" class="video">
						<dl>
							<dt><img src="img/videoimg3.jpg"/></dt>
							<dd>
								<span class="video_name">糖猫Plus2</span><br/>
								<span class="video_intro">能学妈妈声音讲故事的神奇手表</span>
							</dd>
						</dl>
						<div class="bofang"></div>
					</a>
					<a href="javascript:void(0)" class="video">
						<dl>
							<dt><img src="img/videoimg4.jpg"/></dt>
							<dd>
								<span class="video_name">搜狗翻译宝Pro</span><br/>
								<span class="video_intro">歪果仁靠一款翻译神器CARRY全场</span>
							</dd>
						</dl>
						<div class="bofang"></div>
					</a>
				</div>
			</div>
			<div id="footer" style="height:430px;background-color: #FFFFFF;">
				<iframe src="foots.jsp" width="100%" height="100%" scrolling="no" frameborder="0"></iframe>
			</div>
		</div>
		<div id="mask">
			<div id="shipin">
				<div>
					<p id="title">搜狗AI录音笔<span class="close"></span></p>
					<video loop="loop" controls="controls" width="900" height="540" src="img/mp4/m1.mp4"></video>
				</div>
				<div>
					<p id="title">糖猫JOY2<span class="close"></span></p>
					<video loop="loop" controls="controls" width="900" height="540" src="img/mp4/m2.mp4"></video>
				</div>
				<div>
					<p id="title">糖猫Plus2<span class="close"></span></p>
					<video loop="loop" controls="controls" width="900" height="540" src="img/mp4/m3.mp4"></video>
				</div>
				<div>	
					<p id="title">搜狗翻译宝Pro<span class="close"></span></p>
					<video loop="loop" controls="controls" width="900" height="540" src="img/mp4/m4.mp4"></video>
				</div>
			</div>
		</div>
	</body>

</html>