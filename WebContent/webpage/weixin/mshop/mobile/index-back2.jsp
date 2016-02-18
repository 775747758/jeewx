<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<title>商城</title>
<link rel="stylesheet"
	href="webpage/weixin/plugin/agile-lite/assets/agile/css/agile.layout.css">
<link rel="stylesheet"
	href="webpage/weixin/plugin/agile-lite/assets/agile/css/flat/flat.component.css">
<link rel="stylesheet"
	href="webpage/weixin/plugin/agile-lite/assets/agile/css/flat/flat.color.css">
<link rel="stylesheet"
	href="webpage/weixin/plugin/agile-lite/assets/agile/css/flat/iconline.css">
<style>
[data-role="slider"] img {
	display: block;
}

.grid[data-col="3"] .grid-cell {
	width: 33.33%;
	float: left;
	margin-bottom: 0;
}

article {
	background-color: #f2f2f2;
}

.listitem {
	margin-top: 6px;
}

.grid {
	background-color: #fff;
	overflow: hidden;
	padding: 14px 0;
	border-bottom: 1px solid #e9e9e9;
}

.grid-img {
	width: 40px;
	height: 40px;
}

.grid-label {
	height: 25px;
}

.grid-img {
	background-color: #fff;
}

.grid-img img {
	width: 40px;
	height: 40px;
}

.menubar {
	background-color: #00afff;
}

.listitem li .text small {
	margin-top: 10px;
}
</style>
</head>
<body>
	<div id="section_container">
		<section id="slider_section" data-role="section" class="active"
			data-aside-left="#left_reveal_aside">
			<article data-role="article" id="main_article" class="active"
				style="bottom: 56px; overflow: hidden;">
				<div id="sliderPage" data-role="slider" class="full">
					<div class="scroller">
						<div id="page1" class="slide" data-role="page"
							data-scroll="pulldown">
							<div class="scroller">
								<div id="slide" data-role="slider" class="full"
									style=" overflow: hidden;">
									<div class="scroller">
										<c:forEach items="${adList}" var="ad">
											<div class="slide">
												<img src="${ad.imgurl}" class="full-width" />
											</div>
										</c:forEach>
									</div>
								</div>

								<div class="grid" data-col="3">
									
									<div class="grid-cell">
										<a href="${path}/mshopWechatController.do?goStoreList&accountid=${customer.accountid}&typeId=4028813a505b239c01505b2439910001" style="color:#000;">
											<div class="grid-img">
											<img src="webpage/weixin/mshop/mobile/images/icon07.png">
										</div>
										<label class="grid-label">水果</label>
										</a>
									</div>
									<div class="grid-cell">
										<div class="grid-img">
											<img src="webpage/weixin/mshop/mobile/images/icon06.png">
										</div>
										<label class="grid-label">外卖</label>
									</div>
									<div class="grid-cell">
										<div class="grid-img">
											<img src="webpage/weixin/mshop/mobile/images/icon05.png">
										</div>
										<label class="grid-label">超市</label>
									</div>
									<!-- <div class="grid-cell" onclick="remind()">
										<div class="grid-img" >
											<img id="button" src="webpage/weixin/mshop/mobile/images/icon08.png" >
										</div>
										<label class="grid-label">整点秒杀</label>
									</div> -->
								</div>

								<ul class="listitem">
									<li>
										<div class="text" style="overflow: hidden;">
											<img src="webpage/weixin/mshop/mobile/images/icon09.png"
												style="float: left; width: 4%; margin-top: 2px;">
											<p
												style="float: left; width: 92%; margin-left: 4px; font-size: 12px;">公告：在本店消费满${dispatch.limitMoney }元包邮，邮费是${dispatch.expressPrice }元！</p>
										</div>
									</li>
									<c:forEach items="${recommendStoreList}" var="store">
										<li><a href="">
												<div class="img appimg" style="width: 64px; height: 64px;">
													<img alt="" src="${store.imgurl }"
														style="width: 64px; border-radius: 4px;" />
												</div>
												<div class="text">
													<h4 style="color: #50555b;">${store.storeName }</h4>
													<c:if
														test="${store.mobilePhone!=null and store.mobilePhone!=''}">
														<small>联系方式：${store.mobilePhone }</small>
													</c:if>

												</div>
										</a></li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</article>


			<footer>
				<nav class="menubar">
					<a class="menu active" data-role="tab" href="#page1"
						data-toggle="page"> <span
						class="menu-icon iconfont iconline-home"></span> <span
						class="menu-text">商城</span>
					</a> <a class="menu" data-role="tab" href="order.html"
						data-toggle="page"> <span
						class="menu-icon iconfont iconline-file"></span> <span
						class="menu-text">订单</span>
					</a> <a class="menu" data-role="tab" href="user.html"
						data-toggle="page"> <span
						class="menu-icon iconfont iconline-uid"></span> <span
						class="menu-text">我的</span>
					</a> <a class="menu" data-role="tab" href="user.html"
						data-toggle="page"> <span
						class="menu-icon iconfont iconline-search"></span> <span
						class="menu-text">搜索</span>
					</a>
				</nav>
			</footer>
		</section>
	</div>

	<!--- third --->
	<script
		src="webpage/weixin/plugin/agile-lite/assets/third/jquery/jquery-2.1.3.min.js"></script>
	<script
		src="webpage/weixin/plugin/agile-lite/assets/third/jquery/jquery.mobile.custom.min.js"></script>
	<script
		src="webpage/weixin/plugin/agile-lite/assets/third/iscroll/iscroll-probe.js"></script>
	<script
		src="webpage/weixin/plugin/agile-lite/assets/third/arttemplate/template-native.js"></script>
	<!-- agile -->
	<script type="text/javascript"
		src="webpage/weixin/plugin/agile-lite/assets/agile/js/agile.js"></script>
	<!--- bridge --->
	<script type="text/javascript"
		src="webpage/weixin/plugin/agile-lite/assets/bridge/exmobi.js"></script>
	<script type="text/javascript"
		src="webpage/weixin/plugin/agile-lite/assets/bridge/agile.exmobi.js"></script>
	<!-- app -->
	<script type="text/javascript"
		src="webpage/weixin/plugin/agile-lite/assets/app/js/app.js"></script>
	<script>
		$('#slider_section').on('sectionshow', function() {
			A.Component.scroll('#tabbarOuter');
		});
		$('#main_article').on('articleload', function() {
			A.Slider('#slide', {
				dots : 'right'
			});
			A.Slider('#sliderPage', {
				dots : 'hide'
			});
		});
		//点击秒杀要提示
		function remind(){
			alert("抱歉！我们正在努力开发中...");
			//A.alert("抱歉！我们正在努力开发中...");
			//$('#button').attr('disabled',"true");
		}
	</script>

</body>
</html>