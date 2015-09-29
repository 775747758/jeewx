<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>微商城广告</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="shopAdvertisementController.do?doUpdate" tiptype="1">
					<input id="id" name="id" type="hidden" value="${shopAdvertisementPage.id }">
					<input id="createName" name="createName" type="hidden" value="${shopAdvertisementPage.createName }">
					<input id="createDate" name="createDate" type="hidden" value="${shopAdvertisementPage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${shopAdvertisementPage.updateName }">
					<input id="updateDate" name="updateDate" type="hidden" value="${shopAdvertisementPage.updateDate }">
					<input id="accountid" name="accountid" type="hidden" value="${shopAdvertisementPage.accountid }">
					<input id="weixinAccountid" name="weixinAccountid" type="hidden" value="${shopAdvertisementPage.weixinAccountid }">
					<input id="idGood" name="idGood" type="hidden" value="${shopAdvertisementPage.idGood }">
					<input id="goodName" name="goodName" type="hidden" value="${shopAdvertisementPage.goodName }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								广告标题:
							</label>
						</td>
						<td class="value">
						     	 <input id="title" name="title" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${shopAdvertisementPage.title}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">广告标题</label>
						</td>
					<tr>
						<td align="right">
							<label class="Validform_label">
								图片链接:
							</label>
						</td>
						<td class="value">
									  <input type="hidden" id="imgurl" name="imgurl" value='${shopAdvertisementPage.imgurl}'/>
										<c:if test="${empty shopAdvertisementPage.imgurl}">
											<a   target="_blank" id="imgurl_href">暂时未上传文件</a>
										</c:if>
										<c:if test="${!empty shopAdvertisementPage.imgurl}">
											<a href="${shopAdvertisementPage.imgurl}"  target="_blank" id="imgurl_href" href="${shopAdvertisementPage.imgurl}">下载</a>
										</c:if>
									   <input class="ui-button" type="button" value="上传附件"
													onclick="commonUpload(imgurlCallback)"/>
						      			<script type="text/javascript">
											function imgurlCallback(url,name){
												$("#imgurl_href").attr('href',url).html('下载');
												$("#imgurl").val(url);
											}
										</script>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">图片链接</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								图片大小类别:
							</label>
						</td>
						<td class="value">
									<t:dictSelect field="type" type="list"
										typeGroupCode="" defaultVal="${shopAdvertisementPage.type}" hasLabel="false"  title="图片大小类别"></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">图片大小类别</label>
						</td>
				<td align="right">
					<label class="Validform_label">
					</label>
				</td>
				<td class="value">
				</td>
					</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/weixin/shop/advertisement/shopAdvertisement.js"></script>		