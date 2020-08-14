<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>商品详情</title>
		<link rel="stylesheet" href="css/bootstrap-theme.min.css" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<script src="js/jquery-1.11.3.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="css/sougou.css"/>
		<script src="js/sougou.js" type="text/javascript" charset="utf-8"></script>
	</head>
	<body>
		<iframe src="header.jsp" width="100%" height="380px" scrolling="no" frameborder="0" style="border-bottom: 1px solid #E8E8E8;"></iframe>
		<div class="fixWin">
			<a href="#"><img class="fixWinImg" src="img/perCen.png"/></a>
			<a href="#"><img class="fixWinImg" id="img02" src="img/cart.png"/></a>
			<a href="#"><img class="fixWinImg" src="img/redService.png"/></a>
		</div>
		<div class="container">
			<div class="navi">
				<a href="#">商城首页  </a>>
				<a href="#">智能翻译  </a>>
				<a href="#" class="thisDes">搜狗AI录音笔（智能录音笔C1）</a>
			</div>
			<div class="product">
				<div class="proLeft">
					<a href="#"><img id="bigImg" src="img/${product.pPicpath }"/></a>
					<!-- 
					<div class="imgList">
						<img src="img/whitePen.jpg"/>
						<img src="img/bluePen.jpg"/>
						<img src="img/blackPen.jpg"/>
						<img src="img/yelloPen.png"/>
						<img src="img/redPen.jpg"/>
					</div>
					-->
				</div>
				<div class="proRight">
					<div class="describe">
						<span>${product.pName }</span><br /><br />
						<p>${product.pDes }</p>
					</div>
					<div class="rmbPrice">
						<span class="rmb">￥</span>&nbsp;&nbsp;&nbsp;<span class="price">${product.pPrice }</span>&nbsp;&nbsp;&nbsp;<p class="freeShip">包邮</p>
					</div>
					<div class="penColor">
						<p>颜色</p>
						<input type="button" class="btn btn-default colBtn" value="蓝色"/>
						<input type="button" class="btn btn-default colBtn" value="黑色"/>
						<input type="button" class="btn btn-default colBtn" value="纯真白"/>
						<input type="button" class="btn btn-default colBtn" value="明媚黄"/>
						<input type="button" class="btn btn-default colBtn" value="热烈红"/>
					</div>
					<div class="num">
						<p>数量</p>
						<a href="JavaScript:void(0)"><img class="reduce" src="img/reduce.png"/></a>
						<input type="text" name="" id="" value="1" />
						<a href="JavaScript:void(0)"><img class="add" src="img/add.png"/></a><br /><br /><br />
					</div>
					<form action="MycartServlet?action=addCart&pid=${product.pId }" method="post">
						<div class="isBuy">
							<input type="hidden" id="pnum" name="pnum" value="1">
							<input type="submit" class="btn btn-default comeCart" value="加入购物车"/>
							<input type="button" class="btn btn-default buyNow" value="立即购买"/>
						</div>
					</form>
					<div class="threeDes">
						<span><img src="img/rightlogo.png"/>搜狗自营</span>
						<span><img src="img/rightlogo.png"/>7天无理由退货</span>
						<span><img src="img/rightlogo.png"/>一年内保障</span>
					</div>
				</div>
			</div>
			<div class="headline">
				<a href="#"><div class="productDet proDetails chang">商品详情</div></a>
				<a href="#"><div class="productDet proEvalu noChang">商品评价&nbsp;&nbsp;<span class="number">3948</span></div></a>
				<div class="blank"></div>
			</div>
			<div class="comment">
				<div class="picture">
					<img src="img/detail01.png"/>
					<img src="img/detail02.jpg"/>
					<img src="img/detail03.jpg"/>
					<img src="img/detail04.jpg"/>
					<img src="img/detail05.jpg"/>
					<img src="img/detail06.jpg"/>
					<img src="img/detail07.jpg"/>
					<img src="img/detail08.jpg"/>
					<img src="img/detail09.jpg"/>
					<img src="img/detail10.jpg"/>
					<img src="img/detail11.jpg"/>
					<img src="img/detail12.jpg"/>
					<img src="img/detail13.jpg"/>
					<img src="img/detail14.jpg"/>
					<img src="img/detail15.jpg"/>
				</div>
				<div class="discussion">
					<div class="disLeft">
						<div class="disLeftDiv"><span>热门评价</span></div>
						<img src="img/comment01.png"/>
						<img src="img/comment02.png"/>
						<img src="img/comment03.png"/>
						<img src="img/comment04.png"/>
						<img src="img/comment05.png"/>
						<img src="img/comment06.png"/>
						<img src="img/comment07.png"/>
						<img src="img/comment08.png"/>
						<img src="img/comment09.png"/>
						<img src="img/comment10.png"/>
						<div class="more">
							<img src="img/comment11.png"/>
							<img src="img/comment12.png"/>
							<img src="img/comment13.png"/>
							<img src="img/comment14.png"/>
							<img src="img/comment15.png"/>
							<img src="img/comment16.png"/>
							<img src="img/comment17.png"/>
							<img src="img/comment18.png"/>
							<img src="img/comment19.png"/>
							<img src="img/comment20.png"/>
						</div>
						<a href="#"><img class="loadMore" src="img/more.png"/></a>
					</div>
					<div class="disRight">
						<div class="disRightOne">
							<img src="img/smile.png"/>
						</div>
						<div class="disRightTwo">
							<div class="disRightDiv"><span>热门推荐</span></div>
							<a href="#"><img class="disRightImg" src="img/comRight01.png"/></a>
							<a href="#"><img class="disRightImg" src="img/comRight02.png"/></a>
							<a href="#"><img class="disRightImg" src="img/comRight03.png"/></a>
							<a href="#"><img class="disRightImg" src="img/comRight04.png"/></a>
						</div>
					</div>
				</div>
			</div>
		</div>
			<iframe src="foots.jsp" width="100%" height="450px" scrolling="no" frameborder="0"></iframe>
	</body>
</html>
