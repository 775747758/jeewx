<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="weixinDispatchList" checkbox="true" fitColumns="false" title="配送" actionUrl="weixinDispatchController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改人名称"  field="updateName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改日期"  field="updateDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="微信账号ID"  field="accountid"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   
   <t:dgCol title="运费"  field="expressPrice"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="包邮限制"  field="limitMoney"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   
   <t:dgToolBar title="编辑" icon="icon-edit" url="weixinDispatchController.do?goUpdate" funname="update"></t:dgToolBar>
    <%--
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="weixinDispatchController.do?doDel&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="weixinDispatchController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="weixinDispatchController.do?goUpdate" funname="detail"></t:dgToolBar> --%>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/weixin/mshop/dispatch/weixinDispatchList.js"></script>	
