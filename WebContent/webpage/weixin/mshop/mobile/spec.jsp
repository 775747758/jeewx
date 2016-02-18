<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>

<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>选择规格</title>
<meta content="" name="description" />
<meta content="" name="author" />

<link href="webpage/weixin/mshop/mobile/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="webpage/weixin/mshop/mobile/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="webpage/weixin/mshop/mobile/css/cart-min.css" rel="stylesheet" type="text/css"/>
<!--[if lt IE 9]>
        <script src="/templates/nwx/js/html5shiv.js"></script>
        <script src="/templates/nwx/js/respond.min.js"></script>
    <![endif]-->
<script src="webpage/weixin/mshop/mobile/js/jquery-2.1.3.min.js"></script>
<script src="webpage/weixin/mshop/mobile/js/bootstrap.min.js"></script>
<script src="webpage/weixin/mshop/mobile/js/jquery.flytoCart-1.2.js"></script>-
<script src="webpage/weixin/mshop/mobile/js/iscroll.js"></script>
<script src="webpage/weixin/mshop/mobile/js/number.js"></script>


<style>
html{ background-color:#f2f2f2;}
		html{ background-color:#f2f2f2;}
		 /*右*/
		.m-right{width: 100%; position:absolute;top:0px; }
		
		.foodlist li img{ width:100%;}
		.foodlist li h4{	color: #333; font-size: 15px;  line-height: 15px;}
		.foodlist li p{margin:0px 0px 0px; font-size: 12px;color: #999;}
		.foodlist li p span{margin-left:10px;}
		.foodlist li .price{color: #ff6000; font-size: 15x;font-weight: 700;}
		
		.foodlist li .fadd{height: 32px;line-height: 32px;right:20px; top:96px;}
		.foodlist li .fadd .icons{float:right;text-align: center;width: 30px;height: 30px;border-radius: 50%;border: 1px solid #dadee2;}
		.foodlist li .fadd .icons i{line-height: 26px; color: #fe2947;font-size:13px;}
		.foodlist li .fadd .fnum{float:right;margin-left:3px;margin-right:3px;}
		/*购物车*/
		.cart{height:30px;}
		.cart p{font-size:16px;color:#fff;line-height:30px;margin-top:5px;}
		.cart p #items{margin-right:5px;background-color:#FD080C; padding:9px 5px; border-radius:50%; font-size:12px; position:fixed; left:37px; line-height:0;}	
		
		.foodlist li .fadd .icons{ line-height:25px;} 
			 
		#wrapper {position: absolute; z-index: 1; background-color:#fff; bottom:48px;overflow: hidden;
			/* Prevent native touch events on Windows */
			-ms-touch-action: none;
		
			/* Prevent the callout on tap-hold and text selection */
			-webkit-touch-callout: none;
			-webkit-user-select: none;
			-moz-user-select: none;
			-ms-user-select: none;
			user-select: none;
		
			/* Prevent text resize on orientation change, useful for web-apps */
			-webkit-text-size-adjust: none;
			-moz-text-size-adjust: none;
			-ms-text-size-adjust: none;
			-o-text-size-adjust: none;
			text-size-adjust: none;
		}
		
		#scroller {position: absolute;
			/* Prevent elements to be highlighted on tap */
			-webkit-tap-highlight-color: rgba(0,0,0,0);
		
			/* Put the scroller into the HW Compositing layer right from the start */
			-webkit-transform: translateZ(0);
			-moz-transform: translateZ(0);
			-ms-transform: translateZ(0);
			-o-transform: translateZ(0);
			transform: translateZ(0);
		}
		/**购物车***/  
		
		
		/* starbox */
		.clearfix:after{content:".";display:block;height:0;clear:both;visibility:hidden}
		.clearfix{display:inline-table}
		*html .clearfix{height:1%}
		.clearfix{display:block}
		*+html .clearfix{min-height:1%}
		.fl{float:left;}
					
		.rev_pro li .revtit{text-align:right;display:block;float:left;margin-right:10px;}
		.revinp{float:left;display:inline;}
		.level .level_solid,.level .level_hollow{float:left;background-image:url(images/icon2.png);background-repeat:no-repeat;display:inline-block;width:15px;height:15px;}
		.level .level_solid{background-position:0px 0px;}
		.level .level_hollow{background-position:-21px 0px;}
		.revgrade{margin-left:20px;}
		/* starbox */
		
		.current{ color:#fff; background-color:#00afff;}
		.others{ background-color:#fff; border:1px solid #ddd; color:#000;}	
		.button span{ padding:5px 10px; border-radius:2px;}	
		a:link{ text-decoration:none;}a:active{ text-decoration:none;}a:visited{ text-decoration:none;}
		
		
</style>


<script type="text/javascript">
var myScroll;
var mScroll;
var mrrrcroll;
function loaded () {
	myScroll = new IScroll('#wrapper', {mouseWheel: true,click: true});
	myScroll1 = new IScroll('.m-left', {mouseWheel: true,click: true});
	mrrrcroll=new IScroll('qwe', {mouseWheel: true,click: true,bounceLock:true});
	}
</script>


<script>
	$(document).ready(function() {

		$(".flying").flytoCart(function() {
		}, {
			source : '.source',
			attribute : 'rel',
			velocity : 1000,
			destination : '.destination'
		});

	});
</script>

</head>


<body onload="loaded()">
	<div class="m-right" id="wrapper">
		<div class="tab-content ">
			<div role="tabpanel" class="tab-pane active" id="f19">
				<ul class="media-list foodlist">

					<li id="food${goods.id }">
						<div class="media-left">
							<a href="#"> <span id='product_id_60' class='source'> <img class="media-object" src="">
							</span>
							</a>
						</div>
						<div class="media-body" style="padding: 10px">
							<h4 class="media-heading">${goods.name }</h4>
							<c:if test="${empty goods.sellCount}">
								<p>
									已售0份 <span></span>
								</p>
							</c:if>
							<c:if test="${not empty goods.sellCount}">
								<p>
									已售${goods.sellCount}份 <span></span>
								</p>
							</c:if>
							<div class="button" style="margin: 14px 0;">
								规格
								<c:forEach items="${specList}" var="spec" varStatus="status">
									<c:if test="${status.index==0 }">
										<span class="current" style="margin-left: 10px;">${spec}</span>
									</c:if>
									<c:if test="${status.index!=0 }">
										<span class="others" style="margin-left: 10px;">${spec}</span>
									</c:if>
								</c:forEach>
							</div>
							<div class="price" style="font-size: 16px; margin-top: 4px;">￥${goods.realPrice }</div>
							<div class="fadd">
									<a href="#" id="button_add" class="flying icons" rel="product_id_${goods.id}" onclick="addcart('${goods.id}','${customerId}','${goods.realPrice}','${store.id}','${goods.name}'); return false">+</a>
									<span id="count_span" class="fnum foodnum" >0</span>
									<a href="#" id="button_remove" class="remove icons"  " onclick="removeCart('${customerId }','${goods.id}','${goods.realPrice}'); return false">-</a>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	
	<div id="shopCart" style="display: none" >
				<div style="height: 100%; width: 100%; background-color:#000; z-index: 888; position: absolute; opacity: 0.5; top: 0px;"></div>
				 <div id="qwe"  style="position: fixed; margin-bottom: 45px; bottom: 0px; width: 100%;z-index: 999;background-color: #fff; height:183px; overflow:auto;">
					<c:forEach items="${cartList}" var="cart" varStatus="cartStatus">
						<div id="cart${cart.idGoods}" style="overflow: hidden; border-bottom: 1px solid #ddd; padding: 4px;">
						<p style="float: left; color: #000; margin: 0; line-height: 18px; padding: 8px 0 6px 10px; width: 50%;">
						${cart.goodsName }
						<c:if test="${not empty cart.spec }">
							<small style="display: block; line-height: 14px; color: #aaa; margin-top: 4px;">${cart.spec }</small>
						</c:if>
						</p>
						<p style="float: right; padding: 6px 10px; margin: 0;">
							<span style="color: #ff6000; padding-top: 2px;">￥${cart.price }</span>&nbsp;&nbsp;&nbsp; 
							<a href="#" class="remove icons" rel="product_id_60" onclick="removeCart('${customerId}','${cart.idGoods}','${cart.price}'); return false" style="border: 1px solid #aaa; border-radius: 50%; padding: 3px 8px;">-</a> 
							<span id="cart_count_${cart.idGoods}" class="fnum foodnum" style="display:;">${cart.count }</span> 
							<a href="#" class="flying icons" style="display:; border: 1px solid #aaa; border-radius: 50%; padding: 3px 9px;" onclick="addcart('${cart.idGoods}','${customerId}','${cart.price}','${store.id}','${cart.goodsName}'); return false">+</a>
						</p>
					</div>
					</c:forEach>
				</div>
			</div>
	

	<nav class="navbar navbar-inverse navbar-fixed-bottom cart" onclick="showShopCart();" >
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-6">
					<p>
						<img src="webpage/weixin/mshop/mobile/images/cart_ico.png" style="width: 36px;"> <span id="items" style="">${totalCount }</span>￥<span id="total">${totalPrice }</span>
					</p>
				</div>


				<div class="col-xs-6">
					<a href="javascript:void(0);"  onclick="goOrder()"  style="display:;" class="sprice btn btn-success btn-sm  navbar-btn pull-right">确认下单</a>
				</div>
			</div>
		</div>
	</nav>

	<script>
	 function showShopCart() {
         if ($("#shopCart").attr('style')) {
             $("#shopCart").css('display','');
         } else {
             $("#shopCart").css('display','none');
         }
         
     }
	var spec='${specList[0]}';
		$(".button span").click(function() {
			$(".button span").addClass("others");
			spec=$(this).html();
			$(this).removeClass("others").addClass("current");
		})
	</script>

	<script type="text/javascript">
	$(function(){
		$("#count_span").hide();
		$("#button_remove").hide();
	});
		function removeCart(customerId, goodsId, price) {
			 $.ajax({
				url : "mshopWechatController.do?removeFromCartWithSpec",
				data : {
					customerId : customerId,
					goodsId:goodsId,
					spec: spec
				},
				type : "get",
				async : false,
				success : function(data) {
					//如果商品数量为1
					if (parseInt($('#count').html()) <= 1) {
						$("#cart" + goodsId + "").find(".remove").css(
								'display', 'none');
						$("#cart" + goodsId + "").find(".foodnum").css(
								'display', 'none');
						//隐藏减少框,数量
						$("#count_span").hide();
						$("#button_remove").hide();
					}
					$("#count").html(parseInt($('#count').html()) - 1);
					//修改购物车中显示的数量
					$("#cart_count_" + goodsId + "").html(
							parseInt($('#cart_count_' + goodsId + "").html()) - 1);
					if (parseInt($('#items').html()) <= 1) {
						//修改底部总商品数以及商品总价
						$('#total').html(0);
						$('#items').html(0);
					} else {
						//修改底部总商品数以及商品总价
						$('#total').html(accSub($('#total').html(), price));
						$('#items').html(parseInt($('#items').html()) - 1);
					}
				},
				error : function(xhr, type, exception) {
					alert("error");
				}
			}); 
		}
		function addcart(goodsId, customerId, price,storeId,goodName) {
			 $.ajax({
				url : "mshopWechatController.do?addToCart",
				data : {
					idGoods : goodsId,
					idCustomer : customerId,
					spec: spec,
					idStore:storeId
				},
				type : "get",
				async : false,
				dataType: "json",
				success : function(data) {
					if (data.success) {
						//$("#count_span").show();
						//$("#button_remove").show();
						//$("#count_span").html(parseInt($("#count_span").html()) + 1);
						//修改底部总商品数以及商品总价
						if($("#cart" + goodsId + "").length==0){
							$("#qwe").append(" "+
									"<div id='cart"+goodsId+"' style='overflow: hidden; border-bottom: 1px solid #ddd; padding: 4px;'>"+
									"<p style='float: left; color: #000; margin: 0; line-height: 18px; padding: 8px 0 6px 10px; width: 50%;'>"+
									goodName+
									"</p>"+
									"<p style='float: right; padding: 6px 10px; margin: 0;'>"+
										"<span style='color: #ff6000; padding-top: 2px;'>￥"+price+"</span>&nbsp;&nbsp;&nbsp; "+
										"<a href='#' class='remove icons' rel='product_id_60'  style='border: 1px solid #aaa; border-radius: 50%; padding: 3px 8px;'>-</a>"+ 
										"<span id='cart_count_"+goodsId+"' class='fnum foodnum' style='display:;'>"+"0"+"</span> "+
										"<a href='#' class='flying icons' style='display:; border: 1px solid #aaa; border-radius: 50%; padding: 3px 9px;' >+</a>"+
									"</p>"+
								"</div>");
							
							//onclick='removeCart("+customerId+",'"+goodsId+"','"+price+"'); return false'
							//onclick='addcart('"+goodsId+"','${customerId}','"+price+"','${store.id}',"+goodName+"); return false'
							$("#cart" + goodsId + "").find(".remove").attr("onclick","removeCart('"+customerId+"','"+goodsId+"','"+price+"')");
							$("#cart" + goodsId + "").find(".flying").attr("onclick","addcart('"+goodsId+"','"+customerId+"','"+price+"','"+storeId+"','"+goodName+"')");
						}
						
						$("#cart" + goodsId + "").find(".remove").css(
								'display', '');
						$("#cart" + goodsId + "").find(".foodnum").css(
								'display', '');
						$("#cart_count_" + goodsId + "")
						.html(
								parseInt($('#cart_count_' + goodsId + "")
										.html()) + 1);
						
						$('#total').html(accAdd($('#total').html(), price));
						$('#items').html(parseInt($('#items').html()) + 1);
					}else{
						alert("不在营业！");
					}
					
				},
				error : function(xhr, type, exception) {
					alert("error");
				}
			});
			
		};
		
		$('#myTabs li ').click(function (e) {
			setTimeout(function () { myScroll.refresh(); }, 0);
		});
		
		function goOrder() {
			//先检查购物车是否有商品
			if (parseInt($('#items').html()) > 0) {
				//在检查该店铺是否在营业
				$.ajax({
				url : "mshopWechatController.do?checkStoreStatus&storeId=${storeId}",
				type : "get",
				async : false,
				dataType: "json",
				success : function(data) {
					if (data.success) {
						window.location.href = "${webRoot }/mshopWechatController.do?goOrderInput&customerId=${customerId}&storeId=${storeId}";
					}else{
						alert("不在营业！");
					}

				},
				error : function(xhr, type, exception) {
					alert("error");
				}
			});	
			} else {
				alert("请添加商品到购物车！");
			}

		}
		
		function showShopCart() {
            if ($("#shopCart").attr('style')) {
                $("#shopCart").css('display','');
            } else {
                $("#shopCart").css('display','none');
            }
            
        }

		
	</script>

</body>
</html>