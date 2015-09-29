<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid  name="shopGoodsList"  fitColumns="false" title="微信商城商品信息" actionUrl="shopGoodsController.do?datagrid" idField="id" fit="true" queryMode="group" sortName="createDate" sortOrder="desc">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改人名称"  field="updateName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改日期"  field="updateDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="商品图片链接"  field="imgurl"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="商品详情"  field="descriptions"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="所属公众号ID"  field="accountid"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="快递费用"  field="expressPrice"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   
   
   <t:dgCol title="商品名称"  field="name"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="所属类别"  field="idCategory"  hidden="true"  queryMode="single" dictionary="weixin_shop_category,id,name" width="120"></t:dgCol>
   <t:dgCol title="状态"  field="statement" replace="正常_0,已下架_1" hidden="true"  queryMode="single"  width="120" ></t:dgCol>
   <t:dgCol title="商品原价"  field="originalPrice"  hidden="true"  queryMode="single"  width="100"></t:dgCol>
   <t:dgCol title="商品现价"  field="realPrice"  hidden="true"  queryMode="single"  width="100"></t:dgCol>
   <t:dgCol title="折扣"  field="sale"  hidden="true"  queryMode="single"  width="60"></t:dgCol>
   <t:dgCol title="销售数量"  field="sellCount"  hidden="true"  queryMode="single"  width="60"></t:dgCol>
   <t:dgCol title="评价数量"  field="discussCount"  hidden="true"  queryMode="single"  width="60"></t:dgCol>
   <t:dgCol title="好评数量"  field="goodCount"  hidden="true"  queryMode="single"  width="60"></t:dgCol>
   <t:dgCol title="差评数量"  field="badCount"  hidden="true"  queryMode="single"  width="60"></t:dgCol>
   <t:dgCol title="中评数量"  field="neutralCount"  hidden="true"  queryMode="single"  width="60"></t:dgCol>
   <t:dgCol title="下架时间"  field="removeTime"  hidden="true"  queryMode="single"  width="140"></t:dgCol>
   <t:dgCol title="上架时间"  field="shelveTime"  hidden="true"  queryMode="single"  width="140"></t:dgCol>
   
   
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="shopGoodsController.do?doDel&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="shopGoodsController.do?addorupdate" funname="add" width="100%" height="100%"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="shopGoodsController.do?addorupdate" funname="update" width="100%" height="100%"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="shopGoodsController.do?addorupdate" funname="detail" width="100%" height="100%"></t:dgToolBar>
   <t:dgDefOpt exp="statement#eq#1" title="上架"  url="shopGoodsController.do?doDownOrShelve&id={id}&funname='doShelve'"></t:dgDefOpt>
   <t:dgDefOpt exp="statement#eq#0" title="下架"  url="shopGoodsController.do?doDownOrShelve&id={id}&funname='doDown'"></t:dgDefOpt>
   <t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/weixin/shop/goods/shopGoodsList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
 
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'shopGoodsController.do?upload', "shopGoodsList");
}

//导出
function ExportXls() {
	JeecgExcelExport("shopGoodsController.do?exportXls","shopGoodsList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("shopGoodsController.do?exportXlsByT","shopGoodsList");
}
 </script>