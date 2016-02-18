<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="countVoList" checkbox="true" fitColumns="false" title="统计信息" actionUrl="countController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="店铺ID"  field="storeId"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="日期" field="createdt" hidden="false" formatter="yyyy-MM-dd hh:mm:ss" query="true" queryMode="group" extend="{class:{value:'easyui-datebox'}}"></t:dgCol>
   <t:dgCol title="店铺名称"  field="storeName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="订单数量"  field="orderCount"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="商品数量"  field="goodsCount"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="总销售额"  field="totalPrice" replace="0_null" hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <%-- <t:dgCol title="操作" field="opt" width="100"></t:dgCol> --%>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/weixin/mshop/customer/wxMshopCustomerList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
//导出
function ExportXls() {
	JeecgExcelExport("wxMshopCustomerController.do?exportXls","wxMshopCustomerList");
}

 </script>