<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="mshopOrderList" checkbox="true" fitColumns="false" title="订单列表" actionUrl="mshopOrderController.do?datagridShop" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改人名称"  field="updateName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改日期"  field="updateDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="客户ID"  field="idCustomer"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="店铺ID"  field="idStore"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="微信账号ID"  field="accountid"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="原始ID"  field="weixinAccountid"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="订单商品ID"  field="idOrderGoods"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="快递名称"  field="expressName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="运单号"  field="expressNum"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   
   <t:dgCol title="订单号"  query="true" field="code"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="微信昵称"  query="true" field="nickname"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="期望送达时间"  field="receiveTime"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="收件人" query="true" field="receiverName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="状态"  query="true" replace="待付款_0,待发货_1,待收货_2,待评价_3,已完成_4" field="status"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="收件人手机号"  field="phone"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="地址"  field="address"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="买家留言"  field="message"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   
   <t:dgCol title="总商品数"  field="totalCount"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="总价格(含邮费)"  field="totalPrice"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="邮费"  field="freight"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="配送方式" replace="快递配送_0,到店消费_1"  field="distributionMode"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="下单时间"  formatter="yyyy-MM-dd hh:mm:ss" query="true" extend="{class:{value:'easyui-datebox'}}"  field="createDate"  hidden="true"  queryMode="group"  width="140"></t:dgCol>
   	<t:dgCol title="操作" field="opt" width="200"></t:dgCol>
   	<t:dgDefOpt exp="status#eq#1&&distributionMode#eq#1" title="确认到到店消费"  url="mshopOrderController.do?confirmToStore&orderId={id}"></t:dgDefOpt>
   <t:dgDefOpt exp="status#eq#1&&distributionMode#eq#0" title="确认发货"  url="mshopOrderController.do?confirmSend&orderId={id}"></t:dgDefOpt>
   
   
   <t:dgToolBar title="查看" icon="icon-search" url="mshopOrderController.do?goView" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/weixin/mshop/order/mshopOrderList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
//导出
function ExportXls() {
	JeecgExcelExport("mshopOrderController.do?exportXls","mshopOrderList");
}
 </script>