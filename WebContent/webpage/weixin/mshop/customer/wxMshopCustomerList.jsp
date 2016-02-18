<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="wxMshopCustomerList" checkbox="true" fitColumns="false" title="客户列表" actionUrl="wxMshopCustomerController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改人名称"  field="updateName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改日期"  field="updateDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="用户唯一标识"  field="openid"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="头像链接"  field="headimgurl"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="微信账号ID"  field="accountid"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="原始ID"  field="weixinAccountid"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   
   <t:dgCol title="昵称"  field="nickname"   hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="性别"  replace="男_1,女_2" field="sex"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="城市"  field="city"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="省份"  field="province"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   
   <t:dgCol title="配送地址"    field="address"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="真实姓名"  field="realName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="手机号"  field="phone"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="关注日期"  field="createDate"  hidden="true"  queryMode="single"  width="140"></t:dgCol>
   
   <%-- <t:dgCol title="操作" field="opt" width="100"></t:dgCol> --%>
   <%-- <t:dgToolBar title="查看" icon="icon-search" url="wxMshopCustomerController.do?goUpdate" funname="detail"></t:dgToolBar> --%>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/weixin/mshop/customer/wxMshopCustomerList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'wxMshopCustomerController.do?upload', "wxMshopCustomerList");
}

//导出
function ExportXls() {
	JeecgExcelExport("wxMshopCustomerController.do?exportXls","wxMshopCustomerList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("wxMshopCustomerController.do?exportXlsByT","wxMshopCustomerList");
}
 </script>