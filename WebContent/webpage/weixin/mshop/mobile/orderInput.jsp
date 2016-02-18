<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<title>结算</title>
<script src="webpage/weixin/mshop/mobile/js/xdate.js"></script>
<link rel="stylesheet" href="webpage/weixin/plugin/agile-lite/assets/agile/css/agile.layout.css">
<link rel="stylesheet" href="webpage/weixin/plugin/agile-lite/assets/agile/css/flat/flat.component.css">
<link rel="stylesheet" href="webpage/weixin/plugin/agile-lite/assets/agile/css/flat/flat.color.css">
<link rel="stylesheet" href="webpage/weixin/plugin/agile-lite/assets/agile/css/flat/iconline.css">
<link rel="stylesheet" href="webpage/weixin/plugin/agile-lite/assets/agile/css/flat/iconform.css">
<link rel="stylesheet" href="webpage/weixin/plugin/agile-lite/assets/component/timepicker/timepicker.css">
<link rel="stylesheet" href="webpage/weixin/plugin/agile-lite/assets/app/css/app.css">
<style>
article {
	background-color: #f2f2f2;
}

.text {
	font-weight: bold;
	font-size: 14px;
}

.listitem li .iconline-map-location {
	color: #00afff;
}

.listitem li {
	border: none;
}

.pay-next {
	width: 100%;
	height: 2px;
	background-image: url(imagse/icon-shop.png);
}

.item-settlement {
	width: 100%;
	padding-left: 3%;
	position: fixed;
	bottom: 0px;
	background-color: #fff;
	overflow: hidden;
	overflow: hidden;
}

.item-information {
	float: left;
	margin-top: 5px;
}

.item-quantity {
	line-height: 16px;
	font-size: 12px;
	color: #9c9c9c;
}

.clearing {
	display: block;
	float: right;
	background-color: #00afff;
	padding: 12px 40px;
	font-size: 16px;
	color: #fff;
	font-weight: bold;
}

.total-price {
	font-size: 12px;
}

.item-price {
	color: #ff9c00;
	font-size: 14px;
}

.form-common {
	margin: 0;
}

.form-common [data-role="checkbox"], .form-common [data-role="radio"],
	.form-square [data-role="checkbox"], .form-square [data-role="radio"] {
	float: right;
}

.clearing:active {
	background-color: #039be1;
}

