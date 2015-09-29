<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<script type="text/javascript">
	$('#addShopLoveBtn').linkbutton({   
	    iconCls: 'icon-add'  
	});  
	$('#delShopLoveBtn').linkbutton({   
	    iconCls: 'icon-remove'  
	}); 
	$('#addShopLoveBtn').bind('click', function(){   
 		 var tr =  $("#add_shopLove_table_template tr").clone();
	 	 $("#add_shopLove_table").append(tr);
	 	 resetTrNum('add_shopLove_table');
	 	 return false;
    });  
	$('#delShopLoveBtn').bind('click', function(){   
      	$("#add_shopLove_table").find("input:checked").parent().parent().remove();   
        resetTrNum('add_shopLove_table'); 
        return false;
    }); 
    $(document).ready(function(){
    	$(".datagrid-toolbar").parent().css("width","auto");
    	if(location.href.indexOf("load=detail")!=-1){
			$(":input").attr("disabled","true");
			$(".datagrid-toolbar").hide();
		}
		//将表格的表头固定
	    $("#shopLove_table").createhftable({
	    	height:'300px',
			width:'auto',
			fixFooter:false
			});
    });
</script>
<div style="padding: 3px; height: 25px;width:auto;" class="datagrid-toolbar">
	<a id="addShopLoveBtn" href="#">添加</a> <a id="delShopLoveBtn" href="#">删除</a> 
</div>
<table border="0" cellpadding="2" cellspacing="0" id="shopLove_table">
	<tr bgcolor="#E6E6E6">
		<td align="center" bgcolor="#EEEEEE">序号</td>
		<td align="center" bgcolor="#EEEEEE">操作</td>
				  <td align="left" bgcolor="#EEEEEE">
						商品ID
				  </td>
				  <td align="left" bgcolor="#EEEEEE">
						买家ID
				  </td>
	</tr>
	<tbody id="add_shopLove_table">	
	<c:if test="${fn:length(shopLoveList)  <= 0 }">
			<tr>
				<td align="center"><div style="width: 25px;" name="xh">1</div></td>
				<td align="center"><input style="width:20px;"  type="checkbox" name="ck"/></td>
					<input name="shopLoveList[0].id" type="hidden"/>
					<input name="shopLoveList[0].createName" type="hidden"/>
					<input name="shopLoveList[0].createDate" type="hidden"/>
					<input name="shopLoveList[0].updateName" type="hidden"/>
					<input name="shopLoveList[0].updateDate" type="hidden"/>
				  <td align="left">
					  	<input name="shopLoveList[0].idGoods" maxlength="36" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">商品ID</label>
					</td>
				  <td align="left">
					  	<input name="shopLoveList[0].idCustomer" maxlength="36" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">买家ID</label>
					</td>
   			</tr>
	</c:if>
	<c:if test="${fn:length(shopLoveList)  > 0 }">
		<c:forEach items="${shopLoveList}" var="poVal" varStatus="stuts">
			<tr>
				<td align="center"><div style="width: 25px;" name="xh">${stuts.index+1 }</div></td>
				<td align="center"><input style="width:20px;"  type="checkbox" name="ck" /></td>
					<input name="shopLoveList[${stuts.index }].id" type="hidden" value="${poVal.id }"/>
					<input name="shopLoveList[${stuts.index }].createName" type="hidden" value="${poVal.createName }"/>
					<input name="shopLoveList[${stuts.index }].createDate" type="hidden" value="${poVal.createDate }"/>
					<input name="shopLoveList[${stuts.index }].updateName" type="hidden" value="${poVal.updateName }"/>
					<input name="shopLoveList[${stuts.index }].updateDate" type="hidden" value="${poVal.updateDate }"/>
				   <td align="left">
					  	<input name="shopLoveList[${stuts.index }].idGoods" maxlength="36" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					                value="${poVal.idGoods }">
					  <label class="Validform_label" style="display: none;">商品ID</label>
				   </td>
				   <td align="left">
					  	<input name="shopLoveList[${stuts.index }].idCustomer" maxlength="36" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					                value="${poVal.idCustomer }">
					  <label class="Validform_label" style="display: none;">买家ID</label>
				   </td>
   			</tr>
		</c:forEach>
	</c:if>	
	</tbody>
</table>
