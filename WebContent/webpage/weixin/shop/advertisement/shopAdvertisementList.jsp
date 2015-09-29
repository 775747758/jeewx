<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="shopAdvertisementList" checkbox="true" fitColumns="false" title="微商城广告" actionUrl="shopAdvertisementController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改人名称"  field="updateName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改日期"  field="updateDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="广告标题"  field="title"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="图片链接"  field="imgurl"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="所属公众号ID"  field="accountid"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="原始ID冗余"  field="weixinAccountid"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="图片大小类别"  replace="大_1,小_2" field="type"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="链接商品"  field="idGood"  hidden="true"  queryMode="single" dictionary="weixin_shop_good,id,name" width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="shopAdvertisementController.do?doDel&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="shopAdvertisementController.do?goAdd" funname="add" width="100%" height="100%"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="shopAdvertisementController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="shopAdvertisementController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/weixin/shop/advertisement/shopAdvertisementList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'shopAdvertisementController.do?upload', "shopAdvertisementList");
}

//导出
function ExportXls() {
	JeecgExcelExport("shopAdvertisementController.do?exportXls","shopAdvertisementList");
}

 </script>