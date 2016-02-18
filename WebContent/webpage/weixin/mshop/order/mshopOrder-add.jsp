<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>订单</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="mshopOrderController.do?doAdd" tiptype="1">
					<input id="id" name="id" type="hidden" value="${mshopOrderPage.id }">
					<input id="createName" name="createName" type="hidden" value="${mshopOrderPage.createName }">
					<input id="createDate" name="createDate" type="hidden" value="${mshopOrderPage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${mshopOrderPage.updateName }">
					<input id="updateDate" name="updateDate" type="hidden" value="${mshopOrderPage.updateDate }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							订单号:
						</label>
					</td>
					<td class="value">
					     	 <input id="code" name="code" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">订单号</label>
						</td>
					<td align="right">
						<label class="Validform_label">
							状态:
						</label>
					</td>
					<td class="value">
					     	 <input id="status" name="status" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">状态</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							地址:
						</label>
					</td>
					<td class="value">
					     	 <input id="address" name="address" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">地址</label>
						</td>
					<td align="right">
						<label class="Validform_label">
							收件人:
						</label>
					</td>
					<td class="value">
					     	 <input id="receiverName" name="receiverName" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">收件人</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							收件人手机号:
						</label>
					</td>
					<td class="value">
					     	 <input id="phone" name="phone" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">收件人手机号</label>
						</td>
					<td align="right">
						<label class="Validform_label">
							客户ID:
						</label>
					</td>
					<td class="value">
					     	 <input id="idCustomer" name="idCustomer" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">客户ID</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							总商品数:
						</label>
					</td>
					<td class="value">
					     	 <input id="totalCount" name="totalCount" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">总商品数</label>
						</td>
					<td align="right">
						<label class="Validform_label">
							总价格 含邮费:
						</label>
					</td>
					<td class="value">
					     	 <input id="totalPrice" name="totalPrice" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">总价格 含邮费</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							邮费:
						</label>
					</td>
					<td class="value">
					     	 <input id="freight" name="freight" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">邮费</label>
						</td>
					<td align="right">
						<label class="Validform_label">
							买家留言:
						</label>
					</td>
					<td class="value">
					     	 <input id="message" name="message" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">买家留言</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							店铺ID:
						</label>
					</td>
					<td class="value">
					     	 <input id="idStore" name="idStore" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">店铺ID</label>
						</td>
					<td align="right">
						<label class="Validform_label">
							微信账号ID:
						</label>
					</td>
					<td class="value">
					     	 <input id="accountid" name="accountid" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">微信账号ID</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							原始ID:
						</label>
					</td>
					<td class="value">
					     	 <input id="weixinAccountid" name="weixinAccountid" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">原始ID</label>
						</td>
					<td align="right">
						<label class="Validform_label">
							订单商品ID:
						</label>
					</td>
					<td class="value">
					     	 <input id="idOrderGoods" name="idOrderGoods" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">订单商品ID</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							快递名称:
						</label>
					</td>
					<td class="value">
					     	 <input id="expressName" name="expressName" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">快递名称</label>
						</td>
					<td align="right">
						<label class="Validform_label">
							运单号:
						</label>
					</td>
					<td class="value">
					     	 <input id="expressNum" name="expressNum" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">运单号</label>
						</td>
					</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/weixin/mshop/order/mshopOrder.js"></script>		