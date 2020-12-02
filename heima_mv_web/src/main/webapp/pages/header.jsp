<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!-- 页面头部 -->
<header class="main-header">
	<!-- Logo -->
	<a href="all-admin-index.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
		<span class="logo-mini"><b>数据</b></span> <!-- logo for regular state and mobile devices -->
		<span class="logo-lg"><b>搬家服务</b>企业信息管理</span>
	</a>
	<!-- Header Navbar: style can be found in header.less -->
	<nav class="navbar navbar-static-top">
		<!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
			role="button"> <span class="sr-only">Toggle navigation</span>
		</a>

		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">
				<!-- Messages: style can be found in dropdown.less-->
				<li class="dropdown messages-menu">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<i class="fa fa-envelope-o"></i>
						<span class="label label-success">4</span>
					</a>
					<ul class="dropdown-menu">
						<li class="header">你有4个邮件</li>
						<li>
							<!-- inner menu: contains the actual data -->
							<ul class="menu">
								<li>
									<!-- start message -->
									<a href="#">
										<div class="pull-left">
											<img src="${pageContext.request.contextPath}/img/user2-160x1601.jpg" class="img-circle" alt="User Image">
										</div>
										<h4>
											系统消息
											<small><i class="fa fa-clock-o"></i> 5 分钟前</small>
										</h4>
										<p>欢迎您登录系统</p>
									</a>
								</li>
								<!-- end message -->
								<li>
									<a href="#">
										<div class="pull-left">
											<img src="${pageContext.request.contextPath}/img/user2-160x1601.jpg" class="img-circle" alt="User Image">
										</div>
										<h4>
											客户消息
											<small><i class="fa fa-clock-o"></i> 2 小时前</small>
										</h4>
										<p>又有了新的订单啦</p>
									</a>
								</li>
								<li>
									<a href="#">
										<div class="pull-left">
											<img src="${pageContext.request.contextPath}/img/user2-160x1601.jpg" class="img-circle" alt="User Image">
										</div>
										<h4>
											手心里的蔷薇
											<small><i class="fa fa-clock-o"></i> Today</small>
										</h4>
										<p>亲，在吗？我想问问搬家的一些注意事项</p>
									</a>
								</li>
								<li>
									<a href="#">
										<div class="pull-left">
											<img src="${pageContext.request.contextPath}/img/user2-160x1601.jpg" class="img-circle" alt="User Image">
										</div>
										<h4>
											一缕清风
											<small><i class="fa fa-clock-o"></i> Yesterday</small>
										</h4>
										<p>咱们公司的具体位置在哪里呀？</p>
									</a>
								</li>
								<li>
									<a href="#">
										<div class="pull-left">
											<img src="${pageContext.request.contextPath}/img/user2-160x1601.jpg" class="img-circle" alt="User Image">
										</div>
										<h4>
											夏日的风
											<small><i class="fa fa-clock-o"></i> 2 days</small>
										</h4>
										<p>搬家服务很好，好评！！！</p>
									</a>
								</li>
							</ul>
						</li>
						<li class="footer"><a href="#">See All Messages</a></li>
					</ul>
				</li>
				<!-- Notifications: style can be found in dropdown.less -->
				<li class="dropdown notifications-menu">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<i class="fa fa-bell-o"></i>
						<span class="label label-warning">10</span>
					</a>
					<ul class="dropdown-menu">
						<li class="header">你有10个新留言</li>
						<li>
							<!-- inner menu: contains the actual data -->
							<ul class="menu">
								<li>
									<a href="#">
										<i class="fa fa-users text-aqua"></i>搬家服务质量
									</a>
								</li>
								<li>
									<a href="#">
										<i class="fa fa-warning text-yellow"></i>昨天搬家，在贵公司的协作下，顺利到达了新住处，感谢帮忙。服务总体来说不错。
									</a>
								</li>
								<li>
									<a href="#">
										<i class="fa fa-users text-red"></i>新客户来浏览公司的网站啦
									</a>
								</li>
								<li>
									<a href="#">
										<i class="fa fa-shopping-cart text-green"></i>搬家前都需要注意什么？
									</a>
								</li>
								<li>
									<a href="#">
										<i class="fa fa-user text-red"></i>搬家费用是怎么计算的呢？
									</a>
								</li>
							</ul>
						</li>
						<li class="footer"><a href="#">View all</a></li>
					</ul>
				</li>
				<!-- Tasks: style can be found in dropdown.less -->
				<li class="dropdown tasks-menu">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<i class="fa fa-flag-o"></i>
						<span class="label label-danger">9</span>
					</a>
					<ul class="dropdown-menu">
						<li class="header">你有9个新业务</li>
						<li>
							<!-- inner menu: contains the actual data -->
							<ul class="menu">
								<li>
									<!-- Task item -->
									<a href="#">
										<h3>
											企业职员业务的反馈统计
											<small class="pull-right">40%</small>
										</h3>
										<div class="progress xs">
											<div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
												<span class="sr-only">职员基本上都很负责</span>
											</div>
										</div>
									</a>
								</li>
								<!-- end task item -->
								<li>
									<!-- Task item -->
									<a href="#">
										<h3>
											企业服务项目的运营情况
											<small class="pull-right">60%</small>
										</h3>
										<div class="progress xs">
											<div class="progress-bar progress-bar-green" style="width: 40%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
												<span class="sr-only">近段时间公司运营不错</span>
											</div>
										</div>
									</a>
								</li>
								<!-- end task item -->
								<li>
									<!-- Task item -->
									<a href="#">
										<h3>
											企业搬家车辆的维修的数目
											<small class="pull-right">10%</small>
										</h3>
										<div class="progress xs">
											<div class="progress-bar progress-bar-red" style="width: 60%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
												<span class="sr-only">2类车型需要报修</span>
											</div>
										</div>
									</a>
								</li>
								<!-- end task item -->
								<li>
									<!-- Task item -->
									<a href="#">
										<h3>
                                            企业订单的汇总信息
											<small class="pull-right">80%</small>
										</h3>
										<div class="progress xs">
											<div class="progress-bar progress-bar-yellow" style="width: 80%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
												<span class="sr-only">基本已完成</span>
											</div>
										</div>
									</a>
								</li>
								<!-- end task item -->
							</ul>
						</li>
						<li class="footer">
							<a href="#">View all tasks</a>
						</li>
					</ul>
				</li>
				<!-- User Account: style can be found in dropdown.less -->



				<li class="dropdown user user-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <img
						src="${pageContext.request.contextPath}/img/user2-160x1601.jpg"
						class="user-image" alt="User Image"> <span class="hidden-xs">
							<security:authentication property="principal.username"></security:authentication>
					</span>

				</a>
					<ul class="dropdown-menu">
						<!-- User image -->
						<li class="user-header"><img
							src="${pageContext.request.contextPath}/img/user2-160x1601.jpg"
							class="img-circle" alt="User Image"></li>

						<!-- Menu Footer-->
						<li class="user-footer">
							<div class="pull-left">
								<a href="${pageContext.request.contextPath}/pages/update-password.jsp" class="btn btn-default btn-flat">修改密码</a>
							</div>
							<div class="pull-right">
								<a href="${pageContext.request.contextPath}/logout.do"
									class="btn btn-default btn-flat">注销</a>
							</div>
						</li>
					</ul></li>

			</ul>
		</div>
	</nav>
</header>
<!-- 页面头部 /-->