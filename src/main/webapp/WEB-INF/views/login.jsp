<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<spring:url value="/static/css/bootstrap.min.css" var="bootstrapCss" />
<spring:url value="/static/css/font-awesome.min.css"
	var="fontawesomeCss" />
<spring:url value="/static/css/custom.css" var="customCss" />
<spring:url value="/static/css/select2.min.css" var="selectCss" />


<spring:url value="/static/js/jquery/jquery.min.js" var="jqueryJs" />

<spring:url value="/static/js/bootstrap/bootstrap.min.js"
	var="bootstrapJs" />
<spring:url value="/static/js/chart/chart.min.js" var="chartJs" />
<spring:url value="/static/js/datepicker/daterangepicker.js"
	var="datepickerJs" />

<spring:url value="/static/js/lists/countries.js" var="countriesJs" />
<spring:url value="/static/js/lists/districts.js" var="districtsJs" />
<spring:url value="/static/js/moment/moment.min.js" var="momentJs" />

<spring:url value="/static/js/select2.min.js" var="selectJs" />
<spring:url value="/static/js/validator.min.js" var="validatorJs" />
<spring:url value="/static/js/custom.js" var="customJs" />

<spring:url value="/static/js/pep/pep.js" var="pepJs" />
<spring:url value="/static/js/un/un.js" var="unJs" />

<spring:url value="/static/images" var="images" />
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${fontawesomeCss}" rel="stylesheet" />
<link href="${customCss}" rel="stylesheet" />
<link href="${selectCss}" rel="stylesheet" />
<link rel="shortcut icon" href="${images}/favicon.ico"
	type="image/x-icon">
<script src="${jqueryJs}"></script>
<script src="${momentJs}"></script>
<script src="${datepickerJs}"></script>
<script src="${countriesJs}"></script>
<script src="${districtsJs}"></script>
<script src="${validatorJs}"></script>
<script src="${pepJs}"></script>
<script src="${selectJs}"></script>
<script src="${bootstrapJs}"></script>
<script src="${chartJs}"></script>
<script src="${customJs}"></script>

<title>Login</title>
</head>
<body class="nav-md">
	<div class="container body">

		<a href="${pageContext.request.contextPath }"><img src="${images}/logo.png" /></a>
		<span style="font-size: 2em; height: 50px; vertical-align: middle;">
			| Login Panel</span>
		<div style="float: right; padding: 0px 10px;">
			Licensed to: <span id="bfi-logo"></span><img
				src="${pageContext.request.contextPath}/bankLogo" height="50px"
				width="66px" />
		</div>
		<!-- page content -->
		<div class="right_col login_col" role="main">
			<div class="clearfix"></div>
			<div class="x_title">
				<h2>
					<i class="fa fa-sign-in"></i> Login <small style="font-size: 12px;">Please
						provide your login details.</small>
				</h2>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
			<div id="login-wrapper">
				<div class="clearfix"></div>
				<c:url var="loginUrl" value="/login" />
				<form action="${loginUrl}" method="post" class="form-horizontal">
					<c:if test="${param.error != null}">
						<div class="alert alert-danger">
							<p>Invalid username and password.</p>
						</div>
					</c:if>
					<c:if test="${param.logout != null}">
						<div class="alert alert-success">
							<p>You have been logged out successfully.</p>
						</div>
					</c:if>
					<div class="input-group input-sm">
						<label class="input-group-addon" for="username"><i
							class="fa fa-user"></i></label> <input type="text" class="form-control"
							id="username" name="ssoId" placeholder="Enter Username" required>
					</div>
					<div class="input-group input-sm">
						<label class="input-group-addon" for="password"><i
							class="fa fa-lock"></i></label> <input type="password"
							class="form-control" id="password" name="password"
							placeholder="Enter Password" required>
					</div>
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
					<div class="form-actions">
						<input type="submit" class="btn btn-block btn-primary btn-default"
							value="Log in">
					</div>
				</form>
			</div>
			<div class="clearfix"></div>
			<br />

		</div>
		<script type="text/javascript">
			$("#bfi-logo").html("${bankName}");
		</script>
		<!-- /page content -->
		<!-- footer content -->
		<footer class="login_col">
		<div class="pull-right">&copy; 2016-2017 TrustAML</div>
		<div class="clearfix"></div>
		</footer>
		<!-- /footer content -->
	</div>
</body>
</html>