<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>店铺</title>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
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
<script type="text/javascript" charset="utf-8" src="plug-in/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="plug-in/ueditor/ueditor.all.min.js"></script>

<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8" src="plug-in/ueditor/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">
	//编写自定义JS代码
	/*jslint unparam: true, regexp: true */
	/*global window, $ */
	//用于计算文件序号
	var index = 0;
	$(function() {
		'use strict';
		// Change this to the location of your server-side upload handler:
		var url = 'mshopStoreController.do?upload', uploadButton = $(
				'<button/>').addClass('btn btn-primary').prop('disabled', true)
				.text('上传中...').on('click', function() {
					var $this = $(this), data = $this.data();
					$this.off('click').text('正在上传...').on('click', function() {
						$this.remove();
						data.abort();
					});
					data.submit().always(function() {
						$this.remove();
					});
				});
		$('#fileupload')
				.fileupload(
						{
							url : url,
							dataType : 'json',
							autoUpload : false,
							acceptFileTypes : /(\.|\/)(gif|jpe?g|png)$/i,
							maxFileSize : 2000000, // 2 MB
							disableImageResize : /Android(?!.*Chrome)|Opera/
									.test(window.navigator.userAgent),
							previewMaxWidth : 290,
							previewMaxHeight : 160,
							previewCrop : true
						})
				.on(
						'fileuploadadd',
						function(e, data) {
							$("#files").text("");
							data.context = $('<div/>').appendTo('#files');
							$.each(data.files, function(index, file) {
								//var node = $('<p/>').append($('<span/>').text(file.name));
								//fileupload
								var node = $('<p/>');
								if (!index) {
									node.append('<br>')
											.append(
													uploadButton.clone(true)
															.data(data));
								}
								node.appendTo(data.context);
							});
						})
				.on(
						'fileuploadprocessalways',
						function(e, data) {
							var index = data.index, file = data.files[index], node = $(data.context
									.children()[index]);
							if (file.preview) {
								node.prepend('<br>').prepend(file.preview);
							}
							if (file.error) {
								node.append('<br>').append(
										$('<span class="text-danger"/>').text(
												file.error));
							}
							if (index + 1 === data.files.length) {
								data.context.find('button').text('上传').prop(
										'disabled', !!data.files.error);
							}
						}).on(
						'fileuploadprogressall',
						function(e, data) {
							var progress = parseInt(data.loaded / data.total
									* 100, 10);
							$('#progress .progress-bar').css('width',
									progress + '%');
						}).on(
						'fileuploaddone',
						function(e, data) {
							console.info(data);
							var file = data.files[0];
							//var delUrl = "<a class=\"js_removeCover\" onclick=\"return false;\" href=\"javascript:void(0);\">删除</a>";
							$("#imgName").text("").append(file.name);
							$("#imageName").val(file.name);
							$("#progress").hide();
							var d = data.result;
							if (d.success) {
								var link = $('<a>').attr('target', '_blank')
										.prop('href', d.attributes.viewhref);
								$(data.context.children()[0]).wrap(link);
								console.info(d.attributes.viewhref);
								$("#imgurl").val(d.attributes.url);
							} else {
								var error = $('<span class="text-danger"/>')
										.text(d.msg);
								$(data.context.children()[0]).append('<br>')
										.append(error);
							}
						}).on(
						'fileuploadfail',
						function(e, data) {
							$.each(data.files, function(index, file) {
								var error = $('<span class="text-danger"/>')
										.text('File upload failed.');
								$(data.context.children()[index])
										.append('<br>').append(error);
							});
						}).prop('disabled', !$.support.fileInput).parent()
				.addClass($.support.fileInput ? undefined : 'disabled');

		//编辑时初始化图片预览
		var name = "${mshopStorePage.storeName }", imageHref = "${mshopStorePage.imgurl}";
		if (name != "") {
			$("#imageTitle").html(name);
		}
		if (imageHref != "") {
			$("#imageShow")
					.html(
							'<img src="${mshopStorePage.imgurl}" width="100%" height="160" />');
		}
	});
	function setimageTitle(obj) {
		$("#imageTitle").html($(obj).val());
	}
