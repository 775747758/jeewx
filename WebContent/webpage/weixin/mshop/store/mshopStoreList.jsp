<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
	<div region="center" style="padding: 1px;">
		<t:datagrid name="mshopStoreList" checkbox="true" fitColumns="false" title="店铺列表" actionUrl="mshopStoreController.do?datagrid" idField="id" fit="true">
			<t:dgCol title="主键" field="id" hidden="false" queryMode="single" width="120"></t:dgCol>
			<t:dgCol title="创建人名称" field="createName" hidden="false" queryMode="single" width="120"></t:dgCol>
			<t:dgCol title="创建日期" field="createDate" hidden="false" queryMode="single" width="120"></t:dgCol>
			<t:dgCol title="修改人名称" field="updateName" hidden="false" queryMode="single" width="120"></t:dgCol>
			<t:dgCol title="修改日期" field="updateDate" hidden="false" queryMode="single" width="120"></t:dgCol>
			<t:dgCol title="店铺名称" query="true" field="storeName" hidden="true" queryMode="single" width="120"></t:dgCol>
			<t:dgCol title="类别" field="idType" hidden="true" queryMode="single" dictionary="weixin_mshop_type,id,name" width="80"></t:dgCol>
			<t:dgCol title="推荐店铺" replace="是_1,否_0" field="isRecommend" hidden="true" queryMode="single" width="60"></t:dgCol>
			<t:dgCol title="用户名" query="true" field="username" hidden="true" queryMode="single" width="120"></t:dgCol>
			<t:dgCol title="密码" field="password" hidden="true" queryMode="single" width="120"></t:dgCol>
			<t:dgCol title="手机号码" field="mobilePhone" hidden="true" queryMode="single" width="100"></t:dgCol>
			<t:dgCol title="电话号码" field="officePhone" hidden="true" queryMode="single" width="80"></t:dgCol>
			<t:dgCol title="邮箱" field="email" hidden="true" queryMode="single" width="120"></t:dgCol>
			<t:dgCol title="店铺状态" replace="正常_1,禁用_0" field="status" hidden="true" queryMode="single" width="70"></t:dgCol>
			<t:dgCol title="店铺顺序" field="orders" hidden="true" queryMode="single" width="70"></t:dgCol>
			<t:dgCol title="营业开始时间" formatter="hh:mm:ss" field="startTime" hidden="true" queryMode="single" width="100"></t:dgCol>
			<t:dgCol title="营业结束时间" formatter="hh:mm:ss" field="endTime" hidden="true" queryMode="single" width="100"></t:dgCol>
			<t:dgCol title="操作" field="opt" width="160"></t:dgCol>
			<t:dgDefOpt exp="status#eq#1" title="暂停营业" url="mshopStoreController.do?lockOrRecover&id={id}&funname='doLock'"></t:dgDefOpt>
			<t:dgDefOpt exp="status#eq#0" title="恢复营业" url="mshopStoreController.do?lockOrRecover&id={id}&funname='doRecover'"></t:dgDefOpt>
			<t:dgDefOpt exp="isRecommend#eq#1" title="取消推荐" url="mshopStoreController.do?doRecommendOrCancel&id={id}&funname='doCancel'"></t:dgDefOpt>
			<t:dgDefOpt exp="isRecommend#eq#0" title="推荐店铺" url="mshopStoreController.do?doRecommendOrCancel&id={id}&funname='doRecommend'"></t:dgDefOpt>
			<t:dgDelOpt title="删除" url="mshopStoreController.do?doDel&id={id}" />
			<t:dgToolBar title="录入" icon="icon-add" url="mshopStoreController.do?goAddOrUpdate&funname=add" funname="add" width="1020" height="500"></t:dgToolBar>
			<t:dgToolBar title="编辑" icon="icon-edit" url="mshopStoreController.do?goAddOrUpdate&funname=update" funname="update" width="1020" height="500"></t:dgToolBar>
			<t:dgToolBar title="查看" icon="icon-search" url="mshopStoreController.do?goAddOrUpdate" funname="detail" width="1020" height="500"></t:dgToolBar>
			<t:dgToolBar title="查看订单" icon="icon-search" url="mshopStoreController.do?goOrderView" funname="detail" width="850" height="500"></t:dgToolBar>
			<t:dgToolBar title="查看评价" icon="icon-search" url="mshopStoreController.do?goEvaluationView" funname="detail" width="850" height="500"></t:dgToolBar>
			<t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
		</t:datagrid>
	</div>
</div>
<script src="webpage/weixin/mshop/store/mshopStoreList.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		//给时间控件加上样式
	});

	//导出
	function ExportXls() {
		JeecgExcelExport("mshopStoreController.do?exportXls", "mshopStoreList");
	}
</script>