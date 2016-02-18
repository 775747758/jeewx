<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<script type="text/javascript">
	$('#addTestManyBtn').linkbutton({   
	    iconCls: 'icon-add'  
	});  
	$('#delTestManyBtn').linkbutton({   
	    iconCls: 'icon-remove'  
	}); 
	$('#addTestManyBtn').bind('click', function(){   
 		 var tr =  $("#add_testMany_table_template tr").clone();
	 	 $("#add_testMany_table").append(tr);
	 	 resetTrNum('add_testMany_table');
	 	 return false;
    });  
	$('#delTestManyBtn').bind('click', function(){   
      	$("#add_testMany_table").find("input:checked").parent().parent().remove();   
        resetTrNum('add_testMany_table'); 
        return false;
    }); 
    $(document).ready(function(){
    	$(".datagrid-toolbar").parent().css("width","auto");
    	if(location.href.indexOf("load=detail")!=-1){
			$(":input").attr("disabled","true");
			$(".datagrid-toolbar").hide();
		}
		//将表格的表头固定
	    $("#testMany_table").createhftable({
	    	height:'300px',
			width:'auto',
			fixFooter:false
			});
    });
</script>
<table border="0" cellpadding="2" cellspacing="0" id="testMany_table">
	<tr bgcolor="#E6E6E6">
		<td align="center" bgcolor="#EEEEEE">序号</td>
		<td align="left" bgcolor="#EEEEEE" >商品名称</td>
		<td align="left" bgcolor="#EEEEEE" >单价</td>
		<td align="left" bgcolor="#EEEEEE" >数量</td>
		<td align="left" bgcolor="#EEEEEE" >总价格</td>
	</tr>
	<tbody id="add_testMany_table">	
		<c:forEach items="${orderGoodsListtt}" var="poVal" varStatus="stuts">
			<tr>
				<td align="center"><div style="width: 25px;" name="xh">${stuts.index+1 }</div></td>
				   <td align="left">
					  	<input name="orderGoodsListtt[${stuts.index }].goodsName" maxlength="32" 
					  		type="text" class="inputxt"  style="width:120px;" readonly="true"
					               
					                value="${poVal.goodsName }">
					  <label class="Validform_label" style="display: none;">商品名称</label>
				   </td>
				   <td align="left">
					  	<input name="orderGoodsListtt[${stuts.index }].realPrice" maxlength="36" 
					  		type="text" class="inputxt"  style="width:120px;" readonly="true"
					               
					                value="${poVal.realPrice }">
					  <label class="Validform_label" style="display: none;">现价</label>
				   </td>
				   
				    <td align="left">
					  	<input name="orderGoodsListtt[${stuts.index }].count" maxlength="36"
					  		type="text" class="inputxt"  style="width:120px;" readonly="true"
					               
					                value="${poVal.count }">
					  <label class="Validform_label" style="display: none;">数量</label>
				   </td>
				   <td align="left">
					  	<input name="orderGoodsListtt[${stuts.index }].realPrice" maxlength="36" 
					  		type="text" class="inputxt"  style="width:120px;" readonly="true"
					               
					                value="${poVal.realPrice*poVal.count }">
					  <label class="Validform_label" style="display: none;">总价格</label>
				   </td>
   			</tr>
		</c:forEach>
	</tbody>
</table>
