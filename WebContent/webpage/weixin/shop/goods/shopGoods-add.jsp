<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>微信商城商品信息</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <link type="text/css" rel="stylesheet" href="plug-in/weixin/css/appmsg_edit.css" />
  <link type="text/css" rel="stylesheet" href="plug-in/weixin/css/jquery.fileupload.css" />
  <link type="text/css" rel="stylesheet" href="plug-in/bootstrap/css/bootstrap.min.css" />
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  
  <!--fileupload-->
  <script type="text/javascript" src="plug-in/weixin/js/vendor/jquery.ui.widget.js"></script>
  <script type="text/javascript" src="plug-in/weixin/js/load-image.min.js"></script>
  <script type="text/javascript" src="plug-in/weixin/js/jquery.fileupload.js"></script>
  <script type="text/javascript" src="plug-in/weixin/js/jquery.fileupload-process.js"></script>
  <script type="text/javascript" src="plug-in/weixin/js/jquery.fileupload-image.js"></script>
  <script type="text/javascript" src="plug-in/weixin/js/jquery.iframe-transport.js"></script>
  <!--UEditor-->
  <script type="text/javascript"  charset="utf-8" src="plug-in/ueditor/ueditor.config.js"></script>
  <script type="text/javascript"  charset="utf-8" src="plug-in/ueditor/ueditor.all.min.js"></script>
    
  <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
  <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
  <script type="text/javascript" charset="utf-8" src="plug-in/ueditor/lang/zh-cn/zh-cn.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="shopGoodsController.do?doAdd" tiptype="1">
					<input id="id" name="id" type="hidden" value="${shopGoodsPage.id }">
					<input id="createName" name="createName" type="hidden" value="${shopGoodsPage.createName }">
					<input id="createDate" name="createDate" type="hidden" value="${shopGoodsPage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${shopGoodsPage.updateName }">
					<input id="updateDate" name="updateDate" type="hidden" value="${shopGoodsPage.updateDate }">
					<input id="discussCount" name="discussCount" type="hidden" value="${shopGoodsPage.discussCount }">
					<input id="goodCount" name="goodCount" type="hidden" value="${shopGoodsPage.goodCount }">
					<input id="badCount" name="badCount" type="hidden" value="${shopGoodsPage.badCount }">
					<input id="neutralCount" name="neutralCount" type="hidden" value="${shopGoodsPage.neutralCount }">
					<input id="statement" name="statement" type="hidden" value="${shopGoodsPage.statement }">
					<input id="removeTime" name="removeTime" type="hidden" value="${shopGoodsPage.removeTime }">
					<input id="shelveTime" name="shelveTime" type="hidden" value="${shopGoodsPage.shelveTime }">
					<input id="accountid" name="accountid" type="hidden" value="${shopGoodsPage.accountid }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							商品名称:
						</label>
					</td>
					<td class="value">
					     	 <input id="name" name="name" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">商品名称</label>
						</td>
				<tr>
					<td align="right">
						<label class="Validform_label">
							商品图片链接:
						</label>
					</td>
					<td class="value">
					     	 <input id="imgurl" name="imgurl" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">商品图片链接</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							商品详情:
						</label>
					</td>
					<td class="value">
					     	 <input id="descriptions" name="descriptions" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">商品详情</label>
						</td>
				<tr>
					<td align="right">
						<label class="Validform_label">
							商品原价:
						</label>
					</td>
					<td class="value">
					     	 <input id="originalPrice" name="originalPrice" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">商品原价</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							商品现价:
						</label>
					</td>
					<td class="value">
					     	 <input id="realPrice" name="realPrice" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">商品现价</label>
						</td>
				<tr>
					<td align="right">
						<label class="Validform_label">
							折扣:
						</label>
					</td>
					<td class="value">
					     	 <input id="sale" name="sale" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">折扣</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							销售数量:
						</label>
					</td>
					<td class="value">
					     	 <input id="sellCount" name="sellCount" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">销售数量</label>
						</td>
				<tr>
					<td align="right">
						<label class="Validform_label">
							快递费用:
						</label>
					</td>
					<td class="value">
					     	 <input id="expressPrice" name="expressPrice" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">快递费用</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							所属类别:
						</label>
					</td>
					<td class="value">
							  <t:dictSelect field="idCategory" type="list"
									dictTable="weixin_shop_category" dictField="id" dictText="name" defaultVal="${shopGoodsPage.idCategory}" hasLabel="false"  title="所属类别"></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">所属类别</label>
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
  <script src = "webpage/weixin/shop/goods/shopGoods.js"></script>		