<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>配送</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="weixinDispatchController.do?doAdd" tiptype="1">
					<input id="id" name="id" type="hidden" value="${weixinDispatchPage.id }">
					<input id="createName" name="createName" type="hidden" value="${weixinDispatchPage.createName }">
					<input id="createDate" name="createDate" type="hidden" value="${weixinDispatchPage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${weixinDispatchPage.updateName }">
					<input id="updateDate" name="updateDate" type="hidden" value="${weixinDispatchPage.updateDate }">
					<input id="accountid" name="accountid" type="hidden" value="${weixinDispatchPage.accountid }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							运费:
						</label>
					</td>
					<td class="value">
					     	 <input id="expressPrice" name="expressPrice" type="text"
					style="width: 150px" class="inputxt"
					datatype="/^(([1-9]{1,10})|([0-9]{1,10}\.[0-9]{1,2}))$/">
					<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">运费</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							包邮限制:
						</label>
					</td>
					<td class="value">
					     	 <input id="limitMoney" name="limitMoney" type="text" style="width: 150px" class="inputxt"  
								 datatype="/^(([1-9]{1,10})|([0-9]{1,10}\.[0-9]{1,2}))$/"              
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">包邮限制</label>
						</td>
				</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/weixin/mshop/dispatch/weixinDispatch.js"></script>		