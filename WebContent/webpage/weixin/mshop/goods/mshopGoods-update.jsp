<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>商品</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="mshopGoodsController.do?doUpdate" tiptype="1">
					<input id="id" name="id" type="hidden" value="${mshopGoodsPage.id }">
					<input id="createName" name="createName" type="hidden" value="${mshopGoodsPage.createName }">
					<input id="createDate" name="createDate" type="hidden" value="${mshopGoodsPage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${mshopGoodsPage.updateName }">
					<input id="updateDate" name="updateDate" type="hidden" value="${mshopGoodsPage.updateDate }">
					<input id="description" name="description" type="hidden" value="${mshopGoodsPage.description }">
					<input id="originalPrice" name="originalPrice" type="hidden" value="${mshopGoodsPage.originalPrice }">
					<input id="sale" name="sale" type="hidden" value="${mshopGoodsPage.sale }">
					<input id="sellCount" name="sellCount" type="hidden" value="${mshopGoodsPage.sellCount }">
					<input id="discussCount" name="discussCount" type="hidden" value="${mshopGoodsPage.discussCount }">
					<input id="goodCount" name="goodCount" type="hidden" value="${mshopGoodsPage.goodCount }">
					<input id="badCount" name="badCount" type="hidden" value="${mshopGoodsPage.badCount }">
					<input id="neutralCount" name="neutralCount" type="hidden" value="${mshopGoodsPage.neutralCount }">
					<input id="statement" name="statement" type="hidden" value="${mshopGoodsPage.statement }">
					<input id="removeTime" name="removeTime" type="hidden" value="${mshopGoodsPage.removeTime }">
					<input id="shelveTime" name="shelveTime" type="hidden" value="${mshopGoodsPage.shelveTime }">
					<input id="idStore" name="idStore" type="hidden" value="${mshopGoodsPage.idStore }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								商品名称:
							</label>
						</td>
						<td class="value">
						     	 <input id="name" name="name" type="text" style="width: 150px" class="inputxt"  
									               datatype="*1-20"
  value='${mshopGoodsPage.name}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">商品名称</label>
						</td>
					<tr>
						<td align="right">
							<label class="Validform_label">
								图片链接:
							</label>
						</td>
						<td class="value">
									  <input type="hidden" id="imgurl" name="imgurl" value='${mshopGoodsPage.imgurl}'/>
										<c:if test="${empty mshopGoodsPage.imgurl}">
											<a   target="_blank" id="imgurl_href">暂时未上传文件</a>
										</c:if>
										<c:if test="${!empty mshopGoodsPage.imgurl}">
											<a href="${mshopGoodsPage.imgurl}"  target="_blank" id="imgurl_href" href="${mshopGoodsPage.imgurl}">下载</a>
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
								现价:
							</label>
						</td>
						<td class="value">
						     	 <input id="realPrice" name="realPrice" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${mshopGoodsPage.realPrice}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">现价</label>
						</td>
					<tr>
						<td align="right">
							<label class="Validform_label">
								所属类别:
							</label>
						</td>
						<td class="value">
									<t:dictSelect field="idCategory" type="list"
										dictTable="wx_mshop_goodtype" dictField="id" dictText="name" defaultVal="${mshopGoodsPage.idCategory}" hasLabel="false"  title="所属类别"></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">所属类别</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								是否秒杀:
							</label>
						</td>
						<td class="value">
									<t:dictSelect field="isSeckill" type="radio"
										typeGroupCode="" defaultVal="${mshopGoodsPage.isSeckill}" hasLabel="false"  title="是否秒杀"></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">是否秒杀</label>
						</td>
					<tr>
						<td align="right">
							<label class="Validform_label">
								是否特价:
							</label>
						</td>
						<td class="value">
									<t:dictSelect field="isSpecial" type="radio"
										typeGroupCode="" defaultVal="${mshopGoodsPage.isSpecial}" hasLabel="false"  title="是否特价"></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">是否特价</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								所有规格:
							</label>
						</td>
						<td class="value">
						     	 <input id="allSpecs" name="allSpecs" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${mshopGoodsPage.allSpecs}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">所有规格</label>
						</td>
					<tr>
						<td align="right">
							<label class="Validform_label">
								是否自营:
							</label>
						</td>
						<td class="value">
									<t:dictSelect field="isSelfsupport" type="radio"
										typeGroupCode="" defaultVal="${mshopGoodsPage.isSelfsupport}" hasLabel="false"  title="是否自营"></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">是否自营</label>
						</td>
					</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/weixin/mshop/goods/mshopGoods.js"></script>		