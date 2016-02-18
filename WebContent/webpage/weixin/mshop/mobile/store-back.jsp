<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="webpage/weixin/plugin/agile-lite/assets/third/jquery/jquery-2.1.3.min.js"></script>
</head>

<body>
<%-- <div>商品名称：${store.goodsTypeList[0].goodsList[0].name }</div><br>
<div>评价内容：${store.evaluateList[0].content }</div><br>
<div>评价内容：${orderCount }</div><br> --%>

<div style="background:red;width:30px;height:30px" onclick="pay()"></div>

</body>
<script type="text/javascript">
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
</html>