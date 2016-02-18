<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>商品分类</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="mshopGoodtypeController.do?doAdd" tiptype="1">
					<input id="id" name="id" type="hidden" value="${mshopGoodtypePage.id }">
					<input id="createName" name="createName" type="hidden" value="${mshopGoodtypePage.createName }">
					<input id="createDate" name="createDate" type="hidden" value="${mshopGoodtypePage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${mshopGoodtypePage.updateName }">
					<input id="updateDate" name="updateDate" type="hidden" value="${mshopGoodtypePage.updateDate }">
					<input id="id_store" name="id_store" type="hidden" value="${mshopGoodtypePage.id_store }">
					<input id="parentid" name="parentid" type="hidden" value="${mshopGoodtypePage.parentid }">
					<input id="imgurl" name="imgurl" type="hidden" value="${mshopGoodtypePage.imgurl }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							分类名称:
						</label>
					</td>
					<td class="value">
					     	 <input id="name" name="name" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">分类名称</label>
						</td>
				</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/weixin/mshop/goodtype/mshopGoodtype.js"></script>		