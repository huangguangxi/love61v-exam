var ctx = $('base').attr('href');
$(function(){

	$('#module_table').treegrid({  
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
		    onContextMenu: onContextMenu
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
	search: function (){//查询用户
		 var params = {_time: new Date().getTime() };
		 params.moduleName = $.trim($("#moduleName").val());
		  
		 $('#module_table').datagrid('load',params); 
	},
	
	/**
	 * 打开编辑页面
	 * @param flag 1标识添加;2标识修改
	 * @param moduleId  模块ID
	 */
	beforeEditModule: function (flag,moduleId){//加载编辑页面
    	var url =  ctx + "/module/beforeEditModule.html";
		if(flag == 2){//修改
	    	url +="?moduleId=" + moduleId;
	    	url +="&flag=2";
		}
		
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
		
		var me = this;
		var url =  ctx + "/module/editModule.json";
        $.ajax({
        	type: "POST",
        	url:  url,
        	dataType: "json",
        	data:  $("#moduleForm").serialize(),
        	success: function(data){
        		if(data && data.status != 0){ 
           			$("#cancleEditModule").click(); //隐藏提示窗体
           			me.search();  //表格重新加载
           			$('#module_table').datagrid('clearSelections');//清除缓存之前选中的行
           			
           			var content = (data.flag ? "修改成功" : "添加成功");
           			var id = (data.flag ? "updateModule": "saveModule");
           			tipMsg(id,content);
        		}
        	}
        });
		
    },
    
    hideTip: function(obj){//隐藏验证提示
    	var id = $(obj).attr("id");
    	$("#" + id + "Tip").removeClass("in");
    },
    
    deleteModule: function(){//确认删除
    	var me = this;
    	var ids = "";
    	var rowsChecked = $('#module_table').datagrid('getChecked');
    	for(var i=0,len = rowsChecked.length; i < len; i++ ){
    		ids += (i > 0 ? "," : "");
    		ids += rowsChecked[i].moduleId;
    	}
    	
    	var url =  ctx + "/module/deleteModule.json";
    	$.post(url,{
    		ids: ids,
    		_time: new Date().getTime()
    	},function(data){
    		if(data && data.status != 0){
    			$("#cancleDel").click(); //隐藏提示窗体
    			me.search();  //表格重新加载
//    			$('#module_table').datagrid('clearSelections');//清除缓存之前选中的行
    			
    			tipMsg("beforeDeleteModule","删除成功");
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

function onContextMenu(e,row){
	e.preventDefault();
	$(this).treegrid('select', row.id);
	$('#module_menu').menu('show',{
		left: e.pageX,
		top: e.pageY
	});
};

var idIndex = 100;
function append(){
	idIndex++;
	var d1 = new Date();
	var d2 = new Date();
	d2.setMonth(d2.getMonth()+1);
	var node = $('#module_table').treegrid('getSelected');
	$('#module_table').treegrid('append',{
		parent: node.id,
		data: [{
			id: idIndex,
			name: 'New Task'+idIndex,
			persons: parseInt(Math.random()*10),
			begin: $.fn.datebox.defaults.formatter(d1),
			end: $.fn.datebox.defaults.formatter(d2),
			progress: parseInt(Math.random()*100)
		}]
	});
}
function removeIt(){
	var node = $('#module_table').treegrid('getSelected');
	if (node){
		$('#module_table').treegrid('remove', node.id);
	}
}
function collapse(){
	var node = $('#module_table').treegrid('getSelected');
	if (node){
		$('#module_table').treegrid('collapse', node.id);
	}
}
function expand(){
	var node = $('#module_table').treegrid('getSelected');
	if (node){
		$('#module_table').treegrid('expand', node.id);
	}
}
