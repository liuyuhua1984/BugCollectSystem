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
		<ul class="nav pull-right">

			<li id="fat-menu" class="dropdown">
				<a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">
					<i class="icon-user"></i> ${user_info.osaUser.userName} <i class="icon-caret-down"></i>
				</a>

				<ul class="dropdown-menu">
					<!-- <li><a tabindex="-1" href="_ADMIN_/panel/profile">我的账号</a></li>-->
					<li>
						<a tabindex="1" href="${ctxPage}/logout">登出</a>
					</li>
				</ul>
			</li>

		</ul>
		<a class="brand" href="${ctxPage}/index">
			<span class="first"></span>
			<span class="second">${sessionScope.company}</span>
		</a>
	</div>
</div>