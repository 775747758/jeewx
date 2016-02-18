<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="mshopAdvertisementList" checkbox="true" fitColumns="false" title="广告管理" actionUrl="mshopAdvertisementController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改人名称"  field="updateName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改日期"  field="updateDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="图片链接"  field="imgurl"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="微信账号ID"  field="accountid"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="原始ID"  field="weixinAccountid"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   
   <t:dgCol title="标题"  field="title"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
    <t:dgCol title="链接地址"  field="url"  hidden="true"  queryMode="single"  width="400"></t:dgCol> 
   
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="mshopAdvertisementController.do?doDel&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="mshopAdvertisementController.do?goAddOrUpdate" funname="add" width="1200" height="500"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="mshopAdvertisementController.do?goAddOrUpdate" funname="update" width="1200" height="500"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="mshopAdvertisementController.do?goAddOrUpdate" funname="detail" width="1200" height="500"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/weixin/mshop/advertisement/mshopAdvertisementList.js"></script>		