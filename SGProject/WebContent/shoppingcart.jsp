<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>搜狗商城-购物车</title>
		<link rel="stylesheet" type="text/css" href="css/shoppingcart.css"/>
		<script src="js/jquery-1.8.3.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/shoppingcart.js" type="text/javascript" charset="utf-8"></script>
	</head>
	<body>
		<div id="header">
			<iframe src="header.jsp" width="100%" height="120px" scrolling="no" frameborder="0"></iframe>
		</div>
		<div id="container">
			<div id="mycart">
				<div class="top">
					<div class="allselect">
						<span class="checkbox">
							<span class="select"></span>
						</span>全选		
					</div>
					<div class="product_name">商品名称</div>
					<div class="product_price">单价</div>
					<div class="product_count">数量</div>
					<div class="product_total">小计</div>
					<div class="product_operater">操作</div>
				</div>
				
				<c:forEach items="${sessionScope.mycarts }" var="mycart">
					<div class="product">
						<ul>
							<li class="isselect">
								<span class="checkbox">
									<input type="hidden" class="ischecked" value="${mycart.checkedFlag }">
									<span class="select"></span>
								</span>
							</li>
							<li class="name">
								<div><img alt="找不到图片" src="img/${mycart.product.pPicpath }" width="100%" height="98px"></div>
								<a href="#">${mycart.product.pName }</a>
							</li>
							<li class="price">
								${mycart.product.pPrice }元
							</li>
							<li class="count">
								<div class="pro_num">
									<div class="sub"></div>
									<input type="text" name="" id="" value="${mycart.pNum }" />
									<div class="add"></div>
								</div>
							</li>
							<li class="total">
								80.00元
							</li>
							<input type="hidden" id="cartId" value="${mycart.cId }">
							<li class="delete">
								<a href="JavaScript:void(0)">删除</a>
							</li>
						</ul>
					</div>
				</c:forEach>
				<!-- 
				<div class="product">
					<ul>
						<li class="isselect">
							<span class="checkbox">
								<span class="select"></span>
							</span>
						</li>
						<li class="name">
							<div></div>
							<a href="#">T2/basic专用原装表带布丁粉纯色</a>
						</li>
						<li class="price">
							80.00元
						</li>
						<li class="count">
							<div class="pro_num">
								<div class="sub"></div>
								<input type="text" name="" id="" value="1" />
								<div class="add"></div>
							</div>
						</li>
						<li class="total">
							80.00元
						</li>
						<li class="delete">
							<a href="JavaScript:void(0)">删除</a>
						</li>
					</ul>
				</div>
				<div class="product">
					<ul>
						<li class="isselect">
							<span class="checkbox">
								<span class="select"></span>
							</span>
						</li>
						<li class="name">
							<div></div>
							<a href="#">糖猫JOY2 能学口语的儿童视频电话手表蓝色</a>
						</li>
						<li class="price">
							379.00元
						</li>
						<li class="count">
							<div class="pro_num">
								<div class="sub"></div>
								<input type="text" name="" id="" value="1" />
								<div class="add"></div>
							</div>
						</li>
						<li class="total">
							379.00元
						</li>
						<li class="delete">
							<a href="JavaScript:void(0)">删除</a>
						</li>
					</ul>
				</div>
				<div class="product">
					<ul>
						<li class="isselect">
							<span class="checkbox">
								<span class="select"></span>
							</span>
						</li>
						<li class="name">
							<div></div>
							<a href="#">搜狗AI录音笔C1炫彩版纯真白</a>
						</li>
						<li class="price">
							398.00元
						</li>
						<li class="count">
							<div class="pro_num">
								<div class="sub"></div>
								<input type="text" name="" id="" value="1" />
								<div class="add"></div>
							</div>
						</li>
						<li class="total">
							398.00元
						</li>
						<li class="delete">
							<a href="JavaScript:void(0)">删除</a>
						</li>
					</ul>
				</div>
				<div class="product">
					<ul>
						<li class="isselect">
							<span class="checkbox">
								<span class="select"></span>
							</span>
						</li>
						<li class="name">
							<div></div>
							<a href="#">糖猫Plus2 能讲故事的电话手表蓝色</a>
						</li>
						<li class="price">
							199.00元
						</li>
						<li class="count">
							<div class="pro_num">
								<div class="sub"></div>
								<input type="text" name="" id="" value="1" />
								<div class="add"></div>
							</div>
						</li>
						<li class="total">
							199.00元
						</li>
						<li class="delete">
							<a href="JavaScript:void(0)">删除</a>
						</li>
					</ul>
				</div>
			</div>
			-->
			<div id="jiesuan">
				<div id="account">
					<div class="allselect">
						<span class="checkbox">
							<span class="select"></span>
						</span>全选
					</div>
					<span id="content">共&nbsp;<span id="zong">8</span>&nbsp;件商品，已选择&nbsp;<span id="num">8</span>&nbsp;件</span>
					<div id="heji">合计：<span id="zong">￥1932.00</span></div>
					<div id="jisuan_btn">去结算</div>
				</div>
			</div>
		</div>
		<div id="recommend">
			<p>热门推荐<span>给您精心挑选的热门产品，让您的生活更加便捷</span></p>
			<div>
				<a href="#" class="product">
					<dl>
						<dt><img src="img/cart1.png"/></dt>
						<dd>
							<span class="name">搜狗AI录音笔S1</span>
							<span class="gongneng">预计2月26日发货  预售付定金50元抵300元  媲美专业翻译机 9种语言离线翻译 录音实时转写文字准确率98%</span>
							<span class="price">￥2698.00</span>
						</dd>
					</dl>
				</a>
				<a href="#" class="product">
					<dl>
						<dt><img src="img/cart2.png"/></dt>
						<dd>
							<span class="name">搜狗AI录音笔E1</span>
							<span class="gongneng">预计2月26日发货  录音实时转文字准确率98%  录音1小时 出稿5分钟 深度降噪 同声传译</span>
							<span class="price">￥1298.00</span>
						</dd>
					</dl>
				</a>
				<a href="#" class="product">
					<dl>
						<dt><img src="img/cart3.jpg"/></dt>
						<dd>
							<span class="name">糖猫Y1 大嘴猴联名款视频电话手表</span>
							<span class="gongneng">512MB系统内存 4G存储空间 高清视频通话 英语口语学习 大嘴猴联名款</span>
							<span class="price">￥598.00</span>
						</dd>
					</dl>
				</a>
				<a href="#" class="product">
					<dl>
						<dt><img src="img/cart4.png"/></dt>
						<dd>
							<span class="name">搜狗AI录音笔C1 Pro故宫宫廷联名款</span>
							<span class="gongneng">预计2月26日发货 前1000名支付用户送充电宝 语音秒速转文字 WiFi快传 同声传译 32G存储 超强待机</span>
							<span class="price">￥684.00</span>
						</dd>
					</dl>
				</a>
			</div>
		</div>
		<div id="footer">
			<iframe src="foots.jsp" width="100%" height="430px" scrolling="no" frameborder="0"></iframe>
		</div>
		<div id="mask"></div>
		<div id="confirmbox">
			<p>是否确认删除该商品？</p>
			<div id="confirm">确认</div>
			<div id="cancel">取消</div>
		</div>
	</body>
</html>
