<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>客户列表</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="wxMshopCustomerController.do?doAdd" tiptype="1">
					<input id="id" name="id" type="hidden" value="${wxMshopCustomerPage.id }">
					<input id="createName" name="createName" type="hidden" value="${wxMshopCustomerPage.createName }">
					<input id="createDate" name="createDate" type="hidden" value="${wxMshopCustomerPage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${wxMshopCustomerPage.updateName }">
					<input id="updateDate" name="updateDate" type="hidden" value="${wxMshopCustomerPage.updateDate }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							用户唯一标识:
						</label>
					</td>
					<td class="value">
					     	 <input id="openid" name="openid" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">用户唯一标识</label>
						</td>
				<tr>
					<td align="right">
						<label class="Validform_label">
							昵称:
						</label>
					</td>
					<td class="value">
					     	 <input id="nickname" name="nickname" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">昵称</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							性别:
						</label>
					</td>
					<td class="value">
					     	 <input id="sex" name="sex" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">性别</label>
						</td>
				<tr>
					<td align="right">
						<label class="Validform_label">
							城市:
						</label>
					</td>
					<td class="value">
					     	 <input id="city" name="city" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">城市</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							省份:
						</label>
					</td>
					<td class="value">
					     	 <input id="province" name="province" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">省份</label>
						</td>
				<tr>
					<td align="right">
						<label class="Validform_label">
							头像链接:
						</label>
					</td>
					<td class="value">
					     	 <input id="headimgurl" name="headimgurl" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">头像链接</label>
						</td>
					</tr>
				<tr>
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
					</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/weixin/mshop/customer/wxMshopCustomer.js"></script>		