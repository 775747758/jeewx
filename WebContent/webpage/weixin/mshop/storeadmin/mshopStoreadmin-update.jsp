<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>店铺管理员</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="mshopStoreadminController.do?doUpdate" tiptype="1">
					<input id="id" name="id" type="hidden" value="${mshopStoreadminPage.id }">
					<input id="createName" name="createName" type="hidden" value="${mshopStoreadminPage.createName }">
					<input id="createDate" name="createDate" type="hidden" value="${mshopStoreadminPage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${mshopStoreadminPage.updateName }">
					<input id="updateDate" name="updateDate" type="hidden" value="${mshopStoreadminPage.updateDate }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								用户唯一标识:
							</label>
						</td>
						<td class="value">
						     	 <input id="openid" name="openid" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${mshopStoreadminPage.openid}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">用户唯一标识</label>
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
									               
									                 value='${mshopStoreadminPage.idStore}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">店铺ID</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								姓名:
							</label>
						</td>
						<td class="value">
						     	 <input id="name" name="name" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${mshopStoreadminPage.name}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">姓名</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								是否是总店:
							</label>
						</td>
						<td class="value">
						     	 <input id="isHead" name="isHead" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${mshopStoreadminPage.isHead}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">是否是总店</label>
						</td>
					</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/weixin/mshop/storeadmin/mshopStoreadmin.js"></script>		