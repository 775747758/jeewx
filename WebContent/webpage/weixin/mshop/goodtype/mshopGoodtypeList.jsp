<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="mshopGoodtypeList" checkbox="true" fitColumns="false" title="商品分类列表" actionUrl="mshopGoodtypeController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改人名称"  field="updateName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改日期"  field="updateDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="分类名称"  field="name"  hidden="true" query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="所属店铺ID"  field="id_store"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="父分类ID"  field="parentid"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="图片链接"  field="imgurl"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除"   url="mshopGoodtypeController.do?doDel&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="mshopGoodtypeController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="mshopGoodtypeController.do?goUpdate" funname="update"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/weixin/mshop/goodtype/mshopGoodtypeList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'mshopGoodtypeController.do?upload', "mshopGoodtypeList");
}

//导出
function ExportXls() {
	JeecgExcelExport("mshopGoodtypeController.do?exportXls","mshopGoodtypeList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("mshopGoodtypeController.do?exportXlsByT","mshopGoodtypeList");
}
 </script>