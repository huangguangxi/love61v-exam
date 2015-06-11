<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport' />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>测试</title>

<!--[if lt IE 9]>
    <script src='${ctx}js/html5shiv.js' type='text/javascript'></script>
<![endif]-->
<link href='${ctx}/css/bootstrap/bootstrap.css' media='all'
	rel='stylesheet' type='text/css' />
<link href='${ctx}/css/bootstrap/bootstrap-responsive.css'
	media='all' rel='stylesheet' type='text/css' />
<script>
	  function showJson() {
		$.ajax({
			type : 'GET',
			url : '${ctx}/hello/show.json',
			cache:  false, 
			dataType : 'json',
			data : {
				time: new Date().getTime()
			},
			success : function(data){
				$('#result').html(data.name + " age=" + data.age + " sex=" + data.sex);
			}
		});
	}  
</script>
<body style="padding: 10px;">
    <div class='alert alert-info'>
	    <a class='close' data-dismiss='alert' href='#'>&times;</a>
	    Welcome to
	    <strong>Flatty (v2)</strong>
	    - I hope you'll like it. Don't forget - you can change theme color in top right corner
	    <i class='icon-adjust'></i>
	    if you want.
	</div>
   
	<h2>${result }</h2>
	<h2>
		<a href="javascript:void(0);" onclick="showJson();">访问返回json</a>
		结果:<div id="result"> </div>
	</h2>
	
	<div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon align-justify"></i><span class="break"></span>用户信息</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
						</div>
					</div>
					<div class="box-content">
						<table id="userTb" class="table table-striped table-bordered table-hover">
						  <thead>
							  <tr>
								  <th>用户名</th>
								  <th>密码</th>
								  <th>注册时间</th>
								  <th>状态</th>
								  <th>操作</th>
							  </tr>
						  </thead>   
						  <tbody>
							  <c:forEach items="${list }" var="el">
								<tr>
									<td>${el }</td>
									<td class="center">${el }</td>
									<td class="center">${el }ber</td>
									<td class="center">
										<c:if test="${el == 'bbbbb'}">
											<span class="label label-important">禁用</span>
										</c:if>
										<c:if test="${el != 'bbbbb'}">
											<span class="label label-success">应用</span>
										</c:if>
										
									</td>
									<td class="center">
										<a class="btn btn-success" href="#">
											<i class="halflings-icon white zoom-in"></i>修改
										</a>
										<a class="btn btn-info" href="#">
											<i class="halflings-icon white edit"></i>删除 
										</a>
									</td>
								</tr>
							  </c:forEach>
							 
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
</div>
</body>
</html>

<script type="text/javascript" src="${ctx}/js/jquery/jquery-1.11.3.min.js"></script>
<script src="${ctx}/js/bootstrap/bootstrap.min.js"></script>
<script src='${ctx}/js/bootstrap/dataTables.bootstrap.js'></script>

<script>
	$(function(){
		var url =  "${ctx}/user/list.json";
		$("#userTb").dataTable({
			serverSide: true,	//分页，取数据等等的都放到服务端去
            processing: true,	//载入数据的时候是否显示“载入中”
            pageLength: 10,		//首次加载的数据条数
            ordering:   false,	//排序操作在服务端进行，所以可以关了
            ajax:  		url,
            dataSrc: "data",//默认data，也可以写其他的，格式化table的时候取里面的数据
            data: function (d) {//d 是原始的发送给服务器的数据，默认很长。
                var param = {};//因为服务端排序，可以新建一个参数对象
                param.start = d.start;//开始的序号
                param.length = d.length;//要取的数据的
                var formData = $("#filter_form").serializeArray();//把form里面的数据序列化成数组
                formData.forEach(function (e) {
                    param[e.name] = e.value;
                });
                return param;//自定义需要传递的参数。
        	},
            
            columns:[
                     {data: "userName"},
                     {data: "password"},
                     {data: "createTime"},
                     {data: "status"}
            ],
            initComplete: function(setting, json) {
            	alert(0);
                //初始化完成之后替换原先的搜索框。
                //本来想把form标签放到hidden_filter 里面，因为事件绑定的缘故，还是拿出来。
               // $(tablePrefix + "filter").html("<form id='filter_form'>" + $("#hidden_filter").html() + "</form>");
            }
		});
		
	});
	
	 
</script>
