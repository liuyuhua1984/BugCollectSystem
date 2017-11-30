
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctxPage" value="${pageContext.request.contextPath}" />
<%@include file="sys/simple_header.jsp"%>
<body class="simple_body">
	<!--<![endif]-->
	<div class="navbar">
		<div class="navbar-inner">
			<ul class="nav pull-right">
			</ul>
			<a class="brand" href="${ctxPage}/index">
				<span class="first"></span>
				<span class="second">${sessionScope.company}</span>
			</a>
		</div>
	</div>
	<div>
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="dialog">
					<div class="block">
						<p class="block-heading">登入</p>
						<div class="block-body">
							<form name="loginForm" method="post" action="${ctxPage}/login">
								<label>账号</label>
								<input type="text" class="input-xlarge" name="username" value="${userName}" required="true"
									autofocus="true">
								<label>密码</label>
								<input type="password" class="input-xlarge" name="password" value="${password}" required="true">
								<input type="hidden"  name="loginType" value="0" >
								
								<!--  
								<label>验证码</label>
								<input type="text" name="verify_code" class="span4" placeholder="输入验证码" autocomplete="off"
									required="required">
								<a href="#">
									<img title="验证码" id="verify_code" src="${ctxPage}/validate" style="vertical-align:top">
								</a>
								-->
								<div class="clearfix">
									<input type="checkbox" name="rememberMe" value="1">
									记住我
									<span class="label label-info">一个月内不用再次登入</span>
									<input type="submit" class="btn btn-primary pull-right" name="loginSubmit" value="登入" />
								</div>
							</form>
						</div>
					</div>
					<p class="pull-right" style="">
						<a href="www.baidu.com" target="blank"></a>
					</p>
				</div>
				<script type="text/javascript">
					/***验证码**/
					$("#verify_code").click(function() {
						var d = new Date()
						var hour = d.getHours();
						var minute = d.getMinutes();
						var sec = d.getSeconds();
						$(this).attr("src", "${ctxPage}/validate?" + hour + minute + sec);
					});
				</script>
				<%@include file="sys/footer.jsp"%>