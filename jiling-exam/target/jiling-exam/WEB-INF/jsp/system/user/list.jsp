<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport' />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<base href="<%=basePath%>">

<title>用户管理</title>
<link rel="stylesheet" type="text/css" href="${ctx }/css/icon.css">
<link rel="stylesheet" type="text/css" href="${ctx }/js/jquery-easyui/themes/default/easyui.css">

<!--[if lt IE 9]>
    <script src='${ctx}js/html5shiv.js' type='text/javascript'></script>
<![endif]-->
<link href='${ctx}/css/bootstrap/bootstrap.css' media='all' rel='stylesheet' type='text/css' />
<link href='${ctx}/css/bootstrap/bootstrap-responsive.css' media='all' rel='stylesheet' type='text/css' />
<script type="text/javascript" src="${ctx }/js/jquery-easyui/jquery.min.js"></script>
<script type="text/javascript" src="${ctx }/js/jquery-easyui/jquery.easyui.min.js"></script>
<script src="${ctx}/js/bootstrap/bootstrap.min.js"></script>
<script src='${ctx}/js/common.js' type='text/javascript'></script>
<script src='${ctx}/js/system/user/user.js' type='text/javascript'></script>
</head>
 
<body>
      <table id="user_table" data-options="title:'详情',fit:true,border:true" 
      	cellspacing="0" cellpadding="0" toolbar="#toolbar" style="margin-top:3px;">
        <thead>
            <tr>
                <th data-options="field:'userId',width:20">编号</th>
                <th data-options="field:'loginName',width:50">账号</th>
                <th data-options="field:'userName',width:50">用户名</th>
                <th data-options="field:'department',width:50,formatter: formatDept">部门</th>
                <th data-options="field:'email',width:50">邮箱</th>
                <th data-options="field:'sex',width:30, formatter:formatSex">性别</th>
                <th data-options="field:'status',width:30, formatter: formatStatus">状态</th>
                <th data-options="field:'createTime',width:80, formatter:formatTime">创建时间</th>
            </tr>
        </thead>
   	</table>
   	
   	<div id="toolbar">
   		<div class="form-inline" >
		   		<input type="text" class="form-control" id="userName" placeholder="请输入用户名称">
		    	<a class="btn btn-success" href="javascript:void(0)"   onclick="UserHandler.search();">
					<i class="icon-search icon-white"></i>查询
				</a>
			 
			<span class="pull-right">
		    	<a class="btn btn-success" id="save" href="javascript:void(0)"   onclick="UserHandler.beforeEditUser(1);">
					<i class="icon-plus icon-white"></i>添加
				</a>
		    	<a class="btn btn-success" id="update" href="javascript:void(0)" onclick="UserHandler.beforeEditUser(2);">
					<i class="icon-edit icon-white"></i>修改
				</a>
				<a class="btn btn-info" id="beforeDeleteUser" href="javascript:void(0)"  onclick="UserHandler.beforeDeleteUser();">
					<i class="icon-remove icon-white"></i>删除 
				</a>
				<!-- <a class="btn btn-info" id="authz" href="javascript:void(0)"  onclick="UserHandler.authz();">
					<i class="icon-ok icon-white"></i>授权 
				</a> -->
			</span>
		</div>
	</div>
    
 <!-- 用户编辑 -->
 <div class="modal fade" id="editUser">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" id="cancleEdit"  data-dismiss="modal" aria-hidden="true">×</button>
        <h4 class="modal-title"><span style="color:blue;">编辑用户</span></h4>
      </div>
      <!-- remote加载的页面渲染到此容器中 -->
       <div class="modal-body"></div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="icon-remove icon-white"></i>取消</button>
        <button type="button" class="btn btn-success" onclick="UserHandler.editUser();"><i class="icon-ok icon-white"></i>&nbsp;提&nbsp;&nbsp;交</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- 授权用户 -->
 <div class="modal fade" id="authzUser">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" id="cancleauthzUser"  data-dismiss="modal" aria-hidden="true">×</button>
        <h4 class="modal-title"><span style="color:blue;">授权用户</span></h4>
      </div>
      <!-- remote加载的页面渲染到此容器中 -->
       <div class="modal-body"></div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="icon-remove icon-white"></i>取消</button>
        <button type="button" class="btn btn-success" onclick="UserHandler.authzUser();"><i class="icon-ok icon-white"></i>&nbsp;确&nbsp;&nbsp;定</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

 <!-- 提示是否删除 -->
 <div class="modal fade" id="isDeleteTip">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h4 class="modal-title"><span style="color:blue;">提示</span></h4>
      </div>
      <div class="modal-body">
        <p><h3 style="color:red">你确定删除吗?</h3></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" id="cancleDel" data-dismiss="modal">
        	<i class="icon-remove icon-white"></i>取消
        </button>
        <button type="button" class="btn btn-success" onclick="UserHandler.deleteUser()">
        	<i class="icon-ok icon-white"></i>&nbsp;确&nbsp;&nbsp;定
        </button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

</body>
</html>