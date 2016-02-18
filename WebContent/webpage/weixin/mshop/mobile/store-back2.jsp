<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<title>${store.storeName }</title>
<link rel="stylesheet"
	href="webpage/weixin/plugin/agile-lite/assets/agile/css/agile.layout.css">
<link rel="stylesheet"
	href="webpage/weixin/plugin/agile-lite/assets/agile/css/flat/flat.component.css">
<link rel="stylesheet"
	href="webpage/weixin/plugin/agile-lite/assets/agile/css/flat/flat.color.css">
<link rel="stylesheet"
	href="webpage/weixin/plugin/agile-lite/assets/agile/css/flat/iconline.css">
<link rel="stylesheet"
	href="webpage/weixin/plugin/agile-lite/assets/app/css/app.css">
<style>
[data-role="slider"] img {
	display: block;
}

small {
	font-size: 12px;
}

.star_ul li {
	border: none;
}

.titlebar h1 {
	top: 26%;
	width: 100%;
	left: 0;
}

.listitem li .img {
	display: block;
}

button {
	float: right;
	height: 28px;
	line-height: 23px;
	margin: 4px 0 0 6px;
}

button.outline,input.outline {
	border-color: #ddd;
	color: #777777;
}

/*tab begin*/
.box {
	overflow: hidden;
	width: 100%;
	height: 100%;
}

.menu,.shop-list {
	float: left;
	width: 20%;
}

.shop-list {
	width: 77%;
	margin: 0 0 60px 4px;
}

.menu {
	overflow: hidden;
	box-shadow: 1px 0 2px rgba(0, 0, 0, 0.2);
	background-color: #f2f2f2;
	height: 100%;
}

.menu li {
	text-align: center;
	line-height: 18px;
	padding: 12px 4px;
}

.content {
	width: 100%;
	border: none;
}

.current {
	color: #00afff;
	background-color: #fff;
	border-left: 2px solid #00afff;
}

.others {
	background-color: #f2f2f2;
	color: #50555b;
	border: none;
}
/*tab end*/

/*order-list begin*/
.clearfix {
	padding: 10px 6px;
	color: #50555b;
	background-color: #fff;
	border-bottom: 1px solid #e9e9e9;
}

.clearfix-img {
	width: 44px;
	height: 44px;
	margin-right: 6px;
	float: left;
}

.evaluation {
	font-size: 10px;
}

.button-number * {
	float: right;
	line-height: 25px;
	margin: 0 4px;
}

.button-right {
	width: 25px;
	height: 25px;
	padding: 5px;
}

.button-left {
	width: 25px;
	height: 25px;
	padding: 5px;
}

.price {
	float: left;
	color: #ff9c00;
}

.clearfix-price {
	overflow: hidden;
	margin-top: 4px;
}
/*order-list end*/

/**/
footer {
	text-align: center;
	border-top: 1px solid #e9e9e9;
}

footer a {
	float: right;
	background-color: #00afff;
	color: #fff;
	line-height: 40px;
	width: 20%;
}

button,input[type="button"],a.button {
	border-radius: 0;
	width: 80%;
	padding: 0;
}

.bg-belize-hole {
	background-color: #fff;
}
/**/

/*header begin*/
.clearing-header {
	width: 100%;
	padding: 7px 0;
	background-color: #00afff;
	margin: 0;
	overflow: hidden;
}

.return {
	display: block;
	float: left;
	color: #fff;
	font-size: 14px;
	line-height: 20px;
	padding: 2px 10px 2px 14px;
	background-image: url(imagse/shopbg01.png);
	background-size: 52px 26px;
	margin-left: 8px;
}

.details {
	display: block;
	float: right;
	color: #fff;
	font-size: 14px;
	line-height: 20px;
	padding: 2px 10px 2px 14px;
	background-color: #2dbcfd;
	border-radius: 2px;
	margin-right: 8px;
}

header span {
	color: #fff;
	text-align: center;
	display: block;
	font-size: 16px;
	padding: 0 21%;
	margin: 0 auto;
	float: left;
}

.tab:active,.tab.active {
	color: #00afff;
	border-bottom: 2px solid #00afff;
}
/*header end*/

/* star */
#star {
	position: relative;
	width: 600px;
	margin: 20px auto;
	height: 24px;
}

#star ul,#star span {
	float: left;
	display: inline;
	height: 19px;
	line-height: 19px;
}

#star ul {
	margin: 0 10px;
}

#star li {
	float: left;
	width: 24px;
	cursor: pointer;
	text-indent: -9999px;
	background: url(imagse/star.png) no-repeat;
}

#star strong {
	color: #f60;
	padding-left: 10px;
}

#star li.on {
	background-position: 0 -28px;
}