.listitem li:active {
	background-color: #fff;
}
</style>
</head>
<body >
	<div id="section_container">
		<section id="form_section" data-role="section" class="active">
			<article data-role="article" id="normal_article" data-scroll="verticle" class="active" style="bottom: 0px;">
				<div class="scroller">
					<ul class="listitem">
						<li>
						<c:if test="${empty customer.address }">
								<a href="${webRoot}/mshopWechatController.do?goAddressDetail&method=save&customerId=${customer.id}&storeId=${store.id}"> <i class="icon iconfont iconline-map-location"></i> <i class="ricon iconfont iconline-checked2" style="color: #27AE60; font-size: 16px;"></i>
									<div class="text" style="color: #000;">
										点击填写地址信息 
									</div>
								</a>
						</c:if>
						<c:if test="${not empty customer.address }">
								<a href="${webRoot}/mshopWechatController.do?goAddressDetail&method=update&customerId=${customer.id}&storeId=${store.id}"> <i class="icon iconfont iconline-map-location"></i> <i class="ricon iconfont iconline-checked2" style="color: #27AE60; font-size: 16px;"></i>
							<div class="text" style="color: #000;">
								${customer.realName }&nbsp;&nbsp;<span>${customer.phone }</span> <small style="font-weight: normal; color: #9c9c9c; font-size: 12px;">${customer.address }&nbsp;${customer.addressDetail }</small>
							</div>
						</a>
						</c:if>
						</li>
					</ul>
					<ul class="listitem" style="margin-top: 6px; border-top: 1px solid #e9e9e9;">
						<li style="border-bottom: 1px solid #e9e9e9;">
							<div class="text">
								微信支付 &nbsp;&nbsp;<span style="font-weight: normal; color: #9c9c9c; font-size: 12px;">商家仅支持微信支付</span>
							</div>
						</li>
					</ul>
					<ul>

						<form autocomplete="off" oninput="range_output.value=parseInt(range.value)" class="form-common">
							<label class="label-left" style="font-size: 14px; font-weight: bold;">配送方式</label> 
							<label class="label-right"> <a href="#" data-role="radio"> 
							<input type="radio" name="distributionMode" id="male" style="left: 0; right: auto;" value="1" /> 
							<label for="male" class="black">到店享用</label>
							</a> <a href="#" data-role="radio"> 
							<input type="radio" name="distributionMode" id="female" style="left: 0; right: auto;" checked value="0" /> 
							<label for="female" class="black">配送</label>
							</a>
							</label>
						</form>

						<ul class="listitem" style="margin: 6px 0; border-top: 1px solid #e9e9e9; border-bottom: 1px solid #e9e9e9;">
							<li style="border-bottom:1px solid #e9e9e9; padding-top:0px;">
                                <table  class="text" style="width:100%;">
                                    <tr style="overflow:hidden;">
                                        <td id="wer" style="float:left;">期望送达时间</td>
                                        <td style=" float:right;text-align:right;">
                                            <select id="receiveTime" style="border:none; padding:0; color:#00afff; font-size:12px; height:20px; width:100%;">
                                            </select>
                                        </td>
                                    </tr>
                                </table>
					        </li>
							<li><label for="" style="line-height: 24px;">订单备注</label> <textarea id="remark" style="height: 50px;"></textarea></li>
						</ul>
						<ul class="listitem" style="margin: 6px 0; border-top: 1px solid #e9e9e9; border-bottom: 1px solid #e9e9e9;">
							<li>
							<c:forEach items="${cartVo.cartList }" var="cart">
								<div style="overflow: hidden; line-height: 24px;">
									<P style="float: left; width: 60%;">${cart.goodsName }</P>
									<c:if test=""></c:if>
									<P style="float: right; margin-left: 14px;">${cart.spec }</P>
									<P style="float: right; margin-left: 14px;">￥${cart.price }</P>
									<P style="float: right;">x${cart.count }</P>
								</div>
							</c:forEach>
							</li>
						</ul>
				</div>
			</article>

			<footer>
				<div class="item-settlement">
					<div class="item-information">
						<div class="total-price">
							合计&nbsp; <span class="item-price">￥${cartVo.price }</span>
						</div>
						<c:if test="${freight==0 }">
							<div class="item-quantity">免邮</div>
						</c:if>
						<c:if test="${freight!=0 }">
							<div class="item-quantity">邮费：${freight}</div>
						</c:if>
					</div>
					<a href=" javascript:void(0)" class="clearing" onclick="submitOrder();">结算</a>
				</div>
			</footer>
		</section>
	</div>
	
	<script type="text/javascript">
		

		function submitOrder(){
			//A.alert('提示','这是一个Alert');
			A.showMask(function(){});
			 $.ajax({
				url : "mshopWechatController.do?submitOrder",
				data : {
					storeId : '${store.id}',
					customerId : '${customer.id}',
					remark: $("#remark").val(),
					receiveTime: $("#receiveTime").val(),
					distributionMode:$('input[type^=radio]:checked').val()
				},
				type : "get",
				async : false,
				success : function(data) {
					A.hideMask();
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
						        		window.location.href="${webRoot }/mshopWechatController.do?paymentSuccess&customerId=${customer.id}";
						        } else {
						        	window.location.href="${webRoot }/mshopWechatController.do?paymentFail&customerId=${customer.id}";
						        }    // 使用以上方式判断前端返回,微信团队郑重提示：res.err_msg将在用户支付成功后返回    ok，但并不保证它绝对可靠。
						    }
						);
					}
				},
				error : function(xhr, type, exception) {
					alert("error");
				}
			});
		}
		
		var now = new XDate();
		var beginReal = new XDate("${store.startTime}");
		var endReal = new XDate("${store.endTime}");
		var begin = new XDate(now.getFullYear(), now.getMonth(), now.getDate(), beginReal.getHours(), beginReal.getMinutes(), 0, 0);
		var end = new XDate(now.getFullYear(), now.getMonth(), now.getDate(), endReal.getHours(), endReal.getMinutes(), 0, 0);
		window.onload=function(){
			/* $("#receiveTime").change(function(){
				var checkValue=$("#receiveTime").val(); //获取Select选择的Value
				alert(checkValue);
			});  */
			if(now.diffMinutes(begin)<0&&now.diffMinutes(end)>0){
			var hour=now.getHours()+1;
			while (hour<end.getHours()){
				$("#receiveTime").append("<option value='"+hour+":00"+" - "+hour+":30"+"' style='width:100%;'>"+hour+":00"+" - "+hour+":30"+"</option>");
				$("#receiveTime").append("<option value='"+hour+":00"+" - "+hour+":30"+"' style='width:100%;'>"+hour+":30"+" - "+(hour+1)+":00"+"</option>");
				hour++;
			}
		}else{
			alert("no");
		}
		}
	</script>

	<!--- third --->
	<script src="webpage/weixin/plugin/agile-lite/assets/third/zepto/zepto.min.js"></script>
	<script src="webpage/weixin/plugin/agile-lite/assets/third/iscroll/iscroll-probe.js"></script>
	<script src="webpage/weixin/plugin/agile-lite/assets/third/arttemplate/template-native.js"></script>
	<!-- agile -->
	<script type="text/javascript" src="webpage/weixin/plugin/agile-lite/assets/agile/js/agile.js"></script>
	<!--- bridge --->
	<script type="text/javascript" src="webpage/weixin/plugin/agile-lite/assets/bridge/exmobi.js"></script>
	<script type="text/javascript" src="webpage/weixin/plugin/agile-lite/assets/bridge/agile.exmobi.js"></script>
	<!-- app -->
	<script src="webpage/weixin/plugin/agile-lite/assets/component/timepicker/agile.timepicker.js"></script>
	<script type="text/javascript" src="webpage/weixin/plugin/agile-lite/assets/component/extend.js"></script>
	<script type="text/javascript" src="webpage/weixin/plugin/agile-lite/assets/app/js/app.js"></script>

</body>
</html>