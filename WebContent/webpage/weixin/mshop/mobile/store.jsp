<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>${store.storeName }</title>
<meta content="" name="description" />
<meta content="" name="author" />

<link href="webpage/weixin/mshop/mobile/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="webpage/weixin/mshop/mobile/css/store.css" rel="stylesheet" type="text/css" />
<link href="webpage/weixin/mshop/mobile/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="webpage/weixin/mshop/mobile/css/cart-min.css" rel="stylesheet" type="text/css" />
<!--[if lt IE 9]>
        <script src="/templates/nwx/js/html5shiv.js"></script>
        <script src="/templates/nwx/js/respond.min.js"></script>
    <![endif]-->
<script src="webpage/weixin/mshop/mobile/js/jquery-2.1.3.min.js"></script>
<script src="webpage/weixin/mshop/mobile/js/bootstrap.min.js"></script>
<script src="webpage/weixin/mshop/mobile/js/jquery.flytoCart-1.2.js"></script>
<script src="webpage/weixin/mshop/mobile/js/iscroll.js"></script>
<script src="webpage/weixin/mshop/mobile/js/number.js"></script>


<style>
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
	<!--header-->
	<header>
		<div class="header">
			<a href="javascript:history.back();" class="h-back">商铺</a>
			<div class="h-title">${store.storeName }</div>
			<a href="index.html" class="h-right"> <i class="fa fa-ellipsis-v"></i>
			</a>
		</div>
	</header>

	<!--table-->
	<div class="m-tabs">
		<ul class="menu">
			<li class="current">菜单</li>
			<li class="others">评价</li>
			<li class="others">店铺</li>
		</ul>


		<!---->
		<!---->
		<div class="content current" style="border-bottom: none;">
			<!---->
			<!--  <div class="top-info" style="border-bottom:none;">dgdgdgdgdgdgdg</div> -->
			<!---->
			<div class="m-warp">
				<div class="m-left">
					<ul class="nav list-groups" id="myTabs">
						<c:forEach items="${store.goodsTypeList}" var="goodsType" varStatus="status">
							<c:if test="${status.index==0 }">
								<li class="active" id="t${status.index}"><a aria-controls="f${status.index}" role="tab" data-toggle="tab" href="#f${status.index}">${goodsType.name }</a></li>
							</c:if>
							<c:if test="${status.index!=0 }">
								<li id="t${status.index}"><a aria-controls="f${status.index}" role="tab" data-toggle="tab" href="#f${status.index}">${goodsType.name }</a></li>
							</c:if>

						</c:forEach>
					</ul>
				</div>



				<div class="m-right" id="wrapper">
					<div class="tab-content ">

						<c:forEach items="${store.goodsTypeList}" var="goodsType" varStatus="goodsTypeStatus">
							<div role="tabpanel" class="tab-pane active" id="f${goodsTypeStatus.index}">
								<ul class="media-list foodlist">
									<c:forEach items="${goodsType.goodsList}" var="goods" varStatus="goodsStatus">
										<c:if test="${goods.allSpecs!='+' }">
											<li id="food${goods.id}">
												<div class="media-left">
													<a href="#"> <span id='product_id_${goods.id}' class='source'> <img class="media-object" src="${goods.imgurl}">
													</span>
													</a>
												</div>
												<div class="media-body">
													<h4 class="media-heading">${goods.name}</h4>
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

													<div class="price">￥${goods.realPrice}</div>
													<div class="fadd">
														<a href="${webRoot}/mshopWechatController.do?goGoodsCart&customerId=${customerId}&storeId=${store.id}&goodId=${goods.id}" style="border: 1px solid #ddd; border-radius: 20px; color: #00afff; padding: 4px 10px; font-size: 12px;">选择规格</a>
													</div>
												</div>
											</li>
										</c:if>
										<c:if test="${goods.allSpecs=='+' }">
											<li id="food${goods.id}">
												<div class="media-left">
													<a href="#"> <span id='product_id_${goods.id}' class='source'> <img class="media-object" src="${goods.imgurl}">
													</span>
													</a>
												</div>
												<div class="media-body">
													<h4 class="media-heading">${goods.name}</h4>
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
													<div class="price">￥${goods.realPrice}</div>
													<div class="fadd">
														<c:if test="${empty goods.cartList}">
															<a href="#" class="flying icons" rel="product_id_${goods.id}" onclick="addcart('${goods.id}','${customerId}','${goods.realPrice}','${store.id}','${goods.name}'); return false">+</a>
															<span id="count_${goods.id}" class="fnum foodnum" style="display: none;">0</span>
															<a href="#" class="remove icons" style="display: none;" onclick="removeCart('${customerId}','${goods.id}','${goods.realPrice}'); return false">-</a>
														</c:if>
														<c:if test="${not empty goods.cartList }">
															<a href="#" class="flying icons" rel="product_id_${goods.id}" onclick="addcart('${goods.id}','${customerId}','${goods.realPrice}','${store.id}','${goods.name}'); return false">+</a>
															<span id="count_${goods.id}" class="fnum foodnum" style="display:;">${goods.cartList[0].count }</span>
															<a href="#" class="remove icons" style="display:;" onclick="removeCart('${customerId}','${goods.id}','${goods.realPrice}'); return false">-</a>
														</c:if>
													</div>
												</div>
											</li>
										</c:if>
									</c:forEach>

								</ul>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>


			<script>
				$(".menu li").click(function() {
					$(".menu li").addClass("others");
					$(this).removeClass("others").addClass("current");
					var index = $(".menu li").index(this);
					$(".content").hide();
					$(".content").eq(index).fadeIn(200);
				})
			</script>


			<div style="">
				<div class="w-left1"></div>
				<div class="w-right1" id="wrapper1">
					<div id="scroller1"></div>
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

			<nav class="navbar navbar-inverse navbar-fixed-bottom cart" onclick="showShopCart();">

				<div class="container-fluid">
					<div class="row">
						<div class="col-xs-6">
							<p>
								<img src="webpage/weixin/mshop/mobile/images/cart_ico.png" style="width: 36px;"> <span id="items" style="background-color: #FD080C; padding: 9px 5px; border-radius: 50%; font-size: 12px; position: fixed; left: 37px; line-height: 0;"> ${totalCount }</span>￥<span id="total">${totalPrice }</span>
							</p>
						</div>


						<div class="col-xs-6">
							<span id="price" class="btn btn-default btn-sm  navbar-btn pull-right" onclick="goOrder()">确认下单</span>
						</div>
					</div>
				</div>
			</nav>
		</div>
		<!---->
		<!---->
		<!---->
		<div class="content current" style="display: none; border-bottom: none; color: #000; background-color: #fff;">
			<c:forEach items="${store.evaluateList }" var="evaluation">
				<div style="border-bottom: 1px solid #ddd; padding: 0 10px;">
					<div style="overflow: hidden; line-height: 20px; padding-top: 10px;">
						<p style="color: #aaa; float: left; margin: 0;">${evaluation.customer.nickname }</p>
						<p style="float: right; color: #aaa; font-size: 12px; margin: 0;">
							<fmt:formatDate value="${evaluation.createDate}" pattern="yyyy-MM-dd" />
						</p>
					</div>
					<div id="star" style="padding: 4px 0;">
						<ul class="rev_pro clearfix" style="padding-left: 0; margin-bottom: 0;">
							<li style="border-bottom: none; padding: 0; font-size: 12px; color: #aaa; line-height: 20px;"><span class="revtit">综合评级：</span>
								<div class="revinp">
									<span id="test" class="level" style="height: 20px;"> <i class="level_solid" cjmark=""></i> <i class="level_solid" cjmark=""></i> <i class="level_solid" cjmark=""></i> <i class="level_solid" cjmark=""></i> <i class="level_hollow" cjmark=""></i>
									</span> <span class="revgrade">良</span>
								</div></li>
						</ul>
					</div>
					<!--star end-->
					<p style="line-height: 20px; margin: 0; padding: 0 0 10px 0;">${evaluation.content }</p>
				</div>

			</c:forEach>

		</div>
		<!---->
		<!---->
		<div class="content current" style="display: none; border-bottom: none;">
			<div style="overflow: hidden; border-bottom: 1px solid #ddd; padding: 16px 10px; background-color: #fff;">
				<img src="${store.imgurl }" style="width: 64px; height: 64px; float: left; border-radius: 50%; margin-right: 10px;">
				<div style="float: left; line-height: 20px;">
					<h4 style="font-size: 14px; color: #000; line-height: 0;">${store.storeName }</h4>
					<div id="star" style="padding: 4px 0;">
						<ul class="rev_pro clearfix" style="padding-left: 0; margin-bottom: 0;">
							<li style="border-bottom: none; padding: 0; font-size: 12px; color: #aaa; line-height: 20px;"><span class="revtit">综合评级：</span>
								<div class="revinp">
									<span id="test" class="level" style="height: 20px;"> <i class="level_solid" cjmark=""></i> <i class="level_solid" cjmark=""></i> <i class="level_solid" cjmark=""></i> <i class="level_solid" cjmark=""></i> <i class="level_hollow" cjmark=""></i>
									</span> <span class="revgrade">良</span>
								</div></li>
						</ul>
					</div>
					<!--star end-->
					<!-- <p style="color: #aaa; font-size: 12px; margin: 0;">由某某店铺提供</p> -->
				</div>
			</div>

			<div style="border-top: 1px solid #ddd; border-bottom: 1px solid #ddd; margin-top: 6px; background-color: #fff;">
				<h4 style="color: #aaa; font-size: 14px; padding-left: 10px;">店铺简介</h4>
				<p style="color: #000; border-top: 1px solid #ddd; border-bottom: 1px solid #ddd; line-height: 20px; padding: 12px 10px; margin: 0;">${store.descriptions}</p>
				<p style="color: #000; padding: 0 10px; margin: 0;">
					营业时间：
					<fmt:formatDate value="${store.startTime}" pattern="HH:mm" />
					-
					<fmt:formatDate value="${store.endTime}" pattern="HH:mm" />
				</p>
			</div>
		</div>


	</div>


	<script type="text/javascript">
		function removeCart(customerId, goodsId, price) {
			$.ajax({
				url : "mshopWechatController.do?removeFromCart",
				data : {
					idCustomer : customerId,
					idGoods : goodsId
				},
				type : "get",
				async : false,
				success : function(data) {
					//如果商品数量为1
					if (parseInt($('#count_' + goodsId + "").html()) <= 1) {
						//隐藏减少框,数量
						$("#food" + goodsId + "").find(".remove").css(
								'display', 'none');
						$("#food" + goodsId + "").find(".foodnum").css(
								'display', 'none');
						
						$("#cart" + goodsId + "").find(".remove").css(
								'display', 'none');
						$("#cart" + goodsId + "").find(".foodnum").css(
								'display', 'none');
					}
					//修改商品中显示的数量
					$("#count_" + goodsId + "").html(
							parseInt($('#count_' + goodsId + "").html()) - 1);
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
					idStore:storeId
				},
				type : "get",
				async : false,
				dataType: "json",
				success : function(data) {
					if (data.success) {
						//var ert="\'"+customerId+"\'";
						//添加购物车
						//购物车中没有此商品
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
						
						
						
						$("#food" + goodsId + "").find(".remove").css(
								'display', '');
						$("#food" + goodsId + "").find(".foodnum").css(
								'display', '');
						$("#cart" + goodsId + "").find(".remove").css(
								'display', '');
						$("#cart" + goodsId + "").find(".foodnum").css(
								'display', '');
						//修改底部总商品数以及商品总价
						$('#total').html(accAdd($('#total').html(), price));
						$('#items').html(parseInt($('#items').html()) + 1);
						//修改商品中显示的数量
						$("#count_" + goodsId + "")
								.html(
										parseInt($('#count_' + goodsId + "")
												.html()) + 1);
						//修改购物车中显示的数量
						$("#cart_count_" + goodsId + "")
						.html(
								parseInt($('#cart_count_' + goodsId + "")
										.html()) + 1);
					}else{
						alert("不在营业！");
					}

				},
				error : function(xhr, type, exception) {
					alert("error");
				}
			});
		};

		$('#myTabs li ').click(function(e) {
			setTimeout(function() {
				myScroll.refresh();
			}, 0);
		});
	</script>

	<script type="text/javascript">
		function goOrder() {
			//先检查购物车是否有商品
			if (parseInt($('#items').html()) > 0) {
				//在检查该店铺是否在营业
				$.ajax({
				url : "mshopWechatController.do?checkStoreStatus&storeId=${store.id}",
				type : "get",
				async : false,
				dataType: "json",
				success : function(data) {
					if (data.success) {
						window.location.href = "${webRoot }/mshopWechatController.do?goOrderInput&customerId=${customerId}&storeId=${store.id}";
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
	
	<script type="text/javascript">
		
		//document.addEventListener('touchmove', function (e) { e.preventDefault(); }, false);
	</script> 
</body>
</html>