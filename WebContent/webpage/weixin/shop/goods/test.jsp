<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>微信商城商品信息</title>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<link type="text/css" rel="stylesheet"
	href="plug-in/weixin/css/appmsg_edit.css" />
<link type="text/css" rel="stylesheet"
	href="plug-in/weixin/css/jquery.fileupload.css" />
<link type="text/css" rel="stylesheet"
	href="plug-in/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>

<!--fileupload-->
<script type="text/javascript"
	src="plug-in/weixin/js/vendor/jquery.ui.widget.js"></script>
<script type="text/javascript" src="plug-in/weixin/js/load-image.min.js"></script>
<script type="text/javascript"
	src="plug-in/weixin/js/jquery.fileupload.js"></script>
<script type="text/javascript"
	src="plug-in/weixin/js/jquery.fileupload-process.js"></script>
<script type="text/javascript"
	src="plug-in/weixin/js/jquery.fileupload-image.js"></script>
<script type="text/javascript"
	src="plug-in/weixin/js/jquery.iframe-transport.js"></script>
<!--UEditor-->
<script type="text/javascript" charset="utf-8"
	src="plug-in/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="plug-in/ueditor/ueditor.all.min.js"></script>

<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8"
	src="plug-in/ueditor/lang/zh-cn/zh-cn.js"></script>
<style>
.my_inner {
	padding: 20px;
	border: 1px solid #d3d3d3;
	background-color: #f8f8f8;
	border-radius: 3px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	box-shadow: inset 0 1px 1px 0 #fff;
	-moz-box-shadow: inset 0 1px 1px 0 #fff;
	-webkit-box-shadow: inset 0 1px 1px 0 #fff;
	min-height: 350px;
	width: 700px;
}
</style>
<script type="text/javascript">
	//编写自定义JS代码
	/*jslint unparam: true, regexp: true */
	/*global window, $ */
	//用于计算文件序号
	var index=0;
	$(function() {
		'use strict';
	      // Change this to the location of your server-side upload handler:
	      var url = 'shopGoodsController.do?upload',
	          uploadButton = $('<button/>')
	              .addClass('btn btn-primary')
	              .prop('disabled', true)
	              .text('上传中...')
	              .on('click', function () {
	                  var $this = $(this), data = $this.data();
	                  $this.off('click').text('正在上传...').on('click', function () {
	                          $this.remove();
	                          data.abort();
	                  });
	                  data.submit().always(function () {
	                      $this.remove();
	                  });
	              });
	      $('#fileupload').fileupload({
	          url: url,
	          dataType: 'json',
	          autoUpload: false,
	          acceptFileTypes: /(\.|\/)(gif|jpe?g|png)$/i,
	          maxFileSize: 2000000, // 2 MB
	          disableImageResize: /Android(?!.*Chrome)|Opera/
	              .test(window.navigator.userAgent),
	          previewMaxWidth: 290,
	          previewMaxHeight: 160,
	          previewCrop: true
	      }).on('fileuploadadd', function (e, data) {
	          $("#files").text("");
	          data.context = $('<div/>').appendTo('#files');
	          $.each(data.files, function (index, file) {
	              //var node = $('<p/>').append($('<span/>').text(file.name));
	              //fileupload
	              var node = $('<p/>');
	              if (!index) {
	                  node.append('<br>').append(uploadButton.clone(true).data(data));
	              }
	              node.appendTo(data.context);
	          });
	      }).on('fileuploadprocessalways', function (e, data) {
	          var index = data.index,
	              file = data.files[index],
	              node = $(data.context.children()[index]);
	          if (file.preview) {
	              node.prepend('<br>').prepend(file.preview);
	          }
	          if (file.error) {
	              node
	                  .append('<br>')
	                  .append($('<span class="text-danger"/>').text(file.error));
	          }
	          if (index + 1 === data.files.length) {
	              data.context.find('button')
	                  .text('上传')
	                  .prop('disabled', !!data.files.error);
	          }
	      }).on('fileuploadprogressall', function (e, data) {
	          var progress = parseInt(data.loaded / data.total * 100, 10);
	          $('#progress .progress-bar').css(
	              'width',
	              progress + '%'
	          );
	      }).on('fileuploaddone', function (e, data) {
	          console.info(data);
	          var  file = data.files[0];
	          //var delUrl = "<a class=\"js_removeCover\" onclick=\"return false;\" href=\"javascript:void(0);\">删除</a>";
	          $("#imgName").text("").append(file.name);
	          $("#imageName").val(file.name);
	          $("#progress").hide();
	  		var d =data.result;
	  		if (d.success) {
	  			var link = $('<a>').attr('target', '_blank').prop('href', d.attributes.viewhref);
	          	$(data.context.children()[0]).wrap(link);
	          	console.info(d.attributes.viewhref);
	          	$("#imgurl").val(d.attributes.url);
	  		}else{
	  			var error = $('<span class="text-danger"/>').text(d.msg);
	              $(data.context.children()[0]).append('<br>').append(error);
	  		}
	      }).on('fileuploadfail', function (e, data) {
	          $.each(data.files, function (index, file) {
	              var error = $('<span class="text-danger"/>').text('File upload failed.');
	              $(data.context.children()[index])
	                  .append('<br>')
	                  .append(error);
	          });
	      }).prop('disabled', !$.support.fileInput)
	          .parent().addClass($.support.fileInput ? undefined : 'disabled');

		//编辑时初始化图片预览
		var name = "${shopGoodsPage.name}", imageHref = "${shopGoodsPage.imgurl}";
		if (name != "") {
			$("#imageTitle").html(name);
		}
		if (imageHref != "") {
			$("#imageShow")
					.html(
							'<img src="${shopGoodsPage.imgurl}" width="100%" height="160" />');
		}
	});
	function setimageTitle(obj) {
		$("#imageTitle").html($(obj).val());
	}
	function updateSale(obj){
		var originalPrice=$("#originalPrice").attr("value").trim();
		var realPrice=$("#realPrice").attr("value").trim();
		//当原价小于现价时，强制重新输入
		if(originalPrice!=""&&realPrice!=""&&Number(originalPrice)<=Number(realPrice)){
			$(obj).val("");
			$("#sale").val("");
			$.messager.show({
				title : '提示消息',
				msg : '现价不能大于原价',
				timeout : 2000,
				showType : 'slide'
			});
		}
		//只有当原价大于现价时才设置折扣
		if(originalPrice!=""&&realPrice!=""&&Number(originalPrice)>Number(realPrice)){
			var sale=Number(realPrice)/Number(originalPrice);
			$("#sale").attr("value",sale.toFixed(2));
		}
		
	}