#star p {
	position: absolute;
	top: 20px;
	width: 159px;
	height: 60px;
	display: none;
	background: url(images/icon.gif) no-repeat;
	padding: 7px 10px 0;
}

#star p em {
	color: #f60;
	display: block;
	font-style: normal;
}
</style>
</head>
<body>
	<div id="section_container">
		<section id="slider_section" data-role="section" class="active"
			data-aside-left="#left_reveal_aside">
			<header>
				<div id="tabbarOuter" data-scroll="horizontal">
					<div class="scroller">

						<div class="clearing-header">
							<a class="return" href="index.html">商铺</a> <span>${store.storeName
								}</span>
						</div>

						<div class="tabbar" style="width: 100%;">
							<a class="tab active" data-role="tab" href="#page1"
								data-toggle="page">来自他人</a> <a class="tab" data-role="tab"
								href="#page2" data-toggle="page">南京</a> <a class="tab"
								data-role="tab" href="#page3" data-toggle="page">南京</a>
						</div>
					</div>
				</div>
			</header>

			<article data-role="article" id="main_article" class="active"
				style="top: 81px; bottom: 0; overflow: hidden;">
				<div id="sliderPage" data-role="slider" class="full">
					<div class="scroller">
						<div id="page1" class="slide" data-role="page"
							data-scroll="pulldown">
							<div class="scroller" style="height: 100%;">
								<div id="slide" data-role="slider" class="full"
									style="height: 100%;">
									<ul class="listitem" style="height: 100%;">
										<div class="box" style="height: 100%;">
											<ul class="menu" style="height: 100%;">
												<c:forEach items="${store.goodsTypeList}" var="goodsType">
													<li class="current">${goodsType.name }</li>
												</c:forEach>
											</ul>
											<!---->
											<!---->
											<div class="shop-list">
												<c:forEach items="${store.goodsTypeList}" var="goodsType">
													<div class="content current" style="border: none;">
														<ul>
															<c:forEach items="${goodsType.goodsList}" var="goods">
																<li style="border-bottom: none;">
																	<div class="clearfix">
																		<img src="" class="clearfix-img">
																		<div>
																			<p>${goods.name}</p>
																			<p class="evaluation">已售${goods.sellCount}份</p>
																		</div>
																		<div class="clearfix-price">
																			<p class="price">￥${goods.realPrice}</p>
																			<!-- <div class="button-number">
																				<img src="images/icon14.png" class="button-right">
																				<span>2</span> <img src="images/icon15.png"
																					class="button-left">
																			</div> -->
																		</div>
																	</div>
																</li>
															</c:forEach>
														</ul>
													</div>

												</c:forEach>
											</div>
										</div>

										<footer>
											<a href="#" class="button bg-belize-hole" id="btn_t_bottom"
												style="float: left; background-color: #fff;"> <span
												class="iconfont iconline-shop-basket"
												style="color: #000; float: left; line-height: 34px; margin-left: 10px;"></span>
												<p class="number"
													style="background-color: #ff0000; color: #fff; width: 14px; line-height: 14px; border-radius: 50%; position: fixed; left: 22px; bottom: 20px; font-size: 12px;">2</p>
												<p class="price"
													style="color: #ff9c00; font-weight: bold; margin-left: 18px; float: left;">￥55</p>
											</a> <a href="pay1.html" style="font-weight: bold;">去结算</a>
										</footer>

									</ul>
								</div>
							</div>
						</div>

						<!---->
						<div id="page2" class="slide" data-role="page"
							data-scroll="verticle">
							<div class="scroller">
								<ul class="listitem">
									<li>
										<div class="text">
											<div style="overflow: hidden;">
												<small
													style="color: #000; float: left; color: #aaa; line-height: 26px;">昵称</small>
												<small
													style="color: #000; margin-top: 0; float: right; color: #aaa;">2015-11-24</small>
											</div>
											<div id="star" style="margin: 0;">
												<ul style="margin: 0;">
													<li style="height: 20px; border: none;"><a
														href="javascript:;">1</a></li>
													<li style="height: 20px; border: none;"><a
														href="javascript:;">2</a></li>
													<li style="height: 20px; border: none;"><a
														href="javascript:;">3</a></li>
													<li style="height: 20px; border: none;"><a
														href="javascript:;">4</a></li>
													<li style="height: 20px; border: none;"><a
														href="javascript:;">5</a></li>
												</ul>
											</div>
											<!--star end-->

											<small style="color: #000; margin-top: 0;">评价内容评价内容评价内容评价内容评价内容评价内容评价内容评价内容</small>
										</div>
									</li>
									<li>
										<div class="text">
											<div style="overflow: hidden;">
												<small
													style="color: #000; float: left; color: #aaa; line-height: 26px;">昵称</small>
												<small
													style="color: #000; margin-top: 0; float: right; color: #aaa;">2015-11-24</small>
											</div>
											<div id="star" style="margin: 0;">
												<ul style="margin: 0;">
													<li style="height: 20px; border: none;"><a
														href="javascript:;">1</a></li>
													<li style="height: 20px; border: none;"><a
														href="javascript:;">2</a></li>
													<li style="height: 20px; border: none;"><a
														href="javascript:;">3</a></li>
													<li style="height: 20px; border: none;"><a
														href="javascript:;">4</a></li>
													<li style="height: 20px; border: none;"><a
														href="javascript:;">5</a></li>
												</ul>
											</div>
											<!--star end-->

											<small style="color: #000; margin-top: 0;">评价内容评价内容评价内容评价内容评价内容评价内容评价内容评价内容</small>
										</div>
									</li>
								</ul>
							</div>
						</div>


						<!---->
						<div id="page3" class="slide" data-role="page"
							data-scroll="verticle" style="background-color: #f2f2f2;">
							<div class="scroller">
								<ul class="listitem">
									<li>
										<div class="img appimg">
											<img alt="" src="assets/app/img/logo-exmobi.png"
												style="position: absolute; top: 0; left: 0; width: 64px; border-radius: 50%;" />
										</div>
										<div class="text">
											名字 <small style="">
												<div id="star" style="margin: 0;">
													<ul style="margin: 0;">
														<li style="height: 20px; border-bottom: none;"><a
															href="javascript:;">1</a></li>
														<li style="height: 20px; border-bottom: none;"><a
															href="javascript:;">2</a></li>
														<li style="height: 20px; border-bottom: none;"><a
															href="javascript:;">3</a></li>
														<li style="height: 20px; border-bottom: none;"><a
															href="javascript:;">4</a></li>
														<li style="height: 20px; border-bottom: none;"><a
															href="javascript:;">5</a></li>
													</ul>
													<div style="line-height: 20px;">月售101单</div>
												</div>
												<!--star end-->

											</small> <small style="margin-top: 0;">由<span>某某店铺</span>提供
											</small>
										</div>
									</li>
								</ul>

								<ul class="listitem"
									style="margin: 6px 0; border-top: 1px solid #ddd;">
									<li class="sliver" style="background-color: #fff;">商家简介</li>
									<li>
										<div class="text">商家地址：我是商家地址我是商家地址我是商家地址我是商家地址我是商家地址我是商家地址</div>
									</li>
									<li>
										<div class="text">营业时间：09:30-20:00</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</article>
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
	</script>

	<script src="js/jquery.min.js" type="text/javascript"></script>
	<script>
		$(".menu li").click(function() {
			$(".menu li").addClass("others");
			$(this).removeClass("others").addClass("current");
			var index = $(".menu li").index(this);
			$(".content").hide();
			$(".content").eq(index).fadeIn(200);
		})

		$('#btn_t_bottom').on(A.options.clickEvent, function() {
			A.popup({
				html : '这是一个来自底部弹出框',
				pos : 'bottom',
			});
			return false;
		});
	</script>

	<script type="text/javascript">
		window.onload = function() {

			var oStar = document.getElementById("star");
			var aLi = oStar.getElementsByTagName("li");
			var oUl = oStar.getElementsByTagName("ul")[0];
			var oSpan = oStar.getElementsByTagName("span")[1];
			var oP = oStar.getElementsByTagName("p")[0];
			var i = iScore = iStar = 0;

			for (i = 1; i <= aLi.length; i++) {
				aLi[i - 1].index = i;

				//鼠标移过显示分数
				aLi[i - 1].onmouseover = function() {
					fnPoint(this.index);
					//浮动层显示
					oP.style.display = "block";
					//计算浮动层位置
					oP.style.left = oUl.offsetLeft + this.index
							* this.offsetWidth - 104 + "px";
					//匹配浮动层文字内容
					oP.innerHTML = "<em><b>" + this.index + "</b> 分 "
							+ aMsg[this.index - 1].match(/(.+)\|/)[1] + "</em>"
							+ aMsg[this.index - 1].match(/\|(.+)/)[1]
				};

				//鼠标离开后恢复上次评分
				aLi[i - 1].onmouseout = function() {
					fnPoint();
					//关闭浮动层
					oP.style.display = "none"
				};

				//点击后进行评分处理
				aLi[i - 1].onclick = function() {
					iStar = this.index;
					oP.style.display = "none";
					oSpan.innerHTML = "<strong>" + (this.index)
							+ " 分</strong> ("
							+ aMsg[this.index - 1].match(/\|(.+)/)[1] + ")"
				}
			}

			//评分处理
			function fnPoint(iArg) {
				//分数赋值
				iScore = iArg || iStar;
				for (i = 0; i < aLi.length; i++)
					aLi[i].className = i < iScore ? "on" : "";
			}

		};
	</script>

</body>
</html>

