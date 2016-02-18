<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<meta charset="utf-8">
<title>商城</title>
<!--适配begin-->
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no">
<!--适配end-->
<link href="webpage/weixin/mshop/mobile/css/reset.css" type="text/css"
	rel="stylesheet">
<link href="webpage/weixin/mshop/mobile/css/nav.css" type="text/css"
	rel="stylesheet">
<link href="webpage/weixin/mshop/mobile/css/mall.css" type="text/css"
	rel="stylesheet">
<script src="webpage/weixin/mshop/mobile/js/TouchSlide.1.1.js"
	type="text/javascript"></script>
<!--banner begin-->
<div id="viewport" class="viewport">
	<div class="slider card card-nomb" style="visibility: visible;">
		<div id="focus" class="focus">
			<div class="hd">
				<ul></ul>
			</div>
			<div class="bd">
				<ul>
					<c:forEach items="${adList}" var="ad">
						<li><a href="${ad.url}" title="${ad.title}" target="_blank">
								<img name="ad_img" src="${ad.imgurl}" alt="${ad.title}" />
						</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<script type="text/javascript">
			TouchSlide({
				slideCell : "#focus",
				titCell : ".hd ul", //开启自动分页 autoPage:true ，此时设置 titCell 为导航元素包裹层
				mainCell : ".bd ul",
				delayTime : 600,
				interTime : 4000,
				effect : "leftLoop",
				autoPlay : true,//自动播放
				autoPage : true, //自动分页
				switchLoad : "_src" //切换加载，真实图片路径为"_src" 
			});
		</script>
	</div>
</div>
<!--banner end-->


<!--icon begin-->
<div class="mall-icon">
	<ul>
		<li><a href=""> <img
				src="webpage/weixin/mshop/mobile/images/icon08.png">
				<p>整点秒杀</p>
		</a></li>
		<li><a href=""> <img
				src="webpage/weixin/mshop/mobile/images/icon07.png">
				<p>超市</p>
		</a></li>
		<li><a href=""> <img
				src="webpage/weixin/mshop/mobile/images/icon07.png">
				<p>外卖</p>
		</a></li>
		<li><a href="mshopWechatController.do?goStoreList&typeId=4028813a505b239c01505b2439910001"> <img
				src="webpage/weixin/mshop/mobile/images/icon07.png">
				<p>水果</p>
		</a></li>
	</ul>
</div>
<!--icon end-->


<!--信息提示 begin-->
<div class="prompt">
	<img src="webpage/weixin/mshop/mobile/images/icon09.png">
	<p>公告：在本店消费满${dispatch.limitMoney }元包邮，邮费是${dispatch.expressPrice }元！</p>
</div>
<!--信息提示 end-->


<!--搜索 begin-->
<div class="search">
	<a href="search.html"><img
		src="webpage/weixin/mshop/mobile/images/icon-sraech.png"></a>
</div>
<!--搜索 end-->


<!--店铺begin-->
<div class="shop-tit">店铺推荐</div>
<ul class="shop">
	<c:forEach items="${recommendStoreList}" var="store">
		<li><img src="${store.imgurl }">
			<div class="shop-tex">
				<p class="shop-name">${store.storeName }</p>
				<c:if test="${store.mobilePhone!=null and store.mobilePhone!=''}">
					<p class="shop-images">联系方式：${store.mobilePhone }</p>
				</c:if>

			</div></li>
	</c:forEach>
</ul>
<!--店铺end-->


<!--nav begin-->
<div class="mainNav">
	<a href="javascript:void(0);" class="nav-icon"> <img
		src="webpage/weixin/mshop/mobile/images/icon04.png"> <span
		style="color: #00afff;">商城首页</span>
	</a> <a href="" class="nav-icon"> <img
		src="webpage/weixin/mshop/mobile/images/icon02.png"> <span>购物车</span>
	</a> <a href="" class="nav-icon"> <img
		src="webpage/weixin/mshop/mobile/images/icon03.png"> <span>订单管理</span>
	</a>
</div>

