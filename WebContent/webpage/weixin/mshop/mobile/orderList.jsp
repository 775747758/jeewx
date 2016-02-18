<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<html>
<head>
	<meta charset="utf-8">
	<title>订单</title>
    <!--适配begin-->
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
    <!--适配end-->
    <link href="webpage/weixin/mshop/mobile/css/reset.css" rel="stylesheet" type="text/css" />
    <link href="webpage/weixin/mshop/mobile/css/nav.css" type="text/css" rel="stylesheet">
    <link href="webpage/weixin/mshop/mobile/css/order.css" type="text/css" rel="stylesheet">
    <script src="webpage/weixin/mshop/mobile/js/jquery.min.js" type="text/javascript"></script>
</head>


<body>
<!--nav begin-->
	<nav>
		<a href="${webRoot}/mshopWechatController.do?goShop&customerId=${customerId}" class="nav-icon"> <img
			src="webpage/weixin/mshop/mobile/images/icon01.png"> <span
			>商城首页</span>
		</a> <a href="javascript:void(0);" class="nav-icon"> <img
			src="webpage/weixin/mshop/mobile/images/icon06.png"> <span style="color: #00afff;">订单管理</span>
		</a> <a href="${webRoot}/mshopWechatController.do?goUserCenter&customerId=${customerId}" class="nav-icon"> <img
			src="webpage/weixin/mshop/mobile/images/icon18.png"> <span>个人中心</span>
		</a> <a href="${webRoot}/mshopWechatController.do?goSearch&customerId=${customerId}" class="nav-icon"> <img
			src="webpage/weixin/mshop/mobile/images/icon02.png"> <span>搜索</span>
		</a>
    	</a>
	</nav>
<!--nav end-->

