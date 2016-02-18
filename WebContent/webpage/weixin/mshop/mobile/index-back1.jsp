<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<html>
	<head>
		<meta charset="utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
		<title>商城</title>
		<link rel="stylesheet" href="webpage/weixin/plugin/agile-lite/assets/agile/css/agile.layout.css">
		<link rel="stylesheet" href="webpage/weixin/plugin/agile-lite/assets/agile/css/flat/flat.component.css">
		<link rel="stylesheet" href="webpage/weixin/plugin/agile-lite/assets/agile/css/flat/flat.color.css">
		<link rel="stylesheet" href="webpage/weixin/plugin/agile-lite/assets/agile/css/flat/iconline.css">
		<link rel="stylesheet" href="webpage/weixin/plugin/agile-lite/assets/app/css/app.css">
		<style>
			[data-role="slider"] img{ display: block;}
			.grid[data-col="3"] .grid-cell{ width:33.33%; float:left; margin:0; padding:7px 0 4px;}
			article{ background-color:#f2f2f2;}
			.listitem{ margin-top:6px;}
			.grid{ background-color:#fff; overflow:hidden; padding:14px 0; border-bottom:1px solid #e9e9e9;}
			.grid-img{ width:40px; height:40px;}
			.grid-label{ height:25px;}
			.grid-img{ background-color:#fff;}
			.grid-img img{ width:40px; height:40px;}
			.menubar{ background-color:#00afff;}
			.listitem li .text small{ margin-top:10px;}
			a{ color:#000;}
			.listitem li .img{ margin-right:18px;}
			.grid-cell:active{ background-color:#ddd;}
		</style>
	</head>
	<body>
		<div id="section_container">
			<section id="form_section" data-role="section" class="active">
				<article data-role="article" id="main_article" class="active" style="bottom:56px;overflow: hidden;">
					<div id="sliderPage" data-role="slider" class="full">
						<div class="scroller">
							<div id="page1" class="slide" data-role="page" data-scroll="pulldown">
								<div class="scroller">
									<div id="slide" data-role="slider" class="full" style="overflow: hidden;">
										<div class="scroller">
											<c:forEach items="${adList}" var="ad">
											<div class="slide" onclick="pay()">
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
                                        	<a href="">
                                                <div class="grid-img">
                                                    <img src="webpage/weixin/mshop/mobile/images/icon06.png">
                                                </div>
                                                <label class="grid-label">外卖</label>
                                            </a>
                                        </div>
                                        <div class="grid-cell" >
                                        	<a href="">
                                                <div class="grid-img">
                                                    <img src="webpage/weixin/mshop/mobile/images/icon05.png">
                                                </div>
                                                <label class="grid-label">超市</label>
                                            </a>
                                        </div>
                                    </div>
                                    
								 	<div style="background-color:#fff; border-top:1px solid #ddd; margin-top:6px; padding:5px 0;">
								   		<div class="text" style="overflow:hidden;">
								       		<img src="webpage/weixin/mshop/mobile/images/icon09.png" style="float:left; width:4%; margin-top:2px; width:18px; margin-left:6px;">
                                          	<p style="float:left; width:92%; margin-left:4px; font-size:12px; line-height:20px;">公告：在本店消费满${dispatch.limitMoney }元包邮，邮费是${dispatch.expressPrice }元！</p>
								      	</div>
								   	</div>
                                    
									<ul class="listitem" style="margin-top:0; border-top:1px solid #ddd;">
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
						<a class="menu active" data-role="tab" href="#page1" data-toggle="page">
							<span class="menu-icon iconfont iconline-home"></span>
						    <span class="menu-text">商城</span>
						</a>
						<a class="menu" data-role="tab" href="order.html" data-toggle="page">
							<span class="menu-icon iconfont iconline-file"></span>
						    <span class="menu-text">订单</span>
						</a>
						<a class="menu" data-role="tab" href="user.html" data-toggle="page">
							<span class="menu-icon iconfont iconline-uid"></span>
						    <span class="menu-text">我的</span>
						</a>
						<a class="menu" data-role="tab" href="user.html" data-toggle="page">
							<span class="menu-icon iconfont iconline-search"></span>
						    <span class="menu-text">搜索</span>
						</a>
					</nav>
				</footer>
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
		<script>
		
		$('#slider_section').on('sectionshow', function(){
			A.Component.scroll('#tabbarOuter');
		});
		$('#main_article').on('articleload', function(){
			A.Slider('#slide', {
				dots : 'right'
			});			
			A.Slider('#sliderPage', {
				dots : 'hide'
			});
		});
		function test(){
			A.alert("sssss");
		}
		
		function pay(){
			alert("${webRoot}/mshopWechatController.do?submitOrder&customerId=402880ee51399544015139a302970005&storeId=4028813a508d983201508da23baf0006"
				+"&distributionMode=0");
			$.ajax({
			 	type: "GET",
			 	url: "mshopWechatController.do?submitOrder&customerId=402880ee51399544015139a302970005&storeId=4028813a508d983201508da23baf0006&distributionMode=0",
			  	processData:true,
			  	success: function(data){
			  		var obj=eval('('+data+')');  
					if (typeof WeixinJSBridge == "undefined"){
					   if(document.addEventListener){
					       document.addEventListener('WeixinJSBridgeReady', onBridgeReady, false);
					   }else if (document.attachEvent){
					       document.attachEvent('WeixinJSBridgeReady', onBridgeReady); 
					       document.attachEvent('onWeixinJSBridgeReady', onBridgeReady);
					   }
					}else{
						WeixinJSBridge.invoke(
							'getBrandWCPayRequest', {
								"appId" : obj.appId,     //公众号名称，由商户传入
						        "timeStamp" : obj.timeStamp,         //时间戳，自1970年以来的秒数
						        "nonceStr" : obj.nonceStr, //随机串
						        "package" : obj.package,
						        "signType" : obj.signType,         //微信签名方式:
						        "paySign" : obj.paySign //微信签名
						    },
						    function(res){
						        if(res.err_msg == "get_brand_wcpay_request:ok" ) {
						        	alert("支付成功");
						        	//window.location.href="${path}/weChat/wcPaymentSuccess?customerId=${shoppingCartVo.customer.id}&rebateprice="+rebateprice;
						        } else {
						         	alert("支付失败");
						        //	window.location.href="${path}/weChat/wcPaymentFail?customerId=${shoppingCartVo.customer.id}";
						        }    // 使用以上方式判断前端返回,微信团队郑重提示：res.err_msg将在用户支付成功后返回    ok，但并不保证它绝对可靠。
						    }
						);
					}
			  	}
			});
		}
		</script>
		
	</body>
</html>