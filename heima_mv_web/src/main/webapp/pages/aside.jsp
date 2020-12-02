<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="${pageContext.request.contextPath}/img/user2-160x1601.jpg"
					class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info">
				<p>
					<security:authentication property="principal.username"></security:authentication>
				</p>
				<a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
			</div>
		</div>

		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header">菜单</li>
			<li id="admin-index"><a
				href="${pageContext.request.contextPath}/pages/main1.jsp"><i
					class="fa fa-dashboard"></i> <span>首页</span></a></li>

			<li class="treeview"><a href="#"> <i class="fa fa-cogs"></i>
					<span>系统管理</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>


			</a>
				<ul class="treeview-menu">

					<li id="system-setting">
						<security:authorize access="hasRole('ADMIN_SVIP')">
						<a
						href="${pageContext.request.contextPath}/user/findAll.do?page=1&pageSize=4"> <i
							class="fa fa-circle-o"></i> 用户管理
					    </a>
						</security:authorize>
					</li>
					<li id="system-setting">
						<security:authorize access="hasRole('ADMIN_SVIP')">
						<a
						href="${pageContext.request.contextPath}/role/findAll.do?page=1&pageSize=4"> <i
							class="fa fa-circle-o"></i> 角色管理
					</a>
						</security:authorize>
					</li>
					<li id="system-setting">
						<security:authorize access="hasRole('ADMIN_SVIP')">
						<a
						href="${pageContext.request.contextPath}/permission/findAll.do?page=1&pageSize=4">
							<i class="fa fa-circle-o"></i> 资源权限管理
					</a>
						</security:authorize>
					</li>
					<li id="system-setting"><a
						href="${pageContext.request.contextPath}/sysLog/findAll.do?page=1&pageSize=4"> <i
							class="fa fa-circle-o"></i> 访问日志
					</a></li>
				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-cube"></i>
					<span>项目管理</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">

					<li id="system-setting"><a
						href="${pageContext.request.contextPath}/classify/findAll.do?page=1&pageSize=4">
							<i class="fa fa-circle-o"></i> 项目列表
					</a></li>
					<%--<li id="system-setting"><a
						href="${pageContext.request.contextPath}/order/findAll.do"> <i
							class="fa fa-circle-o"></i> 订单管理
					</a></li>
					<li id="system-setting"><a
							href="${pageContext.request.contextPath}/tool/findAll.do"> <i
							class="fa fa-circle-o"></i> 车辆管理
					</a></li>--%>
				</ul></li>
			<li class="treeview"><a href="#"><i class="fa fa-shopping-cart"></i>
				<span>订单管理</span><span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
				</a>
				<ul class="treeview-menu">
					<li id="system-setting"><a
							href="${pageContext.request.contextPath}/order/findAll.do?page=1&pageSize=4"> <i
							class="fa fa-circle-o"></i> 订单列表
					</a></li>
				</ul></li>
			<li class="treeview"><a href="#"><i class="fa fa-automobile"></i>
				<span>车辆管理</span><span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
			</a>
				<ul class="treeview-menu">
					<li id="system-setting"><a
							href="${pageContext.request.contextPath}/tool/findAll.do?page=1&pageSize=4"> <i
							class="fa fa-circle-o"></i> 车辆列表
					</a></li>
				</ul></li>
			<li class="treeview"><a href="#"><i class="fa fa-user-md"></i>
				<span>职员管理</span><span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
			</a>
				<ul class="treeview-menu">
					<li id="system-setting"><a
							href="${pageContext.request.contextPath}/employee/findAll.do?page=1&pageSize=4"> <i
							class="fa fa-circle-o"></i> 职员列表
					</a></li>
				</ul></li>
			<!--fa-envelope-o--->
			<li class="treeview"><a href="#"><i class="fa fa-envelope"></i>
				<span>留言管理</span><span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
			</a>
				<ul class="treeview-menu">
					<li id="system-setting"><a
							href="${pageContext.request.contextPath}/message/findAll.do?page=1&pageSize=4"> <i
							class="fa fa-circle-o"></i> 留言列表
					</a></li>
				</ul></li>
		</ul>
	</section>
	<!-- /.sidebar -->
</aside>