<!--order begin-->
    <div class="box">
        <ul class="menu">
            <li class="current">待付款</li>
            <li class="others">待发货</li>
            <li class="others">待收货</li>
            <li class="others">待评价</li>
            <li class="others">全部</li>
        </ul>
        <!---->
        <!--待付款-->
        <div class="content current" style="border:none;">
        		<c:if test="${fn:length(orderVo.unpaymentOrderList)==0}">
				 <img src="webpage/weixin/mshop/mobile/images/emptycart.png" class="nothing-img">
            		<h3 class="nothing-text">你还没有待付款订单记录哦！</h3>
            		<div href="" class="nothing-go"><a href="${webRoot}/mshopWechatController.do?goShop&customerId=${customerId}">去逛逛</a></div>
			</c:if>
            <div class="list">
                <ul>
                	 <c:forEach items="${orderVo.unpaymentOrderList}" var="order">
                	 	<li id="${order.id}order">
                        <div class="list-tit-name">
                            <h5>${order.store.storeName }</h5>
                            <p>待付款</p>
                        </div>
                         <c:forEach items="${order.orderGoodsList}" var="orderGoods">
                         	<a href="${webRoot}/mshopWechatController.do?goStore&customerId=${customerId}&storeId=${order.store.id }">
                            <div class="clearfix">
                                <img src="${orderGoods.imgurl }" class="clearfix-img">
                                <div>
                                    <p>${orderGoods.goodsName }</p>
                                    <p>￥${orderGoods.realPrice }元</p>
                                </div>
                            </div>
                        </a>
                         </c:forEach>
                        <div class="total">
                            <p>共${order.totalCount }件商品&nbsp;合计：￥<span>${order.totalPrice }</span>（含运费￥${order.freight }）</p>
                        </div>
                        <div class="function">
                            <div onclick="removeOrder('${order.id}')"> <p>取消订单</p></div >
                            <a href="javascript:void(0);" onclick="pay('${order.id}')"><p style="color:#00afff; border-color:#00afff">去付款</p></a>
                        </div>
                    </li>
                	 </c:forEach>
                </ul>
            </div>
        </div>
        <!--待发货-->
        <div class="content current" style="display:none; border:none;">
            <c:if test="${fn:length(orderVo.unsendOrderList)==0}">
				 <img src="webpage/weixin/mshop/mobile/images/emptycart.png" class="nothing-img">
            		<h3 class="nothing-text">你还没有待发货订单记录哦！</h3>
            		<div href="" class="nothing-go"><a href="${webRoot}/mshopWechatController.do?goShop&customerId=${customerId}">去逛逛</a></div>
			</c:if>
            <div class="list">
                <ul>
                	 <c:forEach items="${orderVo.unsendOrderList}" var="order">
                	 	<li id="${order.id}order">
                        <div class="list-tit-name">
                            <h5>${order.store.storeName }</h5>
                            <p>待发货</p>
                        </div>
                         <c:forEach items="${order.orderGoodsList}" var="orderGoods">
                         	<a href="${webRoot}/mshopWechatController.do?goStore&customerId=${customerId}&storeId=${order.store.id }">
                            <div class="clearfix">
                                <img src="${orderGoods.imgurl }" class="clearfix-img">
                                <div>
                                    <p>${orderGoods.goodsName }</p>
                                    <p>￥${orderGoods.realPrice }元</p>
                                </div>
                            </div>
                        </a>
                         </c:forEach>
                        <div class="total">
                            <p>共${order.totalCount }件商品&nbsp;合计：￥<span>${order.totalPrice }</span>（含运费￥${order.freight }）</p>
                        </div>
                    </li>
                	 </c:forEach>
                </ul>
            </div>
        </div>
        <!--待收货-->
        <div class="content current" style="display:none; border:none;">
           <c:if test="${fn:length(orderVo.unreceiveOrderList)==0}">
				 <img src="webpage/weixin/mshop/mobile/images/emptycart.png" class="nothing-img">
            		<h3 class="nothing-text">你还没有待收货订单记录哦！</h3>
            		<div href="" class="nothing-go"><a href="${webRoot}/mshopWechatController.do?goShop&customerId=${customerId}">去逛逛</a></div>
			</c:if>
            <div class="list">
                <ul>
                	 <c:forEach items="${orderVo.unreceiveOrderList}" var="order">
                	 	<li id="${order.id}order">
                        <div class="list-tit-name">
                            <h5>${order.store.storeName }</h5>
                            <p>待收货</p>
                        </div>
                         <c:forEach items="${order.orderGoodsList}" var="orderGoods">
                         	<a href="${webRoot}/mshopWechatController.do?goStore&customerId=${customerId}&storeId=${order.store.id }">
                            <div class="clearfix">
                                <img src="${orderGoods.imgurl }" class="clearfix-img">
                                <div>
                                    <p>${orderGoods.goodsName }</p>
                                    <p>￥${orderGoods.realPrice }元</p>
                                </div>
                            </div>
                        </a>
                         </c:forEach>
                        <div class="total">
                            <p>共${order.totalCount }件商品&nbsp;合计：￥<span>${order.totalPrice }</span>（含运费￥${order.freight }）</p>
                        </div>
                        <div class="function">
                            <div onclick="confirmReceive('${order.id}')"> <p>确认收货</p></div >
                        </div>
                    </li>
                	 </c:forEach>
                </ul>
            </div>
        </div>
        <!--待评价-->
        <div class="content current" style="display:none; border:none;">
            <c:if test="${fn:length(orderVo.unevaluateOrderList)==0}">
				 <img src="webpage/weixin/mshop/mobile/images/emptycart.png" class="nothing-img">
            		<h3 class="nothing-text">你还没有待评价订单记录哦！</h3>
            		<div href="" class="nothing-go"><a href="${webRoot}/mshopWechatController.do?goShop&customerId=${customerId}">去逛逛</a></div>
			</c:if>
            <div class="list">
                <ul>
                	 <c:forEach items="${orderVo.unevaluateOrderList}" var="order">
                	 	<li id="${order.id}order">
                        <div class="list-tit-name">
                            <h5>${order.store.storeName }</h5>
                            <p>待评价</p>
                        </div>
                         <c:forEach items="${order.orderGoodsList}" var="orderGoods">
                         	<a href="${webRoot}/mshopWechatController.do?goStore&customerId=${customerId}&storeId=${order.store.id }">
                            <div class="clearfix">
                                <img src="${orderGoods.imgurl }" class="clearfix-img">
                                <div>
                                    <p>${orderGoods.goodsName }</p>
                                    <p>￥${orderGoods.realPrice }元</p>
                                </div>
                            </div>
                        </a>
                         </c:forEach>
                        <div class="total">
                            <p>共${order.totalCount }件商品&nbsp;合计：￥<span>${order.totalPrice }</span>（含运费￥${order.freight }）</p>
                        </div>
                        <div class="function">
                            <a href="${webRoot}/mshopWechatController.do?goEvaluate&customerId=${customerId}&storeId=${order.idStore}&orderId=${order.id}" ><p style="color:#00afff; border-color:#00afff">去评价</p></a>
                        </div>
                    </li>
                	 </c:forEach>
                </ul>
            </div>
        </div>
         <!--全部订单-->
        <div class="content current" style="display:none; border:none;">
            <c:if test="${fn:length(orderVo.allOrderList)==0}">
				 <img src="webpage/weixin/mshop/mobile/images/emptycart.png" class="nothing-img">
            		<h3 class="nothing-text">你还没有订单记录哦！</h3>
            		<div href="" class="nothing-go"><a href="${webRoot}/mshopWechatController.do?goShop&customerId=${customerId}">去逛逛</a></div>
			</c:if>
            <div class="list">
                <ul>
                	 <c:forEach items="${orderVo.allOrderList}" var="order">
                	 	<li id="${order.id}order">
                        <div class="list-tit-name">
                            <h5>${order.store.storeName }</h5>
                            <c:if test="${order.status==0 }">
                            	<p>待付款</p>
                            </c:if>
                            <c:if test="${order.status==1 }">
                            	<p>待发货</p>
                            </c:if>
                            <c:if test="${order.status==2 }">
                            	<p>待收货</p>
                            </c:if>
                            <c:if test="${order.status==3 }">
                            	<p>待评价</p>
                            </c:if>
                            <c:if test="${order.status==4 }">
                            	<p>已完成</p>
                            </c:if>
                            
                        </div>
                         <c:forEach items="${order.orderGoodsList}" var="orderGoods">
                         	<a href="${webRoot}/mshopWechatController.do?goStore&customerId=${customerId}&storeId=${order.store.id }">
                            <div class="clearfix">
                                <img src="${orderGoods.imgurl }" class="clearfix-img">
                                <div>
                                    <p>${orderGoods.goodsName }</p>
                                    <p>￥${orderGoods.realPrice }元</p>
                                </div>
                            </div>
                        </a>
                         </c:forEach>
                        <div class="total">
                            <p>共${order.totalCount }件商品&nbsp;合计：￥<span>${order.totalPrice }</span>（含运费￥${order.freight }）</p>
                        </div>
                    </li>
                	 </c:forEach>
                </ul>
            </div>
        </div>
    </div>
    <script>
    $(".menu li").click(function(){
        $(".menu li").addClass("others");
        $(this).removeClass("others").addClass("current");
        var index = $(".menu li").index(this);
        $(".content").hide();
        $(".content").eq(index).fadeIn(200);
    })
    </script>
	
	<script type="text/javascript">
		function removeOrder(id){
			$.ajax({
				url : "mshopWechatController.do?removeOrder&orderId=" + id,
				type : "GET",
				async : false,
				success : function(data) {
					$("#" + orderId + "order").remove();
				},
				error : function(xhr, type, exception) {
					alert("error");
				}
			});
		}
		function confirmReceive(orderId){
			$.ajax({
				url : "mshopWechatController.do?confirmReceive&orderId=" + orderId,
				type : "GET",
				async : false,
				success : function(data) {
					location.reload();
				},
				error : function(xhr, type, exception) {
					alert("error");
				}
			});
		}
		
		function pay(orderId){
			$.ajax({
				url : "mshopWechatController.do?pay&orderId=" + orderId,
				type : "GET",
				async : false,
				success : function(data) {
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
						         	//alert("支付失败");
						        	window.location.href="${webRoot}/mshopWechatController.do?paymentFail&customerId=${customerId}&orderId="+orderId;
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
	</script>


</body>
</html>
