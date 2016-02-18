<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<title>收货地址</title>
<link rel="stylesheet" href="webpage/weixin/plugin/weui/style/weui.css" />
<link rel="stylesheet"
	href="webpage/weixin/plugin/weui/example/example.css" />
<script type="text/javascript"
	src="http://api.map.baidu.com/api?type=quick&ak=9DcAmMDtmNdE2SG6b7E9Dptk&v=1.0"></script>
<script src="webpage/weixin/mshop/mobile/js/jquery-2.1.3.min.js"></script>
<script type="text/javascript"
	src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
</head>
<body ontouchstart>
	<div class="container js_container">
		<div class="page">
			<div class="hd">
				<h1 class="page_title">收货地址</h1>
				<p class="page_desc">请填写正确的地址信息</p>
			</div>
			<div class="bd">
				<!-- <div class="weui_cells_title">表单</div> -->
				<form id="form">
					<input name="id" type="hidden" value="${customer.id }">
					<div class="weui_cells weui_cells_form">
						<div class="weui_cell">
							<div class="weui_cell_hd">
								<label class="weui_label">姓名</label>
							</div>
							<div class="weui_cell_bd weui_cell_primary">
								<c:if test="${empty customer.realName}">
									<input id="name" name="realName" class="weui_input" type="text"
									placeholder="请输入姓名"
									pattern="^[\u4e00-\u9fa5_a-zA-Z0-9_]{1,20}$" required />
								</c:if>
								<c:if test="${not empty customer.realName}">
									<input id="name" name="realName" class="weui_input" type="text"
									placeholder="请输入姓名" value=${customer.realName}
									pattern="^[\u4e00-\u9fa5_a-zA-Z0-9_]{1,20}$" required />
								</c:if>
								
							</div>
						</div>
						<div class="weui_cell">
							<div class="weui_cell_hd">
								<label class="weui_label">手机</label>
							</div>
							<div class="weui_cell_bd weui_cell_primary">
								<c:if test="${empty customer.phone}">
									<input id="phone" name="phone" class="weui_input" type="text"
									placeholder="请输入手机号" required
									pattern="^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$" />
								</c:if>
								<c:if test="${not empty customer.phone}">
									<input id="phone" name="phone" class="weui_input" type="text"
									placeholder="请输入手机号" required value=${customer.phone}
									pattern="^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$" />
								</c:if>
								
							</div>
						</div>

						<div class="weui_cell">
							<div class="weui_cell_hd">
								<label class="weui_label">地区</label>
							</div>
							<div class="weui_cell_bd weui_cell_primary">
								<input id="address" name="address" class="weui_input"
									type="text" required />
							</div>
						</div>

						<div class="weui_cell">
							<div class="weui_cell_hd">
								<label class="weui_label">详情</label>
							</div>
							<div class="weui_cell_bd weui_cell_primary">
							<c:if test="${empty customer.addressDetail}">
									<input id="addressDetail" name="addressDetail"
									class="weui_input" type="text" placeholder="请填写详细地址" required />
								</c:if>
								<c:if test="${not empty customer.addressDetail}">
									<input id="addressDetail" name="addressDetail" value=${customer.addressDetail}
									class="weui_input" type="text" placeholder="请填写详细地址" required />
								</c:if>
								
							</div>
						</div>

					</div>
				</form>
				<p class="weui_cells_tips">我们将会按照以上地址为您配送</p>
				<div class="bd spacing" style="padding-top:20px;">
					<button  class="weui_btn weui_btn_primary" onclick="submitAddress()">完成</button>
				</div>
			</div>


			<!--BEGIN toast-->
			<div id="toast" style="display: none;">
				<div class="weui_mask_transparent"></div>
				<div class="weui_toast">
					<i class="weui_icon_toast"></i>
					<p class="weui_toast_content">已完成</p>
				</div>
			</div>
			<!--end toast-->


			<!-- loading toast -->
			<div id="loadingToast" class="weui_loading_toast"
				style="display: none;">
				<div class="weui_mask_transparent"></div>
				<div class="weui_toast">
					<div class="weui_loading">
						<div class="weui_loading_leaf weui_loading_leaf_0"></div>
						<div class="weui_loading_leaf weui_loading_leaf_1"></div>
						<div class="weui_loading_leaf weui_loading_leaf_2"></div>
						<div class="weui_loading_leaf weui_loading_leaf_3"></div>
						<div class="weui_loading_leaf weui_loading_leaf_4"></div>
						<div class="weui_loading_leaf weui_loading_leaf_5"></div>
						<div class="weui_loading_leaf weui_loading_leaf_6"></div>
						<div class="weui_loading_leaf weui_loading_leaf_7"></div>
						<div class="weui_loading_leaf weui_loading_leaf_8"></div>
						<div class="weui_loading_leaf weui_loading_leaf_9"></div>
						<div class="weui_loading_leaf weui_loading_leaf_10"></div>
						<div class="weui_loading_leaf weui_loading_leaf_11"></div>
					</div>
					<p class="weui_toast_content">数据加载中</p>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		var latitude = ""; // 纬度，浮点数，范围为90 ~ -90
		var longitude = ""; // 经度，浮点数，范围为180 ~ -180。
		window.onload = function() {
			navigator.geolocation.getCurrentPosition(translatePoint); //定位
		}

		function getAddress(latitude, longitude) {
			// 百度地图API功能
			var map = new BMap.Map("allmap");
			var point = new BMap.Point(latitude, longitude);
			var gc = new BMap.Geocoder();
			gc.getLocation(point, function(rs) {
				var addComp = rs.addressComponents;
				$("#address").val(addComp.city + " " + addComp.district);
				//alert(addComp.province + ", " + addComp.city + ", " + addComp.district + ", " + addComp.street + ", " + addComp.streetNumber);
			});
		}

		function translatePoint(position) {
			latitude = position.coords.latitude;
			longitude = position.coords.longitude;
			getAddress(longitude, latitude);
		}
		function check() {
			//验证普通form标签
			if (!$("#name")[0].checkValidity()) {
				alert("请输入正确的姓名！");
				return false;
			} else if (!$("#phone")[0].checkValidity()) {
				alert("请输入正确的手机号！");
				return false;
			} else if (!$("#address")[0].checkValidity()) {
				alert("请输入正确的省市区");
				return false;
			} else if (!$("#addressDetail")[0].checkValidity()) {
				alert("请输入正确的详细地址");
				return false;
			}
			return true;
		}

		function submitAddress() {
			 if (check()) {
				$("#loadingToast").show();
				$.ajax({
					url : "mshopWechatController.do?saveAddress",
					data : $("#form").serialize(),
					type : "post",
					async : false,
					success : function(data) {
						$("#loadingToast").hide();
						$("#toast").show();
						$('#toast').delay(2000).hide(0);
						setTimeout('back()',2000);
					},
					error : function(xhr, type, exception) {
						$("#loadingToast").hide();
					}
				});
			} 
		}
		
		function back(){
			window.location.href = "${webRoot }/mshopWechatController.do?goOrderInput&customerId=${customer.id}&storeId=${storeId}";
		}
	</script>


</body>
</html>