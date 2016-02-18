<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="mshopOrderList" checkbox="true" fitColumns="false" title="订单列表" actionUrl="mshopOrderController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改人名称"  field="updateName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改日期"  field="updateDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="订单号"  field="code"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="状态"  field="status"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="地址"  field="address"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="收件人"  field="receiverName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="收件人手机号"  field="phone"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="客户ID"  field="idCustomer"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="总商品数"  field="totalCount"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="总价格 含邮费"  field="totalPrice"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="邮费"  field="freight"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="买家留言"  field="message"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="店铺ID"  field="idStore"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="微信账号ID"  field="accountid"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="原始ID"  field="weixinAccountid"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="订单商品ID"  field="idOrderGoods"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="快递名称"  field="expressName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="运单号"  field="expressNum"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="mshopOrderController.do?doDel&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="mshopOrderController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="mshopOrderController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="mshopOrderController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="mshopOrderController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/weixin/mshop/order/mshopOrderList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'mshopOrderController.do?upload', "mshopOrderList");
}

//导出
function ExportXls() {
	JeecgExcelExport("mshopOrderController.do?exportXls","mshopOrderList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("mshopOrderController.do?exportXlsByT","mshopOrderList");
}
 </script>