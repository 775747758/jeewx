<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<html >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>支付成功</title>
    <link rel="stylesheet" href="webpage/weixin/plugin/weui/style/weui.css"/>
    <link rel="stylesheet" href="webpage/weixin/plugin/weui/example/example.css"/>
</head>
<body ontouchstart>
    <div class="container js_container">
        <div class="page">
            <div class="hd">
                <h1 class="page_title">WeUI</h1>
                <p class="page_desc">为微信Web服务量身设计</p>
            </div>
            <div class="bd">
              <div class="page">
            <div class="weui_msg">
                <div class="weui_icon_area"><i class="weui_icon_msg weui_icon_success"></i></div>
                <div class="weui_text_area">
                    <h2 class="weui_msg_title">支付成功</h2>
                </div>
                <div class="weui_opr_area">
                    <p class="weui_btn_area">
                        <a href="${webRoot}/mshopWechatController.do?goShop&customerId=${customerId}" class="weui_btn weui_btn_primary">返回商城主页</a>
                    </p>
                </div>
                <div class="weui_extra_area">
                    <a href="">查看详情</a>
                </div>
            </div>
        </div>
            </div>
        </div>
    </div>
   
    <script src="webpage/weixin/plugin/weui/example/zepto.min.js"></script>
    <script src="webpage/weixin/plugin/weui/example/example.js"></script>
</body>
</html>