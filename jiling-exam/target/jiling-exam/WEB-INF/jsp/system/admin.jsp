<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>

<!DOCTYPE html>
<html>
<head>
<title>在线考试管理平台</title>
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport' />
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!--[if lt IE 9]>
    <script src='${ctx}js/html5shiv.js' type='text/javascript'></script>
<![endif]-->
<link href='${ctx}/css/bootstrap/bootstrap.css' media='all'
	rel='stylesheet' type='text/css' />
<link href='${ctx}/css/bootstrap/bootstrap-responsive.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / jquery ui -->
<link href='${ctx}/css/jquery_ui/jquery-ui-1.10.0.custom.css'
	media='all' rel='stylesheet' type='text/css' />
<link href='${ctx}/css/jquery_ui/jquery.ui.1.10.0.ie.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / switch buttons -->
<link
	href='${ctx}/css/plugins/bootstrap_switch/bootstrap-switch.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / xeditable -->
<link href='${ctx}/css/plugins/xeditable/bootstrap-editable.css'
	media='all' rel='stylesheet' type='text/css' />
<link href='${ctx}/css/plugins/common/bootstrap-wysihtml5.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / wysihtml5 (wysywig) -->
<link href='${ctx}/css/plugins/common/bootstrap-wysihtml5.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / jquery file upload -->
<link
	href='${ctx}/css/plugins/jquery_fileupload/jquery.fileupload-ui.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / full calendar -->
<link href='${ctx}/css/plugins/fullcalendar/fullcalendar.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / select2 -->
<link href='${ctx}/css/plugins/select2/select2.css' media='all'
	rel='stylesheet' type='text/css' />
<!-- / mention -->
<link href='${ctx}/css/plugins/mention/mention.css' media='all'
	rel='stylesheet' type='text/css' />
<!-- / tabdrop (responsive tabs) -->
<link href='${ctx}/css/plugins/tabdrop/tabdrop.css' media='all'
	rel='stylesheet' type='text/css' />
<!-- / jgrowl notifications -->
<link href='${ctx}/css/plugins/jgrowl/jquery.jgrowl.min.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / datatables -->
<link
	href='${ctx}/css/plugins/datatables/bootstrap-datatable.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / dynatrees (file trees) -->
<link href='${ctx}/css/plugins/dynatree/ui.dynatree.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / color picker -->
<link
	href='${ctx}/css/plugins/bootstrap_colorpicker/bootstrap-colorpicker.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / datetime picker -->
<link
	href='${ctx}/css/plugins/bootstrap_datetimepicker/bootstrap-datetimepicker.min.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / daterange picker) -->
<link
	href='${ctx}/css/plugins/bootstrap_daterangepicker/bootstrap-daterangepicker.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / flags (country flags) -->
<link href='${ctx}/css/plugins/flags/flags.css' media='all'
	rel='stylesheet' type='text/css' />
<!-- / slider nav (address book) -->
<link href='${ctx}/css/plugins/slider_nav/slidernav.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / fuelux (wizard) -->
<link href='${ctx}/css/plugins/fuelux/wizard.css' media='all'
	rel='stylesheet' type='text/css' />
<!-- / flatty theme -->
<link href='${ctx }/css/light-theme.css'
	id='color-settings-body-color' media='all' rel='stylesheet'
	type='text/css' />
<!-- / demo -->
<link href='${ctx }/css/demo.css' media='all' rel='stylesheet'
	type='text/css' />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

