<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>购物车</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="mshopCartController.do?doUpdate" tiptype="1">
					<input id="id" name="id" type="hidden" value="${mshopCartPage.id }">
					<input id="createName" name="createName" type="hidden" value="${mshopCartPage.createName }">
					<input id="createDate" name="createDate" type="hidden" value="${mshopCartPage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${mshopCartPage.updateName }">
					<input id="updateDate" name="updateDate" type="hidden" value="${mshopCartPage.updateDate }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								商品数量:
							</label>
						</td>
						<td class="value">
						     	 <input id="count" name="count" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${mshopCartPage.count}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">商品数量</label>
						</td>
					<tr>
						<td align="right">
							<label class="Validform_label">
								商品名称:
							</label>
						</td>
						<td class="value">
						     	 <input id="goodsName" name="goodsName" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${mshopCartPage.goodsName}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">商品名称</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								商品价格:
							</label>
						</td>
						<td class="value">
						     	 <input id="price" name="price" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${mshopCartPage.price}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">商品价格</label>
						</td>
					<tr>
						<td align="right">
							<label class="Validform_label">
								商品ID:
							</label>
						</td>
						<td class="value">
						     	 <input id="idGoods" name="idGoods" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${mshopCartPage.idGoods}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">商品ID</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								客户表:
							</label>
						</td>
						<td class="value">
						     	 <input id="idCustomer" name="idCustomer" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${mshopCartPage.idCustomer}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">客户表</label>
						</td>
					<tr>
						<td align="right">
							<label class="Validform_label">
								规格:
							</label>
						</td>
						<td class="value">
						     	 <input id="spec" name="spec" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${mshopCartPage.spec}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">规格</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								商店ID:
							</label>
						</td>
						<td class="value">
						     	 <input id="idStore" name="idStore" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${mshopCartPage.idStore}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">商店ID</label>
						</td>
					<tr>
						<td align="right">
							<label class="Validform_label">
								商品图片:
							</label>
						</td>
						<td class="value">
						     	 <input id="imgurl" name="imgurl" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${mshopCartPage.imgurl}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">商品图片</label>
						</td>
					</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/weixin/mshop/cart/mshopCart.js"></script>		