<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:choose>
	<c:when test="${sidebarStatus == 'yes' }">
		<body id="body" class="body">
	</c:when>
	<c:otherwise>
		<body id="body" class="body-fullscreen">
	</c:otherwise>

</c:choose>


<!--<![endif]-->
<div class="navbar">


	<div class="navbar-inner">
		<ul class="nav  pull-right">

			<li  class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown" id="dLabel" role="button" >
					<i class="icon-user"></i>
					${sysUser.osaUser.userName}
					<i class="icon-caret-down"></i>
					
				</a>

				<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
					<!-- <li><a tabindex="-1" href="_ADMIN_/panel/profile">我的账号</a></li>-->
					<li>
						<a  tabindex="-1" href="${ctxPage}/mobile/logout">登出</a>
					</li>
				</ul>
			</li>

		</ul>
		
		<a class="brand" href="javascript:window.history.back();">
			<span class="first"></span>
			<span class="second" style="color:red;">返回</span>
		</a>
		<a class="brand" href="${ctxPage}/mobile/index">
			<span class="first"></span>
			<span class="second">邀请码:${sysUser.osaUser.inviteCode}</span>
		</a>

		
	</div>


</div>