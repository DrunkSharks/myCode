<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/goodslist.css"/>
		<script src="js/jquery-1.8.3.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/goodslist.js" type="text/javascript" charset="utf-8"></script>
	</head>
	<body>
	<c:set var="page" value="${requestScope.pageBean }"></c:set>
	<c:if test="${page.lists==null }">
		<jsp:forward page="ProductServlet?action=page"></jsp:forward>
	</c:if>
		<iframe src="header.jsp" width="100%" height="380px" frameborder="0" scrolling="no"></iframe>
		<div class="rq">
			<div class="title">
				<span class="black">首页</span><i class="jiantou"></i><span class="gray">糖猫配件</span>
			</div>
			<div class="daohang">
				<div class="fl">
					<span style="margin-right: -14px;">分类：</span>
					<a href="#">全部</a>
					<a href="#">智能翻译</a>
					<a href="#">糖猫手表</a>
					<a href="#">翻译配件</a>
					<a href="#">糖猫配件</a>
				</div>
				<div class="px">
					<span style="margin-right: -14px;">排序：</span>
					<a href="#">
						热度
						<span class="tubiao">
							<i class="s"></i>
							<i class="x"></i>
						</span>
					</a>
					<a href="#">
						价格
						<span class="tubiao">
							<i class="s"></i>
							<i class="x"></i>
						</span>
					</a>
					<a href="#">
						销量
						<span class="tubiao">
							<i class="s"></i>
							<i class="x"></i>
						</span>
					</a>
				</div>
			</div>
			<div id="peijian">
				<div>
				<c:forEach var="goods" items="${page.lists }">
					<a href="ProductServlet?action=productDetails&pid=${goods.pId }" class="peijian_product">
						<dl>
							<dt><img src="img/${goods.pPicpath}"/></dt>
							<dd>
								<span class="peijian_name">${goods.pName}</span>
								<span class="pjgn">${goods.pDes}</span>
								<span class="peijian_price">￥${goods.pPrice}</span>
							</dd>
						</dl>
					</a>
				</c:forEach>
				</div>
			</div>
			<div class="fenye">
				<div class="fy_btn">
					<c:if test="${page.dangQianPage!=1 }">
						<div class="page-qian">
							<a href="ProductServlet?action=page&page=${page.dangQianPage-1 }">上一页</a>
						</div>
					</c:if>
					<c:forEach begin="1" end="${page.totalPage }" step="1" var="i">
						<div class="page-ye">
							<a href="ProductServlet?action=page&page=${i }">${i }</a>
						</div>
					</c:forEach>
					<c:if test="${pageBean.dangQianPage!=page.totalPage }">
						<div class="page-hou">
							<a href="ProductServlet?action=page&page=${page.dangQianPage+1 }">下一页</a>
						</div>
					</c:if>
				</div>
			</div>
		</div>
		<iframe src="foots.jsp" width="100%" height="281px" frameborder="0" scrolling="no"></iframe>
	</body>
</html>