<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>微商城客户表</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  $(document).ready(function(){
	$('#tt').tabs({
	   onSelect:function(title){
	       $('#tt .panel-body').css('width','auto');
		}
	});
	$(".tabs-wrap").css('width','100%');
  });
 </script>
 </head>
 <body style="overflow-x: hidden;">
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" tiptype="1" action="shopCustomerController.do?doUpdate">
					<input id="id" name="id" type="hidden" value="${shopCustomerPage.id }">
					<input id="createName" name="createName" type="hidden" value="${shopCustomerPage.createName }">
					<input id="createDate" name="createDate" type="hidden" value="${shopCustomerPage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${shopCustomerPage.updateName }">
					<input id="updateDate" name="updateDate" type="hidden" value="${shopCustomerPage.updateDate }">
					<input id="accountid" name="accountid" type="hidden" value="${shopCustomerPage.accountid }">
	<table cellpadding="0" cellspacing="1" class="formtable">
		<tr>
			<td align="right">
				<label class="Validform_label">微信昵称:</label>
			</td>
			<td class="value">
		     	 <input id="nickname" name="nickname" type="text" style="width: 150px" class="inputxt"  
					               
					                value='${shopCustomerPage.nickname}'>
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">微信昵称</label>
			</td>
			<td align="right">
				<label class="Validform_label">微信用户唯一标识:</label>
			</td>
			<td class="value">
		     	 <input id="openid" name="openid" type="text" style="width: 150px" class="inputxt"  
					               
					                value='${shopCustomerPage.openid}'>
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">微信用户唯一标识</label>
			</td>
		</tr>
		<tr>
			<td align="right">
				<label class="Validform_label">头像链接:</label>
			</td>
			<td class="value">
		     	 <input id="headimgurl" name="headimgurl" type="text" style="width: 150px" class="inputxt"  
					               
					                value='${shopCustomerPage.headimgurl}'>
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">头像链接</label>
			</td>
			<td align="right">
				<label class="Validform_label">原始ID冗余:</label>
			</td>
			<td class="value">
		     	 <input id="weixinAccountid" name="weixinAccountid" type="text" style="width: 150px" class="inputxt"  
					               
					                value='${shopCustomerPage.weixinAccountid}'>
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">原始ID冗余</label>
			</td>
		</tr>
			</table>
			<div style="width: auto;height: 200px;">
				<%-- 增加一个div，用于调节页面大小，否则默认太小 --%>
				<div style="width:800px;height:1px;"></div>
				<t:tabs id="tt" iframe="false" tabPosition="top" fit="false">
				 <t:tab href="shopCustomerController.do?shopLoveList&id=${shopCustomerPage.id}" icon="icon-search" title="用户收藏" id="shopLove"></t:tab>
				 <t:tab href="shopCustomerController.do?shopDiscussList&id=${shopCustomerPage.id}" icon="icon-search" title="用户评论" id="shopDiscuss"></t:tab>
				</t:tabs>
			</div>
			</t:formvalid>
			<!-- 添加 附表明细 模版 -->
		<table style="display:none">
		<tbody id="add_shopLove_table_template">
			<tr>
			 <td align="center"><div style="width: 25px;" name="xh"></div></td>
			 <td align="center"><input style="width:20px;" type="checkbox" name="ck"/></td>
				  <td align="left">
					  	<input name="shopLoveList[#index#].idGoods" maxlength="36" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">商品ID</label>
				  </td>
				  <td align="left">
					  	<input name="shopLoveList[#index#].idCustomer" maxlength="36" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">买家ID</label>
				  </td>
			</tr>
		 </tbody>
		<tbody id="add_shopDiscuss_table_template">
			<tr>
			 <td align="center"><div style="width: 25px;" name="xh"></div></td>
			 <td align="center"><input style="width:20px;" type="checkbox" name="ck"/></td>
				  <td align="left">
					  	<input name="shopDiscussList[#index#].level" maxlength="12" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">评论级别</label>
				  </td>
				  <td align="left">
					  	<input name="shopDiscussList[#index#].content" maxlength="5000" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">评论内容</label>
				  </td>
				  <td align="left">
					  	<input name="shopDiscussList[#index#].idCustomer" maxlength="36" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">买家ID</label>
				  </td>
				  <td align="left">
					  	<input name="shopDiscussList[#index#].idGoods" maxlength="36" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">商品ID</label>
				  </td>
			</tr>
		 </tbody>
		</table>
 </body>
 <script src = "webpage/weixin/shop/customer/shopCustomer.js"></script>	