<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<html>
<head>
<meta charset="utf-8">
<title>搜索</title>
<!--适配begin-->
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no">
<!--适配end-->
<link href="webpage/weixin/mshop/mobile/css/reset.css" rel="stylesheet"
	type="text/css" />
<link href="webpage/weixin/mshop/mobile/css/nav.css" type="text/css"
	rel="stylesheet">
<link href="webpage/weixin/mshop/mobile/css/search.css" type="text/css"
	rel="stylesheet">
<script src="webpage/weixin/mshop/mobile/js/jquery-2.1.3.min.js"
	type="text/javascript"></script>
</head>

<body>
	<!--nav begin-->
	<nav>
		<a href="${webRoot}/mshopWechatController.do?goShop&customerId=${customerId}" class="nav-icon"> <img
			src="webpage/weixin/mshop/mobile/images/icon01.png"> <span>商城首页</span>
		</a> <a href="${webRoot}/mshopWechatController.do?orderList&customerId=${customerId}" class="nav-icon"> <img
			src="webpage/weixin/mshop/mobile/images/icon03.png"> <span>订单管理</span>
		</a> <a href="${webRoot}/mshopWechatController.do?goUserCenter&customerId=${customerId}" class="nav-icon"> <img
			src="webpage/weixin/mshop/mobile/images/icon18.png"> <span>个人中心</span>
		</a> <a href="javascript:void(0);" class="nav-icon"> <img
			src="webpage/weixin/mshop/mobile/images/icon05.png"> <span
			style="color: #00afff;">搜索</span>
		</a>
	</nav>
	<!--nav end-->


	<!---->
	<div class="box">
		<ul class="menu">
			<li class="current">店铺</li>
			<li class="others">商品</li>
		</ul>
		<!---->
		<!---->
		<div class="content current"
			style="border: none; background-color: #fff;">
			<c:if test="${type=='store' }">
				<input type="text" id="input_store" class="input_shop"
					placeholder="请输入商家名称" value="${keyword }">
			</c:if>
			<c:if test="${type!='store' }">
				<input type="text" id="input_store" class="input_shop"
					placeholder="请输入商家名称">
			</c:if>
			<input type="button" class="search_shop" value="搜索"
				onclick="search('store')">
		</div>
		<div class="content current"
			style="display: none; border: none; background-color: #fff;">
			<c:if test="${type=='goods' }">
				<input type="text" id="input_goods" class="input_shop"
					placeholder="请输入商品名称" value="${keyword }">
			</c:if>
			<c:if test="${type!='goods' }">
				<input type="text" id="input_goods" class="input_shop"
					placeholder="请输入商品名称">
			</c:if>

			<input type="button" class="search_shop" value="搜索"
				onclick="search('goods')">
		</div>
		<section class="result shops list" style="margin-bottom: 65px;">
			<h1>搜索历史</h1>
			<hr>
			<c:if test="${type=='store' }">
				<c:forEach items="${result }" var="store">
					<div
						style="overflow: hidden; margin: 6px; border-bottom: 1px solid #ddd; padding-bottom: 6px;">
						<img src="${store.imgurl }"
							style="width: 80px; height: 60px; float: left; margin-right: 10px;">
						<div style="float: left; width: 65%;">
							<p style="font-weight: bold;">${store.storeName }</p>
							<p style="margin-top: 6px; color: #aaa;">${store.mobilePhone}</p>
						</div>
					</div>
				</c:forEach>
			</c:if>
			<c:if test="${type=='goods' }">
				<c:forEach items="${result }" var="goods">
					<div
						style="overflow: hidden; margin: 6px; border-bottom: 1px solid #ddd; padding-bottom: 6px;">
						<img src="${goods.imgurl }"
							style="width: 80px; height: 60px; float: left; margin-right: 10px;">
						<div style="float: left; width: 65%;">
							<div style="overflow: hidden;">
								<h1 style="float: left;">${goods.name }</h1>
								<p style="float: right;">${goods.realPrice }</p>
							</div>
							<small style="font-size: 10px;">销量${goods.sellCount }</small>
							</div>
					</div>
				</c:forEach>
			</c:if>
		</section>
	</div>
	<script>
		$(".menu li").click(function() {
			$(".menu li").addClass("others");
			$(this).removeClass("others").addClass("current");
			var index = $(".menu li").index(this);
			$(".content").hide();
			$(".content").eq(index).fadeIn(200);
		})
		function search(type) {
			if (type == "store") {
				if ($("#input_store").val().trim() == "") {
					alert("请输入您要搜索的内容！");
				} else {
					window.location.href = "${webRoot }/mshopWechatController.do?doSearch&customerId=${customerId }&type=store&keyword="
							+ $("#input_store").val().trim();
				}
			} else {
				if ($("#input_goods").val().trim() == "") {
					alert("请输入您要搜索的内容！");
				} else {
					window.location.href = "${webRoot }/mshopWechatController.do?doSearch&customerId=${customerId }&type=goods&keyword="
							+ $("#input_goods").val().trim();
				}
			}
		}
	</script>
</body>
</html>
