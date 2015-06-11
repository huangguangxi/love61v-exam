var ctx = $('base').attr('href');
$(function(){

	$('#module_table,#parentName').treegrid({  
		   height: 'auto', 
		    fitColumns: true,
		    nowrap: false, 
		    striped: true, 
		    border: true, 
		    collapsible:false,//是否可折叠的 
		    fit: true,//自动大小 
		    url: ctx +'/module/list.json', 
		    idField:'id', 
		    treeField:'resourceName',
		    onContextMenu: function(e, row) {
							e.preventDefault();
							$(this).treegrid('select', row.id);
							$('#module_menu').menu('show', {
								left : e.pageX,
								top : e.pageY
							});
			}
	}); 

});

$(function(){
	$("#editModule").on("hidden", function() {
	    $(this).removeData("modal");
	});
});

/**
 * 角色事件操作
 */
var ModuleHandler = {
	
	/**
	 * 打开编辑页面
	 * @param flag 1标识添加;2标识修改
	 * @param moduleId  模块ID
	 */
	beforeEditModule: function (flag){//加载编辑页面
		var rowsChecked = $('#module_table').treegrid('getSelected');//选中的行
		var moduleId = rowsChecked.id;
		var pname = rowsChecked.resourceName;
		var url =  ctx + "/module/beforeEditModule.html?_time=" + new Date().getTime();
		 
		if(flag == 2){//修改
			var tree = $('#module_table').treegrid('getParent',moduleId);
			var pid = tree.id;
			pname = tree.resourceName;
			url +="&pid=" + pid;
			url +="&moduleId=" + moduleId;
			url +="&flag=2";
		}
		 
    	url +="&pname=" + encodeURI(encodeURI(pname));
		 
		
		//弹出窗体
        $("#editModule").modal({
        	 backdrop: 'static',
    		 keyboard: false,
        	 remote: url
        }); 
    },
	
	editModule: function(){//提交编辑用户
		if(!this.checkModule("moduleName")){
			return false;
		}
		 
		var url =  ctx + "/module/editModule.json";
        $.ajax({
        	type: "POST",
        	url:  url,
        	dataType: "json",
        	data:  $("#moduleForm").serialize(),
        	success: function(data){
        		if(data && data.status != 0){ 
           			$("#cancleEditModule").click(); //隐藏提示窗体
           			$('#module_table').treegrid('reload');//刷新
        		}
        	}
        });
		
    },
    
    hideTip: function(obj){//隐藏验证提示
    	var id = $(obj).attr("id");
    	$("#" + id + "Tip").removeClass("in");
    },
    
    deleteModule: function(){//确认删除
    	var rowsChecked = $('#module_table').treegrid('getSelected');//选中的行
    	var id = null;
    	var parentId = null;
    	 
    	if(rowsChecked){
    		id = rowsChecked.id;
    		//当前选中的节点存在子节点则说明本身是父节点，则删除其下的所有子节点与自身
    		var childs = $('#module_table').treegrid('getChildren',id);
    		parentId = (childs.length > 0 ? id : null);
    	}
    	
    	var url =  ctx + "/module/deleteModule.json";
    	$.post(url,{
    		resourceId: 		id, 
    		parentId: 			parentId,
    		_time: 				new Date().getTime()
    	},function(data){
    		if(data && data.status != 0){
    			$("#cancleDelModule").click(); //隐藏提示窗体
    			tipMsg("beforeDeleteModule","删除成功");
    			
    			if (rowsChecked){//无刷新删除节点
    	    		$('#module_table').treegrid('remove', id);
    	    	}
    		}
    	});
    },
    
    beforeDeleteModule: function(){//删除之前提示
    	 $("#isDeleteModuleTip").modal({//确认是否删除
    		 backdrop: 'static',
    		 keyboard: false
    	 });  
    	return false;
    },
    
    checkModule: function (id){//验证
    	alert($("#" + id).val());
    	var val= $.trim($("#" + id).val());
        if(!val){
        	 $("#" + id + "Tip").addClass("in");
        	 //return false;
        }
        return true;
    }
    
};