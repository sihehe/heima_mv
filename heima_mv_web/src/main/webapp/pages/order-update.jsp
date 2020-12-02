<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 页面meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>数据 - AdminLTE2定制版</title>
<meta name="description" content="AdminLTE2定制版">
<meta name="keywords" content="AdminLTE2定制版">

<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
	name="viewport">


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/morris/morris.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/datepicker/datepicker3.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.theme.default.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/select2/select2.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/adminLTE/css/skins/_all-skins.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.skinNice.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-slider/slider.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/plugins/cityselect/city.css">
</head>

<body class="hold-transition skin-purple sidebar-mini">

	<div class="wrapper">

		<!-- 页面头部 -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- 页面头部 /-->
		<!-- 导航侧栏 -->
		<jsp:include page="aside.jsp"></jsp:include>
		<!-- 导航侧栏 /-->

		<!-- 内容区域 -->
		<div class="content-wrapper">

			<!-- 内容头部 -->
			<section class="content-header">
			<h1>
				订单管理 <small>订单表单</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="${pageContext.request.contextPath}/index.jsp"><i
						class="fa fa-dashboard"></i> 首页</a></li>
				<li><a
					href="${pageContext.request.contextPath}/order/findAll.do?page=1&pageSize=4">订单管理</a></li>
				<li class="active">订单表单</li>
			</ol>
			</section>
			<!-- 内容头部 /-->

			<form action="${pageContext.request.contextPath}/order/getOrder.do"
				method="post">
				<!-- 正文区域 -->
				<section class="content"> <!--订单信息-->

				<div class="panel panel-default">
					<div class="panel-heading">订单信息</div>
					<div class="row data-type">
						<input type="hidden" name="id" value="${order.id}"/>
						<div class="col-md-2 title">订单编号</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" name="orderNum" id="edit_id"
								placeholder="订单编号"  value="${order.orderNum}">
						</div>

						<div class="col-md-2 title">下单客户</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" name="orderName" id="edit_orderName"
								placeholder="下单客户" value="${order.orderName}">
						</div>

						<div class="col-md-2 title">联系方式</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" placeholder="联系方式"  id="edit_orderTel"
								   name="orderTel" value="${order.orderTel}">
						</div>


						<div class="col-md-2 title">客户级别</div>
						<div class="col-md-4 data">
							<select class="form-control select2" style="width: 100%"
								id="edit_orderLevel"	name="orderLevel" value="${order.orderLevelStr}">0 普通用户 1 vip 2 高级vip 3 超级vip
								<option <c:if test="${order.orderLevelStr=='普通用户'}">selected</c:if> value="0">普通用户
								</option>
								<option <c:if test="${order.orderLevelStr=='vip'}">selected</c:if> value="1">vip
								</option>
								<option <c:if test="${order.orderLevelStr=='高级vip'}">selected</c:if> value="2">高级vip
								</option>
								<option <c:if test="${order.orderLevelStr=='超级vip'}">selected</c:if> value="3">超级vip
								</option>
							</select>
						</div>

						<div class="col-md-2 title">下单时间</div>
						<div class="col-md-4 data">
							<div class="input-group date">
								<div class="input-group-addon">
									<i class="fa fa-calendar"></i>
								</div>
								<input type="text" class="form-control pull-right"
									id="datepicker-a3" name="orderTime" value="${order.orderTimeStr}">
							</div>
						</div>

						<div class="col-md-2 title">订单距离</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" placeholder="订单距离" id="edit_orderMile"
								   name="orderMile" value="${order.orderMile}">
						</div>

						<div class="col-md-2 title">搬家时间</div>
						<div class="col-md-4 data">
							<div class="input-group date">
								<div class="input-group-addon">
									<i class="fa fa-calendar"></i>
								</div>
								<input type="text" class="form-control pull-right"
									   id="datepicker-a4" name="orderDate" value="${order.orderDateStr}">
							</div>
						</div>

						<div class="col-md-2 title">服务项目</div>
						<div class="col-md-4 data">
							<select class="form-control select2" style="width: 100%"
									name="classifyId" id="edit_classifyId" value="${order.classifyId}">
								<c:forEach items="${pageInfo_classify.list}" var="classify">
									<option value="${classify.id}"
									   <c:if test="${classify.classifyName ==order.classify.classifyName}">selected</c:if>>
										  ${classify.classifyName}
									</option>
								</c:forEach>
							</select>
						</div>

						<div class="col-md-2 title">服务车型</div>
						<div class="col-md-4 data">
							<select class="form-control select2" style="width: 100%"
									name="toolId" id="edit_toolId" value="${order.toolId}">
								<c:forEach items="${pageInfo_tool.list}" var="tool">
									<option value="${tool.id}"
											<c:if test="${tool.toolName==order.tool.toolName}">selected</c:if>>
											${tool.toolName}
									</option>
								</c:forEach>
							</select>
						</div>

						<div class="col-md-2 title">订单状态</div>
						<div class="col-md-4 data">
							<select class="form-control select2" style="width: 100%"
									name="orderStatus" value="${order.orderStatusStr}">
									<option <c:if test="${order.orderStatusStr=='未支付'}">selected</c:if> value="0">未支付
									</option>
									<option <c:if test="${order.orderStatusStr=='已支付'}">selected</c:if> value="1">已支付
									</option>
									<option <c:if test="${order.orderStatusStr=='已取消'}">selected</c:if> value="2">已取消
									</option>
									<option <c:if test="${order.orderStatusStr=='待处理'}">selected</c:if> value="3">待处理
									</option>
							</select>
						</div>


						<div class="col-md-2 title">支付类型</div>
						<div class="col-md-4 data">
							<select class="form-control select2" style="width: 100%"
									name="payType" value="${order.payTypeStr}">0 微信 1 支付宝 2 现金
								<option <c:if test="${order.payTypeStr=='微信'}">selected</c:if> value="0">微信
								</option>
								<option <c:if test="${order.payTypeStr=='支付宝'}">selected</c:if> value="1">支付宝
								</option>
								<option <c:if test="${order.payTypeStr=='现金'}">selected</c:if> value="2">现金
							</select>
						</div>

						<div class="col-md-2 title">居住地址</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" placeholder="居住地址" id="edit_orderAddress"
								   name="orderAddress" autocomplete="off" value="${order.orderAddress}">
						</div>

						<div class="col-md-2 title">搬家地址</div>
						<div class="col-md-10 data">
							<input type="text" class="form-control" placeholder="搬家地址" id="edit_orderMaddress"
								   name="orderMaddress" autocomplete="off" value="${order.orderMaddress}">
						</div>

						<div class="col-md-2 title rowHeight2x">客户留言</div>
						<div class="col-md-10 data rowHeight2x">
							<textarea class="form-control" rows="3" placeholder="客户留言" id="edit_orderDesc"
								name="orderDesc" value="${order.orderDesc}">
								${order.orderDesc}
							</textarea>
						</div>

					</div>
				</div>
				<!--项目信息/--> <!--工具栏-->
					<div class="box-tools text-center">
						<button type="submit" class="btn bg-maroon" >修改</button>
						<button type="button" class="btn bg-default"
								onclick="history.back(-1);">返回</button>
						<button type="button" class="btn bg-default" onclick="clearOrder()">重置</button>
					</div>
				<!--工具栏/--> </section>
				<!-- 正文区域 /-->
			</form>
		</div>
		<!-- 内容区域 /-->

		<!-- 底部导航 -->
		<footer class="main-footer">
		<div class="pull-right hidden-xs">
			<b>Version</b> 1.0.8
		</div>
		<strong>Copyright &copy; 2014-2017 <a
			href="http://www.itcast.cn">软件开发部</a>.
		</strong> All rights reserved. </footer>
		<!-- 底部导航 /-->

	</div>

	<script
			src="${pageContext.request.contextPath}/plugins/cityselect/jquery.min.js"></script>
	<script
			src="${pageContext.request.contextPath}/plugins/cityselect/city.json.js"></script>
	<script
			src="${pageContext.request.contextPath}/plugins/cityselect/Popt.js"></script>
	<script
			src="${pageContext.request.contextPath}/plugins/cityselect/citySet.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jQueryUI/jquery-ui.min.js"></script>
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/raphael/raphael-min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/morris/morris.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/sparkline/jquery.sparkline.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/knob/jquery.knob.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/daterangepicker/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datepicker/bootstrap-datepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/fastclick/fastclick.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/adminLTE/js/app.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/select2/select2.full.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/to-markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/ckeditor/ckeditor.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.extensions.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/chartjs/Chart.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.resize.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.pie.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.categories.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-slider/bootstrap-slider.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js"></script>

	<script>
		$(document).ready(function() {
			// 选择框
			$(".select2").select2();

			// WYSIHTML5编辑器
			$(".textarea").wysihtml5({
				locale : 'zh-CN'
			});edit_orderMaddress
            $("#edit_orderMaddress").click(function (e) {
                SelCity(this,e);
            });
            $("#edit_orderAddress").click(function (e) {
                SelCity(this,e);
            });
            $("s").click(function (e) {
                SelCity(document.getElementById("edit_orderMaddress"),e);
            });
            $("s").click(function (e) {
                SelCity(document.getElementById("edit_orderAddress"),e);
            });
		});

		// 设置激活菜单
		function setSidebarActive(tagUri) {
			var liObj = $("#" + tagUri);
			if (liObj.length > 0) {
				liObj.parent().parent().addClass("active");
				liObj.addClass("active");
			}
		}

		$(document).ready(function() {
			$('#datepicker-a3').datetimepicker({
				format : "yyyy-mm-dd hh:ii",
				autoclose : true,
				todayBtn : true,
				language : "zh-CN"
			});
            $('#datepicker-a4').datetimepicker({
                format : "yyyy-mm-dd hh:ii",
                autoclose : true,
                todayBtn : true,
                language : "zh-CN"
            });
		});

		$(document).ready(function() {
			// 激活导航位置
			setSidebarActive("order-manage");
			$("#datepicker-a3").datetimepicker({
				format : "yyyy-mm-dd hh:ii",

			});
            $("#datepicker-a4").datetimepicker({
                format : "yyyy-mm-dd hh:ii",
            });

		});
        //清空新建窗口中的数据
        function clearOrder() {
            $("#edit_id").val("");
            $("#edit_orderNum").val("");
            $("#edit_orderName").val("");
            $("#datepicker-a3").val("");
            $("#datepicker-a4").val("");
            $("#edit_orderMile").val("");
            $("#edit_orderTel").val("");
            $("#edit_orderLevel").val("");
            $("#edit_orderAddress").val("");
            $("#edit_orderMaddress").val("");
            $("#edit_orderStatus").val("");
            $("#edit_payType").val("");
            $("#edit_orderDesc").val("");
            $("#edit_classifyId").val("");
            $("#edit_toolId").val("");
        }


	</script>


</body>

</html>