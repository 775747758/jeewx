<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="mshopStoreadminList" checkbox="true" fitColumns="false" title="店铺管理员列表" actionUrl="mshopStoreadminController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改人名称"  field="updateName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改日期"  field="updateDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   
   <t:dgCol title="微信昵称"  field="openid"  dictionary="wx_mshop_customer,openid,nickname" hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="店铺名称" query="true" field="idStore" dictionary="weixin_mshop_store,id,store_name" hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="姓名"  field="name"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="管理员类型" query="true" field="isHead" replace="总后台管理员_1,店铺后台管理员_0" hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="mshopStoreadminController.do?doDel&id={id}" />
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/weixin/mshop/storeadmin/mshopStoreadminList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'mshopStoreadminController.do?upload', "mshopStoreadminList");
}

//导出
function ExportXls() {
	JeecgExcelExport("mshopStoreadminController.do?exportXls","mshopStoreadminList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("mshopStoreadminController.do?exportXlsByT","mshopStoreadminList");
}
 </script>