<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<html>
<head>
	<meta charset="utf-8">
	<title>个人中心</title>
    <!--适配begin-->
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
    <!--适配end-->
    <link href="webpage/weixin/mshop/mobile/css/reset.css" rel="stylesheet" type="text/css" />
    <link href="webpage/weixin/mshop/mobile/css/nav.css" type="text/css" rel="stylesheet">
    <link href="webpage/weixin/mshop/mobile/css/user.css" rel="stylesheet" type="text/css">
</head>
<body>
<!--nav begin-->
	<nav>
		<a href="${webRoot}/mshopWechatController.do?goShop&customerId=${customer.id}" class="nav-icon">
			<img src="webpage/weixin/mshop/mobile/images/icon01.png">
			<span>商城首页</span>
		</a>
     	<a href="${webRoot}/mshopWechatController.do?orderList&customerId=${customer.id}" class="nav-icon">
          	<img src="webpage/weixin/mshop/mobile/images/icon03.png">
           	<span>订单管理</span>
     	</a>
      	<a href="user.html" class="nav-icon">
         	<img src="webpage/weixin/mshop/mobile/images/icon19.png">
         	<span style="color:#00afff;">个人中心</span>
    	</a>
      	<a href="${webRoot}/mshopWechatController.do?goSearch&customerId=${customer.id}" class="nav-icon">
         	<img src="webpage/weixin/mshop/mobile/images/icon02.png">
         	<span>搜索</span>
    	</a>
	</nav>
<!--nav end-->

<!--header begin-->
	<div class="user-container">
    	<img src="${customer.headimgurl }" class="user-pho">
        <p class="nickname">${customer.nickname }</p>
    </div>
<!--header end-->


<!---->
	<div class="user-home">
    	<a href="${webRoot}/mshopWechatController.do?goAddressDetail&customerId=${customer.id}&method=update" style="padding:4px 0;">
            <img src="webpage/weixin/mshop/mobile/images/icon-location.png" class="user-icon-left">
            <p style="float:left;">收货地址管理</p>
          	<img class="user-icon-right" src="webpage/weixin/mshop/mobile/images/icon-1.png">
       	</a>
    </div>
<!---->

<!--内容 begin-->
	<div class="user-content">
      	<a href="${webRoot}/mshopWechatController.do?orderList&customerId=${customer.id}" style="width:100%; border-bottom:1px solid #e9e9e9;overflow:hidden;color:#50555b; padding:4px 0;">
        	<img class="user-icon-left" src="webpage/weixin/mshop/mobile/images/icon12.png">
          	<p>我的订单</p>
        	<img class="user-icon-right" src="webpage/weixin/mshop/mobile/images/icon-1.png">
      	</a>
     	 <a href="${webRoot}/mshopWechatController.do?goHelp" style="width:100%;overflow:hidden;color:#50555b; padding:4px 0;">
        	<img class="user-icon-left" src="webpage/weixin/mshop/mobile/images/icon17.png">
          	<p>帮助</p>
           	<img class="user-icon-right" src="webpage/weixin/mshop/mobile/images/icon-1.png">
    	</a> 
    </div>
    <div class="user-home" style=" padding:4px 0;">
    	客服电话:400-600-8888
    </div>
    <div style="text-align:center; color:#aaa; font-size:12px; line-height:24px;">服务时间：9:00-23:00</div>
<!--内容 end-->
</body>
</html>
