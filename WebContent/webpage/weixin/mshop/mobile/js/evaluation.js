			function doSave() {
				if($("#content").val().trim()=="") {
					alert("内容不能为空！");
					return;
				}
				$("#form").submit();
			}