</script>
</head>
<body>
	<div class="main_bd">
		<div class="media_preview_area">
			<div class="appmsg editing">
				<div class="appmsg_content" id="js_appmsg_preview">
					<h4 class="appmsg_title">
						<a target="_blank" href="javascript:void(0);" onclick="return false;" id="imageTitle">标题</a>
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
				<div class="my_inner">
					<t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="mshopStoreController.do?doSaveOrUpdate" tiptype="1">
						<input id="id" name="id" type="hidden" value="${mshopStorePage.id }">
						<input id="createName" name="createName" type="hidden" value="${mshopStorePage.createName }">
						<input id="updateName" name="updateName" type="hidden" value="${mshopStorePage.updateName }">
						<input id="status" name="status" type="hidden" value="${mshopStorePage.status }">
						<input id="accountid" name="accountid" type="hidden" value="${mshopStorePage.accountid }">
						<input id="weixinAccountid" name="weixinAccountid" type="hidden" value="${mshopStorePage.weixinAccountid }">
						<input id="idUser" name="idUser" type="hidden" value="${mshopStorePage.idUser }">
						<c:if test="${funname =='update' }">
							<input id="password" name="password" type="hidden" value="${mshopStorePage.password }">
						</c:if>
						<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
							<tr>
								<td align="right"><label class="Validform_label"> 店铺名称: </label></td>
								<td class="value"><input id="storeName" name="storeName" value='${mshopStorePage.storeName}' datatype="s2-10" type="text" style="width: 150px" class="inputxt"> <span class="Validform_checktip"></span> <label class="Validform_label" style="display: none;">店铺名称</label></td>
							</tr>

							<tr>
								<td align="right" width="15%" nowrap><label class="Validform_label"> 用户名: </label></td>
								<td class="value" width="85%"><c:if test="${mshopStorePage.id!=null }">
										<input id="username" class="inputxt" name="username" readonly="true" value="${mshopStorePage.username }" datatype="/^[a-zA-Z0-9]{2,10}$/" />
										<span class="Validform_checktip">用户名范围在2~10位字符</span>
									</c:if> <c:if test="${mshopStorePage.id==null }">
										<input id="username" class="inputxt" name="username" validType="t_s_base_user,username,id" value="${mshopStorePage.username }" datatype="/^[a-zA-Z0-9]{2,10}$/" />
										<span class="Validform_checktip">用户名范围在2~10位字符</span>
									</c:if></td>
							</tr>
							<c:if test="${funname =='add' }">
								<tr>
									<td align="right"><label class="Validform_label"> 密码: </label></td>
									<td class="value"><input type="password" class="inputxt" value='${mshopStorePage.password}' name="password" plugin="passwordStrength" datatype="*6-18" errormsg="" /> <span class="passwordStrength" style="display: none;"><span>弱</span><span>中</span><span class="last">强</span> </span> <span class="Validform_checktip">密码至少6个字符,最多18个字符</span></td>
								</tr>
								<tr>
									<td align="right"><label class="Validform_label"> 重复密码: </label></td>
									<td class="value"><input id="repassword" class="inputxt" value='${mshopStorePage.password}' type="password" recheck="password" datatype="*6-18" errormsg="两次输入的密码不一致！"> <span class="Validform_checktip">重复个人密码</span></td>
								</tr>
							</c:if>
							<%-- <tr>
								<td align="right"><label class="Validform_label"> 密码: </label></td>
								<td class="value"><input type="password" class="inputxt" value='${mshopStorePage.password}' name="password" plugin="passwordStrength" datatype="*6-18" errormsg="" /> <span class="passwordStrength" style="display: none;"><span>弱</span><span>中</span><span class="last">强</span> </span> <span class="Validform_checktip">密码至少6个字符,最多18个字符</span></td>
							</tr>
							<tr>
								<td align="right"><label class="Validform_label"> 重复密码: </label></td>
								<td class="value"><input id="repassword" class="inputxt" value='${mshopStorePage.password}' type="password" recheck="password" datatype="*6-18" errormsg="两次输入的密码不一致！"> <span class="Validform_checktip">重复个人密码</span></td>
							</tr> --%>

							<tr>
								<td align="right"><label class="Validform_label"> 店铺类型: </label></td>
								<td class="value"><t:dictSelect field="idType" dictTable="weixin_mshop_type" dictField="id" dictText="name" defaultVal="${mshopStorePage.idType}"></t:dictSelect> <span class="Validform_checktip"></span> <label class="Validform_label" style="display: none;">店铺类型</label></td>
							</tr>
							<tr>
								<td align="right"><label class="Validform_label"> 店铺顺序: </label></td>
								<td class="value"><input id="orders" name="orders" validType="weixin_mshop_type,name,id" type="text" style="width: 150px" datatype="n1-10" errormsg="店铺顺序不正确!请填写数字序号！" value='${mshopStorePage.orders}' class="inputxt"> <span class="Validform_checktip">请填写数字序号</span> <label class="Validform_label" style="display: none;">店铺顺序</label></td>
							</tr>
							<tr>
								<td align="right"><label class="Validform_label"> 是否推荐： </label></td>
								<td class="value"><select name="isRecommend" id="isRecommend">
										<option value='1' <c:if test="${mshopStorePage.isRecommend ==1}">selected="selected"</c:if>>是</option>
										<option value='0' <c:if test="${mshopStorePage.isRecommend ==0 or empty  mshopStorePage.isRecommend}">selected="selected"</c:if>>否</option>
								</select></td>
							</tr>
							<tr>
								<td align="right"><label class="Validform_label"> 手机号码: </label></td>
								<td class="value"><input id="mobilePhone" name="mobilePhone" type="text" style="width: 150px" datatype="m" errormsg="手机号码不正确!" value='${mshopStorePage.mobilePhone}' ignore="ignore" class="inputxt"> <span class="Validform_checktip"></span> <label class="Validform_label" style="display: none;">手机号码</label></td>
							</tr>
							<tr>
								<td align="right"><label class="Validform_label"> 电话号码: </label></td>
								<td class="value"><input id="officePhone" name="officePhone" type="text" style="width: 150px" datatype="n" errormsg="办公室电话不正确!" value='${mshopStorePage.officePhone}' ignore="ignore" class="inputxt"> <span class="Validform_checktip"></span> <label class="Validform_label" style="display: none;">电话号码</label></td>
							</tr>


							<tr>
								<td align="right"><label class="Validform_label"> 邮箱: </label></td>
								<td class="value"><input id="email" name="email" datatype="e" value='${mshopStorePage.email}' errormsg="邮箱格式不正确!" ignore="ignore" type="text" style="width: 150px" class="inputxt"> <span class="Validform_checktip"></span> <label class="Validform_label" style="display: none;">邮箱</label></td>
							</tr>

							<tr>
								<td align="right"><label class="Validform_label"> 营业开始时间: </label></td>
								<td class="value"><input class="Wdate" onClick="WdatePicker({dateFmt:'HH:mm:ss'})" style="width: 150px" id="startTime" name="startTime" value="<fmt:formatDate value='${mshopStorePage.startTime}' type="time" />"> <span class="Validform_checktip"></span></td>
							</tr>
							<tr>
								<td align="right"><label class="Validform_label"> 营业结束时间: </label></td>
								<td class="value"><input class="Wdate" onClick="WdatePicker({dateFmt:'HH:mm:ss'})" style="width: 150px" id="endTime" name="endTime" value="<fmt:formatDate value='${mshopStorePage.endTime}' type="time" />"> <span class="Validform_checktip"></span></td>
							</tr>

							<tr>
								<td align="right"><label class="Validform_label"> 店铺LOGO: </label></td>
								<td class="value"><span class="btn btn-success fileinput-button"> <i class="glyphicon glyphicon-plus"></i> <span>浏览</span> <!-- The file input field used as target for the file upload widget --> <input id="fileupload" type="file" name="files[]" multiple>
								</span> <input id="imgurl" name="imgurl" type="hidden" nullmsg="请添加图片" value="${mshopStorePage.imgurl}" datatype="*"> <span id="imgName"></span> <span class="Validform_checktip"></span> <label class="Validform_label" style="display: none;">图片链接</label></td>
							</tr>

							<%-- <tr>
								<td align="right"><label class="Validform_label">
										店铺简介: </label></td>
								<td class="value"><textarea name="descriptions"
										id="descriptions" style="width: 350px; height: 150px">${mshopStorePage.descriptions}</textarea>
									<script type="text/javascript">
										var editor = UE
												.getEditor('descriptions');
									</script></td>
							</tr> --%>
							<tr>
								<td align="right"><label class="Validform_label"> 店铺简介: </label></td>
								<td class="value"><textarea class="inputxt" id="descriptions" name="descriptions" style="width: 300px" datatype="*1-500" cols="100" rows="10">${mshopStorePage.descriptions}</textarea> <span class="Validform_checktip"></span> <label class="Validform_label" style="display: none;">店铺简介</label></td>
							</tr>


						</table>
					</t:formvalid>
				</div>
				<i class="arrow arrow_out" style="margin-top: 0px;"></i> <i class="arrow arrow_in" style="margin-top: 0px;"></i>
			</div>
		</div>
	</div>
</body>