</head>
<body class='contrast-sea-blue'>
	<header>
		<div class='navbar'>
			<div class='navbar-inner'>
				<div class='container-fluid'>
					<a class='brand' href='index.html'> <i class='icon-heart-empty'></i>
						<span class='hidden-phone'>在线考试平台</span>
					</a>
					 <a class='toggle-nav btn pull-left' href='#'>
                    <i class='icon-reorder'></i>
                </a>
					<ul class='nav pull-right'>
						<li class='dropdown light only-icon'><a
							class='dropdown-toggle' data-toggle='dropdown' href='#'> <i
								class='icon-adjust'></i>
						</a>
							<ul class='dropdown-menu color-settings'>
								<%-- <li class='color-settings-body-color'>
									<div class='color-title'>Body color</div> <a
									data-change-to='${ctx}/css/light-theme.css' href='#'>
										Light <small>(default)</small>
								</a> <a data-change-to='${ctx}/css/dark-theme.css' href='#'>
										Dark </a> <a
									data-change-to='${ctx}/css/dark-blue-theme.css'
									href='#'> Dark blue </a>
								</li>
								<li class='divider'></li>
								 --%>
								
								<li class='color-settings-contrast-color'>
									 <a href="#" data-change-to="contrast-blue"><i
										class='icon-adjust text-blue'></i> Blue </a> <a href="#"
									data-change-to="contrast-orange"><i
										class='icon-adjust text-orange'></i> Orange </a> <a href="#"
									data-change-to="contrast-purple"><i
										class='icon-adjust text-purple'></i> Purple </a> <a href="#"
									data-change-to="contrast-green"><i
										class='icon-adjust text-green'></i> Green </a> <a href="#"
									data-change-to="contrast-muted"><i
										class='icon-adjust text-muted'></i> Muted </a> <a href="#"
									data-change-to="contrast-fb"><i class='icon-adjust text-fb'></i>
										Facebook </a> <a href="#" data-change-to="contrast-dark"><i
										class='icon-adjust text-dark'></i> Dark </a> <a href="#"
									data-change-to="contrast-pink"><i
										class='icon-adjust text-pink'></i> Pink </a> <a href="#"
									data-change-to="contrast-grass-green"><i
										class='icon-adjust text-grass-green'></i> Grass green </a> <a
									href="#" data-change-to="contrast-sea-blue"><i
										class='icon-adjust text-sea-blue'></i> Sea blue </a> <a href="#"
									data-change-to="contrast-banana"><i
										class='icon-adjust text-banana'></i> Banana </a> <a href="#"
									data-change-to="contrast-dark-orange"><i
										class='icon-adjust text-dark-orange'></i> Dark orange </a> <a
									href="#" data-change-to="contrast-brown"><i
										class='icon-adjust text-brown'></i> Brown </a>
								</li>
							</ul></li>
						<li class='dropdown medium only-icon widget'><a
							class='dropdown-toggle' data-toggle='dropdown' href='#'> <i
								class='icon-rss'></i>
								<div class='label'>5</div>
						</a>
							<ul class='dropdown-menu'>
								<li><a href='#'>
										<div class='widget-body'>
											<div class='pull-left icon'>
												<i class='icon-user text-success'></i>
											</div>
											<div class='pull-left text'>
												John Doe signed up <small class='muted'>just now</small>
											</div>
										</div>
								</a></li>
								<li class='divider'></li>
								<li><a href='#'>
										<div class='widget-body'>
											<div class='pull-left icon'>
												<i class='icon-inbox text-error'></i>
											</div>
											<div class='pull-left text'>
												New Order #002 <small class='muted'>3 minutes ago</small>
											</div>
										</div>
								</a></li>
								<li class='divider'></li>
								<li><a href='#'>
										<div class='widget-body'>
											<div class='pull-left icon'>
												<i class='icon-comment text-warning'></i>
											</div>
											<div class='pull-left text'>
												America Leannon commented Flatty with veeery long text. <small
													class='muted'>1 hour ago</small>
											</div>
										</div>
								</a></li>
								<li class='divider'></li>
								<li><a href='#'>
										<div class='widget-body'>
											<div class='pull-left icon'>
												<i class='icon-user text-success'></i>
											</div>
											<div class='pull-left text'>
												Jane Doe signed up <small class='muted'>last week</small>
											</div>
										</div>
								</a></li>
								<li class='divider'></li>
								<li><a href='#'>
										<div class='widget-body'>
											<div class='pull-left icon'>
												<i class='icon-inbox text-error'></i>
											</div>
											<div class='pull-left text'>
												New Order #001 <small class='muted'>1 year ago</small>
											</div>
										</div>
								</a></li>
								<li class='widget-footer'><a href='#'>All notifications</a>
								</li>
							</ul></li>
						<li class='dropdown dark user-menu'><a
							class='dropdown-toggle' data-toggle='dropdown' href='#'> <img
								alt='Mila Kunis' height='23' src='images/avatar.jpg'
								width='23' /> 
								<span class='user-name hidden-phone'>
								   <i class="icon-user"></i> <small>欢迎:</small><shiro:principal property="loginName"/>
								</span> <b class='caret'></b>
						</a>
							<ul class='dropdown-menu'>
								<li><a href='user_profile.html'> <i class='icon-user'></i>
										我的资料
								</a></li>
								<li><a href='user_profile.html'> <i class='icon-cog'></i>
										修改密码
								</a></li>
								<li><a href='${ctx }/logout.html' > <i class='icon-signout'></i>
										退出
								</a></li>
							</ul></li>
					</ul>
					 
				</div>
			</div>
		</div>
	</header>
	<div id='wrapper'>
		<div id='main-nav-bg'></div>
		<nav class='' id='main-nav'>
			<div class='navigation'>
				<div class='search'>
					<form accept-charset="UTF-8" action="search_results.html"
						method="get" />
					<div style="margin: 0; padding: 0; display: inline">
						<input name="utf8" type="hidden" value="&#x2713;" />
					</div>
					<div class='search-wrapper'>
						<input autocomplete="off" class="search-query" id="q" name="q"
							placeholder="Search..." type="text" value="" />
						<button class="btn btn-link icon-search" name="button"
							type="submit"></button>
					</div>
					</form>
				</div>
				 
				<ul class='nav nav-stacked'>
					<li class='active'>
						<a href='javascript:void(0);'> 
							<i class='icon-bookmark'></i> 
							<span>菜单导航</span>
						</a>
					</li>
					<li ><a class='dropdown-collapse' href='#'> <i
							class='icon-edit'></i> <span>Forms</span> <i
							class='icon-angle-down angle-down'></i>
					</a>
						<ul class='nav nav-stacked'>
							<li class=''>
								<a href="javascript:void(0);" onclick="toMain(this);"> 
									<i class='icon-caret-right'></i> 
									<span>考生管理</span>
								</a>
							</li>
							<li class=''>
								<a href="javascript:void(0);" onclick="toMain(this);"> 
									<i class='icon-caret-right'></i> 
									<span>成绩查询</span>
								</a>
							</li>
							<li class=''>
								<a href="javascript:void(0);" onclick="toMain(this);"> 
									<i class='icon-caret-right'></i> 
									<span>机构管理</span>
								</a>
							</li>
							<li class=''>
								<a href="javascript:void(0);" onclick="toMain(this);"> 
								<i class='icon-caret-right'></i> 
								<span>Wizard</span>
								</a>
							</li>
						</ul></li>
					<li><a class='dropdown-collapse ' href='#'> <i
							class='icon-tint'></i> <span>UI Elements & Widgets</span> <i
							class='icon-angle-down angle-down'></i>
					</a>
						<ul class='nav nav-stacked'>
							<li class=''><a href='ui_elements.html'> <i
									class='icon-caret-right'></i> <span>UI Elements</span>
							</a></li>
							<li class=''><a href='widgets.html'> <i
									class='icon-caret-right'></i> <span>Widgets</span>
							</a></li>
						</ul></li>
					<li class=''><a href='buttons_and_icons.html'> <i
							class='icon-star'></i> <span>Buttons & Icons</span>
					</a></li>
					<li><a class='dropdown-collapse ' href='#'> <i
							class='icon-cogs'></i> <span>Components</span> <i
							class='icon-angle-down angle-down'></i>
					</a>
						<ul class='nav nav-stacked'>
							<li class=''><a href='charts.html'> <i
									class='icon-bar-chart'></i> <span>Charts</span>
							</a></li>
							<li class=''><a href='address_book.html'> <i
									class='icon-envelope'></i> <span>Address book</span>
							</a></li>
							<li class=''><a href='chats.html'> <i
									class='icon-comments'></i> <span>Chats</span>
							</a></li>
							<li class=''><a href='inplace_editing.html'> <i
									class='icon-pencil'></i> <span>In-place editing</span>
							</a></li>
							<li class=''><a href='filetrees.html'> <i
									class='icon-list-ul'></i> <span>File trees</span>
							</a></li>
							<li class=''><a href='fileupload.html'> <i
									class='icon-file'></i> <span>Fileupload</span>
							</a></li>
							<li class=''><a href='todo.html'> <i
									class='icon-list-alt'></i> <span>Todo list</span>
							</a></li>
							<li class=''><a href='wysiwyg.html'> <i
									class='icon-paste'></i> <span>WYSIWYG</span>
							</a></li>
						</ul></li>
					<li class=''><a href='tables.html'> <i class='icon-table'></i>
							<span>Tables</span>
					</a></li>
					<li class=''><a href='grid.html'> <i class='icon-th'></i>
							<span>Grid</span>
					</a></li>
					<li class=''><a href='type.html'> <i class='icon-font'></i>
							<span>Typography</span>
					</a></li>
					<li class=''><a href='calendar.html'> <i
							class='icon-calendar'></i> <span>Calendar</span>
					</a></li>
					<li><a class='dropdown-collapse ' href='#'> <i
							class='icon-book'></i> <span>Example pages</span> <i
							class='icon-angle-down angle-down'></i>
					</a>
						<ul class='nav nav-stacked'>
							<li class=''><a href='invoice.html'> <i
									class='icon-money'></i> <span>Invoice</span>
							</a></li>
							<li class=''><a href='gallery.html'> <i
									class='icon-picture'></i> <span>Gallery</span>
							</a></li>
							<li class=''><a href='timeline.html'> <i
									class='icon-time'></i> <span>Timeline</span>
							</a></li>
							<li class=''><a href='pricing_tables.html'> <i
									class='icon-table'></i> <span>Pricing tables</span>
							</a></li>
							<li class=''><a href='user_profile.html'> <i
									class='icon-user'></i> <span>User profile</span>
							</a></li>
							<li class=''><a href='err404.html'> <i
									class='icon-question-sign'></i> <span>404 Error</span>
							</a></li>
							<li class=''><a href='err500.html'> <i class='icon-cogs'></i>
									<span>500 Error</span>
							</a></li>
							<li class=''><a href='sign_in.html'> <i
									class='icon-signin'></i> <span>Sign in</span>
							</a></li>
							<li class=''><a href='faq.html'> <i
									class='icon-bullhorn'></i> <span>FAQ</span>
							</a></li>
							<li class=''><a href='orders.html'> <i
									class='icon-inbox'></i> <span>Orders</span>
							</a></li>
							<li class=''><a href='search_results.html'> <i
									class='icon-search'></i> <span>Search results</span>
							</a></li>
							<li class=''><a href='blank.html'> <i
									class='icon-circle-blank'></i> <span>Blank page</span>
							</a></li>
						</ul></li>
					<li><a class='dropdown-collapse ' href='#'> <i
							class='icon-cog'></i> <span>Layouts</span> <i
							class='icon-angle-down angle-down'></i>
					</a>
						<ul class='nav nav-stacked'>
							<li class=''><a href='closed_navigation.html'> <i
									class='icon-caret-right'></i> <span>Closed navigation</span>
							</a></li>
							<li class=''><a href='fixed_header.html'> <i
									class='icon-caret-right'></i> <span>Fixed header</span>
							</a></li>
							<li class=''><a href='fixed_navigation.html'> <i
									class='icon-caret-right'></i> <span>Fixed navigation</span>
							</a></li>
							<li class=''><a href='fixed_navigation_and_header.html'>
									<i class='icon-caret-right'></i> <span>Fixed navigation
										& header</span>
							</a></li>
						</ul></li>
					<li class=''><a href='email_templates.html'> <i
							class='icon-mail-reply'></i> <span>Email templates</span>
					</a></li>
					<li><a class='dropdown-collapse' href='#'> <i
							class='icon-folder-open-alt'></i> <span>Four level
								dropdown</span> <i class='icon-angle-down angle-down'></i>
					</a>
						<ul class='nav nav-stacked'>
							<li><a class='dropdown-collapse' href='#'> <i
									class='icon-caret-right'></i> <span>Second level</span> <i
									class='icon-angle-down angle-down'></i>
							</a>
								<ul class='nav nav-stacked'>
									<li><a class='dropdown-collapse' href='#'> <i
											class='icon-caret-right'></i> <span>Third level</span> <i
											class='icon-angle-down angle-down'></i>
									</a>
										<ul class='nav nav-stacked'>
											<li><a href='#'> <i class='icon-caret-right'></i> <span>Fourth
														level</span>
											</a></li>
											<li><a href='#'> <i class='icon-caret-right'></i> <span>Another
														fourth level</span>
											</a></li>
										</ul></li>
								</ul></li>
						</ul></li>
				</ul>
			</div>
		</nav>
			<div class='container-fluid'>
				<iframe id="iframe" name="iframe" src="" width="96%" height="100%" 
					  frameborder="1" style="margin-left:5px;position: absolute;"></iframe>
			</div>
	</div>
	<!-- / jquery -->
	<script src='${ctx}/js/jquery/jquery.min.js'
		type='text/javascript'></script>
	<!-- / jquery mobile events (for touch and slide) -->
	<script
		src='${ctx}/js/plugins/mobile_events/jquery.mobile-events.min.js'
		type='text/javascript'></script>
	<!-- / jquery migrate (for compatibility with new jquery) -->
	<script src='${ctx}/js/jquery/jquery-migrate.min.js'
		type='text/javascript'></script>
	<!-- / jquery ui -->
	<script src='${ctx}/js/jquery_ui/jquery-ui.min.js'
		type='text/javascript'></script>
	<!-- / bootstrap -->
	<script src='${ctx}/js/bootstrap/bootstrap.min.js'
		type='text/javascript'></script>
	<script src='${ctx}/js/plugins/flot/excanvas.js'
		type='text/javascript'></script>
	<!-- / sparklines -->
	<script
		src='${ctx}/js/plugins/sparklines/jquery.sparkline.min.js'
		type='text/javascript'></script>
	<!-- / flot charts -->
	<script src='${ctx}/js/plugins/flot/flot.min.js'
		type='text/javascript'></script>
	<script src='${ctx}/js/plugins/flot/flot.resize.js'
		type='text/javascript'></script>
	<script src='${ctx}/js/plugins/flot/flot.pie.js'
		type='text/javascript'></script>
	<!-- / bootstrap switch -->
	<script
		src='${ctx}/js/plugins/bootstrap_switch/bootstrapSwitch.min.js'
		type='text/javascript'></script>
	<!-- / fullcalendar -->
	<script
		src='${ctx}/js/plugins/fullcalendar/fullcalendar.min.js'
		type='text/javascript'></script>
	<!-- / datatables -->
	<script
		src='${ctx}/js/plugins/datatables/jquery.dataTables.min.js'
		type='text/javascript'></script>
	<script
		src='${ctx}/js/plugins/datatables/jquery.dataTables.columnFilter.js'
		type='text/javascript'></script>
	<!-- / wysihtml5 -->
	<script src='${ctx}/js/plugins/common/wysihtml5.min.js'
		type='text/javascript'></script>
	<script src='${ctx}/js/plugins/common/bootstrap-wysihtml5.js'
		type='text/javascript'></script>
	<!-- / select2 -->
	<script src='${ctx}/js/plugins/select2/select2.js'
		type='text/javascript'></script>
	<!-- / color picker -->
	<script
		src='${ctx}/js/plugins/bootstrap_colorpicker/bootstrap-colorpicker.min.js'
		type='text/javascript'></script>
	<!-- / mention -->
	<script src='${ctx}/js/plugins/mention/mention.min.js'
		type='text/javascript'></script>
	<!-- / input mask -->
	<script
		src='${ctx}/js/plugins/input_mask/bootstrap-inputmask.min.js'
		type='text/javascript'></script>
	<!-- / fileinput -->
	<script
		src='${ctx}/js/plugins/fileinput/bootstrap-fileinput.js'
		type='text/javascript'></script>
	<!-- / modernizr -->
	<script src='${ctx}/js/plugins/modernizr/modernizr.min.js'
		type='text/javascript'></script>
	<!-- / retina -->
	<script src='${ctx}/js/plugins/retina/retina.js'
		type='text/javascript'></script>
	<!-- / fileupload -->
	<script src='${ctx}/js/plugins/fileupload/tmpl.min.js'
		type='text/javascript'></script>
	<script src='${ctx}/js/plugins/fileupload/load-image.min.js'
		type='text/javascript'></script>
	<script
		src='${ctx}/js/plugins/fileupload/canvas-to-blob.min.js'
		type='text/javascript'></script>
	<script
		src='${ctx}/js/plugins/fileupload/jquery.iframe-transport.min.js'
		type='text/javascript'></script>
	<script
		src='${ctx}/js/plugins/fileupload/jquery.fileupload.min.js'
		type='text/javascript'></script>
	<script
		src='${ctx}/js/plugins/fileupload/jquery.fileupload-fp.min.js'
		type='text/javascript'></script>
	<script
		src='${ctx}/js/plugins/fileupload/jquery.fileupload-ui.min.js'
		type='text/javascript'></script>
	<script
		src='${ctx}/js/plugins/fileupload/jquery.fileupload-init.js'
		type='text/javascript'></script>
	
	<!-- / timeago -->
	<script src='${ctx}/js/plugins/timeago/jquery.timeago.js'
		type='text/javascript'></script>
	
	<!-- / slimscroll -->
	<script
		src='${ctx}/js/plugins/slimscroll/jquery.slimscroll.min.js'
		type='text/javascript'></script>
	
	<!-- / autosize (for textareas) -->
	<script
		src='${ctx}/js/plugins/autosize/jquery.autosize-min.js'
		type='text/javascript'></script>
	
	<!-- / charCount -->
	<script src='${ctx}/js/plugins/charCount/charCount.js'
		type='text/javascript'></script>
	
	<!-- / validate -->
	<script
		src='${ctx}/js/plugins/validate/jquery.validate.min.js'
		type='text/javascript'></script>
	<script src='${ctx}/js/plugins/validate/additional-methods.js'
		type='text/javascript'></script>
	
	<!-- / naked password -->
	<script
		src='${ctx}/js/plugins/naked_password/naked_password-0.2.4.min.js'
		type='text/javascript'></script>
	
	<!-- / nestable -->
	<script src='${ctx}/js/plugins/nestable/jquery.nestable.js'
		type='text/javascript'></script>
	
	<!-- / tabdrop -->
	<script src='${ctx}/js/plugins/tabdrop/bootstrap-tabdrop.js'
		type='text/javascript'></script>
	
	<!-- / jgrowl -->
	<script src='${ctx}/js/plugins/jgrowl/jquery.jgrowl.min.js'
		type='text/javascript'></script>
	
	<!-- / bootbox -->
	<script src='${ctx}/js/plugins/bootbox/bootbox.min.js'
		type='text/javascript'></script>
	
	<!-- / inplace editing -->
	<script src='${ctx}/js/plugins/xeditable/bootstrap-editable.min.js'></script>
	<script src='${ctx}/js/plugins/xeditable/wysihtml5.js'
		type='text/javascript'></script>
	
	<!-- / ckeditor -->
	<script src='${ctx}/js/plugins/ckeditor/ckeditor.js'></script>
	
	<!-- / filetrees -->
	<script src='${ctx}/js/plugins/dynatree/jquery.dynatree.min.js'></script>
	
	<!-- / datetime picker -->
	<script src='${ctx}/js/plugins/bootstrap_datetimepicker/bootstrap-datetimepicker.js'></script>
	
	<!-- / daterange picker -->
	<script src='${ctx}/js/plugins/bootstrap_daterangepicker/moment.min.js'></script>
	<script src='${ctx}/js/plugins/bootstrap_daterangepicker/bootstrap-daterangepicker.js'></script>
	
	<!-- / max length -->
	<script src='${ctx}/js/plugins/bootstrap_maxlength/bootstrap-maxlength.min.js'></script>
	
	<!-- / dropdown hover -->
	<script src='${ctx}/js/plugins/bootstrap_hover_dropdown/twitter-bootstrap-hover-dropdown.min.js'></script>
	
	<!-- / slider nav (address book) -->
	<script src='${ctx}/js/plugins/slider_nav/slidernav-min.js' type='text/javascript'></script>
	
	<!-- / fuelux -->
	<script src='${ctx}/js/plugins/fuelux/wizard.js' type='text/javascript'></script>
	
	<!-- / flatty theme -->
	<script src='${ctx}/js/nav.js' type='text/javascript'></script>
	<script src='${ctx}/js/tables.js' type='text/javascript'></script>
	<script src='${ctx}/js/theme.js' type='text/javascript'></script>
	
	<!-- / demo -->
	<script src='${ctx}/js/demo/jquery.mockjax.js' type='text/javascript'></script>
	<script src='${ctx}/js/demo/inplace_editing.js' type='text/javascript'></script>
	<script src='${ctx}/js/demo/charts.js' type='text/javascript'></script>
	<script src='${ctx}/js/demo/demo.js' type='text/javascript'></script>
	
<script type="text/javascript">
	$(function(){
		autoIframe();
		
		$(window).resize(function(){
			autoIframe();
		});
	});
	
	function autoIframe(){
		var clientW = document.documentElement.clientHeight;
		var mainW = $("#wrapper").width() - $("#main-nav").width();
// 		alert(clientW + ' ' + mainW);
		$("iframe").width(mainW);
		$("iframe").height($("#wrapper").height());
	};
	
	/*根据模块导航到主窗体*/
	function toMain(obj){
		var txt = $("span",obj).text(); //当前模块
		$("#cur_module").text(txt);
		
		$("iframe").attr("src","${ctx}/hello/list.html");
	};
</script>
</body>
</html>