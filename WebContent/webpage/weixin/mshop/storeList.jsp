<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
<div region="center" style="padding: 1px;"><t:datagrid name="storeList" title="店铺管理" actionUrl="storeController.do?datagrid" idField="id" fit="true">
	<t:dgCol title="编号" field="id" hidden="false"></t:dgCol>
	<t:dgCol title="用户名" query="true" queryMode="single" sortable="false" field="userName" ></t:dgCol>
	<t:dgCol title="店铺名称" query="true" queryMode="single" field="realName" width="5"></t:dgCol>
	<t:dgCol title="状态" sortable="true" field="status" replace="正常_1,禁用_0,超级管理员_-1"></t:dgCol>
	<t:dgCol title="操作" field="opt" width="20"></t:dgCol>
	<t:dgDelOpt title="删除" url="storeController.do?del&id={id}&userName={userName}" />
	<t:dgDefOpt exp="status#eq#1" title="暂停营业"  url="storeController.do?lockOrRecover&id={id}&funname='doLock'"></t:dgDefOpt>
   	<t:dgDefOpt exp="status#eq#0" title="恢复营业"  url="storeController.do?lockOrRecover&id={id}&funname='doRecover'"></t:dgDefOpt>
	<t:dgToolBar title="店铺录入" icon="icon-add" url="storeController.do?addorupdate" funname="add" ></t:dgToolBar>
	<t:dgToolBar title="店铺编辑" icon="icon-edit" url="storeController.do?addorupdate" funname="update" ></t:dgToolBar>
</t:datagrid>
</div>
</div>
<script type="text/javascript">
</script>
