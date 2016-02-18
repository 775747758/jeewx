<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<html>
<head>
<meta charset="utf-8" />
<title>${type }</title>
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no">
<link href="webpage/weixin/mshop/mobile/css/reset.css" type="text/css" rel="stylesheet">
<link href="webpage/weixin/mshop/mobile/css/mall.css" type="text/css" rel="stylesheet">
<link href="webpage/weixin/mshop/mobile/css/order.css" type="text/css" rel="stylesheet">
</head>

<style>

</style>



<body>
	<!-- header -->
	<header style="overflow: hidden;">
		<a href="javascript:history.back();"><img src="webpage/weixin/mshop/mobile/images/icon-1.1.png" style="width: 12px; float: left; margin: 10px 12px;"></a>
		<h1 style="float: left; text-align: center; width: 87%; color: #fff;">${type }</h1>
	</header>
	<!-- header -->
	
	<div class="content current" style="border:none;">
	<c:if test="${fn:length(storeList)==0}">
			<img src="webpage/weixin/mshop/mobile/images/emptycart.png" class="nothing-img">
			<h3 class="nothing-text">还没有此类店铺哦！</h3>
			<div href="" class="nothing-go">
				<a href="${webRoot}/mshopWechatController.do?goShop&customerId=${customerId}">去逛逛</a>
			</div>
		</c:if>
	</div>
	<c:if test="${fn:length(storeList)!=0}">
	<ul class="shop">
		<c:forEach items="${storeList}" var="store">
			<a href="${path}/mshopWechatController.do?goStore&storeId=${store.id }&customerId=${customerId}" style="color: #000;">
				<li><img src="${store.imgurl }">
					<div class="shop-tex">
						<p class="shop-name">${store.storeName }</p>
						<c:if test="${not empty store.mobilePhone }">
							<p class="shop-images">联系方式:${store.mobilePhone }</p>
						</c:if>
						<c:if test="${empty store.mobilePhone }">
							<p class="shop-images">店家比较懒，还没有写联系方式哦！</p>
						</c:if>

					</div></li>
			</a>
		</c:forEach>
	</ul>
	</c:if>

	
</body>
</html>
