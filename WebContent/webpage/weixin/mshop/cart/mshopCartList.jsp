<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="mshopCartList" checkbox="true" fitColumns="false" title="购物车" actionUrl="mshopCartController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改人名称"  field="updateName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改日期"  field="updateDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="商品数量"  field="count"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="商品名称"  field="goodsName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="商品价格"  field="price"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="商品ID"  field="idGoods"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="客户表"  field="idCustomer"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="规格"  field="spec"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="商店ID"  field="idStore"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="商品图片"  field="imgurl"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="mshopCartController.do?doDel&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="mshopCartController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="mshopCartController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="mshopCartController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="mshopCartController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/weixin/mshop/cart/mshopCartList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'mshopCartController.do?upload', "mshopCartList");
}

//导出
function ExportXls() {
	JeecgExcelExport("mshopCartController.do?exportXls","mshopCartList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("mshopCartController.do?exportXlsByT","mshopCartList");
}
 </script>