</script>
</head>
<body>
	<div class="main_bd">
		<div class="media_preview_area">
			<div class="appmsg editing">
				<div class="appmsg_content" id="js_appmsg_preview">
					<h4 class="appmsg_title">
						<a target="_blank" href="javascript:void(0);"
							onclick="return false;" id="imageTitle">标题</a>
					</h4>
					<div class="appmsg_info">
						<em class="appmsg_date"></em>
					</div>
					<div id="files" class="files">
						<i class="appmsg_thumb default" id="imageShow">栏目图片</i>
					</div>
					<div id="progress" class="progress">
						<div class="progress-bar progress-bar-success"></div>
					</div>
					<p class="appmsg_desc"></p>
				</div>
			</div>
		</div>
		<div class="media_edit_area" id="js_appmsg_editor">
			<div class="appmsg_editor" style="margin-top: 0px;">
				<div class="my_inner" >
					<t:formvalid formid="formobj" dialog="true" usePlugin="password"
						layout="table" action="shopGoodsController.do?doAddOrUpdate">
						<input id="id" name="id" type="hidden"
							value="${shopGoodsPage.id }">
						<input id="createName" name="createName" type="hidden"
							value="${shopGoodsPage.createName }">
						<input id="createDate" name="createDate" type="hidden"
							value="${shopGoodsPage.createDate }">
						<input id="updateName" name="updateName" type="hidden"
							value="${shopGoodsPage.updateName }">
						<input id="updateDate" name="updateDate" type="hidden"
							value="${shopGoodsPage.updateDate }">
						<input id="discussCount" name="discussCount" type="hidden"
							value="${shopGoodsPage.discussCount }">
						<input id="goodCount" name="goodCount" type="hidden"
							value="${shopGoodsPage.goodCount }">
						<input id="badCount" name="badCount" type="hidden"
							value="${shopGoodsPage.badCount }">
						<input id="neutralCount" name="neutralCount" type="hidden"
							value="${shopGoodsPage.neutralCount }">
						<input id="statement" name="statement" type="hidden"
							value="${shopGoodsPage.statement }">
						<input id="removeTime" name="removeTime" type="hidden"
							value="${shopGoodsPage.removeTime }">
						<input id="shelveTime" name="shelveTime" type="hidden"
							value="${shopGoodsPage.shelveTime }">
						<input id="accountid" name="accountid" type="hidden"
							value="${shopGoodsPage.accountid }">
						<table cellpadding="0" cellspacing="1" class="formtable">
							<tr>
								<td align="right"><label class="Validform_label">
										商品名称: </label></td>
								<td class="value"><input class="inputxt" id="name"
									name="name" style="width: 300px" value="${shopGoodsPage.name}"
									datatype="*1-30" onblur="setimageTitle(this)"> <span
									class="Validform_checktip"></span> <label
									class="Validform_label" style="display: none;">商品名称</label></td>
							</tr>
							<tr>
								<td align="right"><label class="Validform_label">
										商品原价: </label></td>
								<td class="value"><input class="inputxt" id="originalPrice"
									name="originalPrice" style="width: 300px"
									oninput="updateSale(this)"
									value="${shopGoodsPage.originalPrice}" datatype="/^(([1-9]{1,10})|([0-9]{1,10}\.[0-9]{1,2}))$/"
									> <span
									class="Validform_checktip"></span> <label
									class="Validform_label" style="display: none;">商品原价</label></td>
							</tr>
							<tr>
								<td align="right"><label class="Validform_label">
										商品现价: </label></td>
								<td class="value"><input class="inputxt" id="realPrice"
									name="realPrice" style="width: 300px"
									oninput="updateSale(this)"
									value="${shopGoodsPage.realPrice}" datatype="/^(([1-9]{1,10})|([0-9]{1,10}\.[0-9]{1,2}))$/"
									> <span
									class="Validform_checktip"></span> <label
									class="Validform_label" style="display: none;">商品现价</label></td>
							</tr>
							<tr>
								<td align="right"><label class="Validform_label">
										折扣: </label></td>
								<td class="value"><input class="inputxt" id="sale"
									name="sale" style="width: 300px" value="${shopGoodsPage.sale}"
									readonly="true"
									> <span
									class="Validform_checktip"></span> <label
									class="Validform_label" style="display: none;">折扣</label></td>
							</tr>
							<tr>
								<td align="right"><label class="Validform_label">
										快递费用: </label></td>
								<td class="value"><input class="inputxt" id="expressPrice"
									name="expressPrice" style="width: 300px"
									value="${shopGoodsPage.expressPrice}" datatype="n1-10"
									> <span
									class="Validform_checktip"></span> <label
									class="Validform_label" style="display: none;">快递费用</label></td>
							</tr>
							<tr>
								<td align="right"><label class="Validform_label">
										所属类别: </label></td>
								<td class="value"><t:dictSelect field="idCategory"
										type="list" dictTable="weixin_shop_category" dictField="id"
										dictText="name" 
										hasLabel="false" title="所属类别"></t:dictSelect> <span
									class="Validform_checktip"></span> <label
									class="Validform_label" style="display: none;">所属类别</label></td>
								<td align="right"><label class="Validform_label"> </label>
								</td>
								<td class="value"></td>
							</tr>
							<tr>
							<td align="right">
								<label class="Validform_label">
									上传图片:
								</label>
							</td>
							<td class="value">
								<span class="btn btn-success fileinput-button">
							        <i class="glyphicon glyphicon-plus"></i>
							        <span>浏览</span>
							        <!-- The file input field used as target for the file upload widget -->
							        <input id="fileupload" type="file" name="files[]" multiple>
							    </span>
							    <input id="imgurl" name="imgurl" type="hidden" nullmsg="请添加图片" value="${shopGoodsPage.imgurl}">
							    <span id="imgName"></span> 
								<span class="Validform_checktip"></span>
								<label class="Validform_label" style="display: none;">图片链接</label>
							</td>
						</tr>
							<tr>
								<td align="right"><label class="Validform_label">
										商品详情: </label></td>
								<td class="value"><textarea name="descriptions"
										id="descriptions" style="width: 350px; height: 150px">${shopGoodsPage.descriptions}</textarea>
									<script type="text/javascript">
										var editor = UE.getEditor('descriptions');
									</script></td>
							</tr>
						
						</table>
					</t:formvalid>
				</div>
				<i class="arrow arrow_out" style="margin-top: 0px;"></i> <i
					class="arrow arrow_in" style="margin-top: 0px;"></i>
			</div>
		</div>
	</div>
</body>