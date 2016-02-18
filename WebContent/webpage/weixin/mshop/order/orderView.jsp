<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>订单详情</title>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
<script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#tt').tabs({
			onSelect : function(title) {
				$('#tt .panel-body').css('width', 'auto');
			}
		});
		$(".tabs-wrap").css('width', '100%');
	});
</script>
</head>
<body>
	<t:formvalid formid="formobj" dialog="true" usePlugin="password"
		layout="table" action="" tiptype="1">
		<input id="id" name="id" type="hidden" value="${mshopOrderPage.id }">
		<input id="createName" name="createName" type="hidden"
			value="${mshopOrderPage.createName }">
		<input id="createDate" name="createDate" type="hidden"
			value="${mshopOrderPage.createDate }">
		<input id="updateName" name="updateName" type="hidden"
			value="${mshopOrderPage.updateName }">
		<input id="updateDate" name="updateDate" type="hidden"
			value="${mshopOrderPage.updateDate }">
			<input id="status" name="status" type="hidden"
			value="${mshopOrderPage.status }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1"
			class="formtable">
			<tr>
				<td align="right"><label class="Validform_label"> 订单号:
				</label></td>
				<td class="value"><input id="code" name="code" type="text"
					readonly="true" style="width: 150px" class="inputxt"
					value='${mshopOrderPage.code}'> <span
					class="Validform_checktip"></span> <label class="Validform_label"
					style="display: none;">订单号</label></td>
				<%-- <td align="right"><label class="Validform_label"> 状态: </label>
				</td>
				<td class="value"><input id="status" name="status" type="text"
					style="width: 150px" class="inputxt" readonly="true"
					value='${mshopOrderPage.status}'> <span
					class="Validform_checktip"></span> <label class="Validform_label"
					style="display: none;">状态</label></td> --%>
				<td align="right"><label class="Validform_label"> 微信昵称:
				</label></td>
				<td class="value"><input id="nickname" name="nickname" readonly="true"
					type="text" style="width: 150px" class="inputxt"
					value='${mshopOrderPage.nickname}'> <span
					class="Validform_checktip"></span> <label class="Validform_label"
					style="display: none;">微信昵称</label></td>
			</tr>
			<tr>
				<td align="right"><label class="Validform_label"> 地址: </label>
				</td>
				<td class="value"><input id="address" name="address"
					readonly="true" type="text" style="width: 150px" class="inputxt"
					value='${mshopOrderPage.address}'> <span
					class="Validform_checktip"></span> <label class="Validform_label"
					style="display: none;">地址</label></td>
				<td align="right"><label class="Validform_label"> 收件人:
				</label></td>
				<td class="value"><input id="receiverName" name="receiverName"
					readonly="true" type="text" style="width: 150px" class="inputxt"
					value='${mshopOrderPage.receiverName}'> <span
					class="Validform_checktip"></span> <label class="Validform_label"
					style="display: none;">收件人</label></td>
			</tr>
			<tr>
				<td align="right"><label class="Validform_label">
						收件人手机号: </label></td>
				<td class="value"><input id="phone" name="phone" type="text"
					readonly="true" style="width: 150px" class="inputxt"
					value='${mshopOrderPage.phone}'> <span
					class="Validform_checktip"></span> <label class="Validform_label"
					style="display: none;">收件人手机号</label></td>
				<td align="right"><label class="Validform_label">下单时间:
				</label></td>
				<td class="value"><input id="idCustomer" name="idCustomer"
					type="text" style="width: 150px" class="inputxt" readonly="true"
					value='${mshopOrderPage.createDate}'> <span
					class="Validform_checktip"></span> <label class="Validform_label"
					style="display: none;">下单时间</label></td>
			</tr>
			<tr>
				<td align="right"><label class="Validform_label"> 总商品数:
				</label></td>
				<td class="value"><input id="totalCount" name="totalCount"
					readonly="true" type="text" style="width: 150px" class="inputxt"
					value='${mshopOrderPage.totalCount}'> <span
					class="Validform_checktip"></span> <label class="Validform_label"
					style="display: none;">总商品数</label></td>
				<td align="right"><label class="Validform_label"> 总价格
						含邮费: </label></td>
				<td class="value"><input id="totalPrice" name="totalPrice"
					readonly="true" type="text" style="width: 150px" class="inputxt"
					value='${mshopOrderPage.totalPrice}'> <span
					class="Validform_checktip"></span> <label class="Validform_label"
					style="display: none;">总价格 含邮费</label></td>
			</tr>
			<tr>
				<td align="right"><label class="Validform_label"> 邮费: </label>
				</td>
				<td class="value"><input id="freight" name="freight"
					readonly="true" type="text" style="width: 150px" class="inputxt"
					value='${mshopOrderPage.freight}'> <span
					class="Validform_checktip"></span> <label class="Validform_label"
					style="display: none;">邮费</label></td>
				<td align="right"><label class="Validform_label"> 买家留言:
				</label></td>
				<td class="value"><input id="message" name="message"
					readonly="true" type="text" style="width: 150px" class="inputxt"
					value='${mshopOrderPage.message}'> <span
					class="Validform_checktip"></span> <label class="Validform_label"
					style="display: none;">买家留言</label></td>
			</tr>
		</table>
		 <div style="width: auto; height: 200px;">
			<div style="width: 800px; height: 1px;"></div>
			<t:tabs id="tt" iframe="false" tabPosition="top" fit="false">
				<t:tab href="mshopOrderController.do?orderGoodsList&id=${mshopOrderPage.id }"
					icon="icon-search" title="订单商品" id="orderGoods"></t:tab>
			</t:tabs>
		</div> 
	</t:formvalid>
</body>
<script src="webpage/weixin/mshop/order/mshopOrder.js"></script>