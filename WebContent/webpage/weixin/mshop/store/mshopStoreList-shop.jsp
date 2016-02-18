<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="mshopStoreList" checkbox="true" fitColumns="false" title="店铺列表" actionUrl="mshopStoreController.do?datagridShop" idField="id" fit="true" >
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改人名称"  field="updateName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改日期"  field="updateDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="用户名"  query="false" field="username"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="密码"  field="password"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="店铺顺序"  field="orders"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   
   <t:dgCol title="店铺名称"  field="storeName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="类别"  field="idType"  hidden="true"  queryMode="single" dictionary="weixin_mshop_type,id,name" width="120"></t:dgCol>
   <t:dgCol title="推荐店铺" replace="是_1,否_0"  field="isRecommend"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="手机号码"  field="mobilePhone"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="电话号码"  field="officePhone"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="邮箱"  field="email"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="店铺状态" replace="正常_1,暂停营业_0"  field="status"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="营业开始时间"  formatter="hh:mm:ss" field="startTime"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="营业结束时间"  formatter="hh:mm:ss" field="endTime"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDefOpt exp="status#eq#1" title="暂停营业"  url="mshopStoreController.do?lockOrRecover&id={id}&funname='doLock'"></t:dgDefOpt>
   <t:dgDefOpt exp="status#eq#0" title="恢复营业"  url="mshopStoreController.do?lockOrRecover&id={id}&funname='doRecover'"></t:dgDefOpt>
   <t:dgToolBar title="编辑" icon="icon-edit" url="mshopStoreController.do?goAddOrUpdateShop" funname="update" width="1020" height="500"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="mshopStoreController.do?goAddOrUpdateShop" funname="detail" width="1020" height="500"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/weixin/mshop/store/mshopStoreList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });

 </script>