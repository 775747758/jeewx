<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<html>
	<head>
		<meta charset="utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
		<title>店铺列表</title>
		<link rel="stylesheet" href="webpage/weixin/plugin/agile-lite/assets/agile/css/agile.layout.css">
		<link rel="stylesheet" href="webpage/weixin/plugin/agile-lite/assets/agile/css/flat/flat.component.css">
		<link rel="stylesheet" href="webpage/weixin/plugin/agile-lite/assets/agile/css/flat/flat.color.css">
		<link rel="stylesheet" href="webpage/weixin/plugin/agile-lite/assets/agile/css/flat/iconline.css">
		<link rel="stylesheet" href="webpage/weixin/plugin/agile-lite/assets/agile/css/flat/iconlogo.css">
		<link rel="stylesheet" href="webpage/weixin/plugin/agile-lite/assets/app/css/app.css">
	</head>
	<body>
		<div id="section_container">
			<section id="list_section" data-role="section" class="active">
				<article data-role="article" id="main_article" data-scroll="verticle" class="active" style="bottom:0px;">
					<div class="scroller"> 
					    <ul class="listitem">
					        
					        <c:forEach items="${storeList}" var="store">
					        <li>
					        <a href="${path}/mshopWechatController.do?goStore&storeId=${store.id }" style="color:#000;">
                                    <img src="" style="width:60px; height:60px;" class="img"/>
                                    <div class="text" style=" font-size:14px; font-weight:bold;">
                                         ${store.storeName }
                                        <small style="font-size:14px; font-weight:normal;">联系方式:<span>${store.mobilePhone }</span></small>
                                    </div>
                                </a>
					        </li>
					        </c:forEach>
                            	
					    </ul>
					</div>  
				</article>
			</section>
		</div>
		
		<!--- third --->
		<script src="webpage/weixin/plugin/agile-lite/assets/third/jquery/jquery-2.1.3.min.js"></script>
		<script src="webpage/weixin/plugin/agile-lite/assets/third/jquery/jquery.mobile.custom.min.js"></script>
		<script src="webpage/weixin/plugin/agile-lite/assets/third/iscroll/iscroll-probe.js"></script>
		<script src="webpage/weixin/plugin/agile-lite/assets/third/arttemplate/template-native.js"></script>
		<!-- agile -->
		<script type="text/javascript" src="webpage/weixin/plugin/agile-lite/assets/agile/js/agile.js"></script>		
		<!--- bridge --->
		<script type="text/javascript" src="webpage/weixin/plugin/agile-lite/assets/bridge/exmobi.js"></script>
		<script type="text/javascript" src="webpage/weixin/plugin/agile-lite/assets/bridge/agile.exmobi.js"></script>
		<!-- app -->
		<script type="text/javascript" src="webpage/weixin/plugin/agile-lite/assets/app/js/app.js"></script>
		
	</body>
</html>