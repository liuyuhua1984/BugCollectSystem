<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:choose>
	<c:when test="${sidebarStatus == 'yes' }">
		<div id="sidebar-nav" class="sidebar-nav">
	</c:when>
	<c:otherwise>
		<div id="sidebar-nav" class="sidebar-nav-hide">
	</c:otherwise>
</c:choose>

<c:forEach items="${sidebar}" var="module">


	<c:if test="${fn:length(module.menuList) gt 0}">
		<a href="#sidebar_menu_${module.module.moduleId}" class="nav-header collapsed" data-toggle="collapse">
			<i class="${module.module.moduleIcon}"></i>
			${module.module.moduleName}
			<i class="icon-chevron-up"></i>
		</a>

		<c:choose>
			<c:when test="${ module.module.moduleId eq current_module_id}">
				<ul id="sidebar_menu_${module.module.moduleId}" class="nav nav-list collapse in">
			</c:when>

			<c:otherwise>
				
				<ul id="sidebar_menu_${module.module.moduleId}" class="nav nav-list collapse">
			</c:otherwise>
		</c:choose>

		<c:forEach items="${module.menuList}" var="menu_list">
		
			<li>
				<a href="${ctxPage}${menu_list.menuUrl.menuUrl}">${menu_list.menuUrl.menuName}</a>
			</li>
		</c:forEach>

		</ul>
	</c:if>
</c:forEach>

<!--  
<a target="_blank" href="${ctxPage}/index" class="nav-header">
	<i class="icon-question-sign"></i>
	帮助
</a>-->
</div>
<!--- 以上为左侧菜单栏 sidebar --->

<c:choose>
	<c:when test="${sidebarStatus == 'yes' }">
		<div id="content" class="content">
	</c:when>
	<c:otherwise>
		<div id="content" class="content-fullscreen">
	</c:otherwise>

</c:choose>

<div class="header">
	<div class="stats">
		<p class="stat">
			<!--span class="number"></span-->
		</p>
	</div>

	<h1 class="page-title">${content_header.menuUrl.menuName}</h1>
</div>

<ul class="breadcrumb">
	<li>
		<a href="${ctxPage}${content_header.moduleUrl}"> ${content_header.moduleName} </a>
		<span class="divider">/</span>
	</li>
	<c:if test="${ ! empty content_header.fatherMenuUrl  }">
	<c:if test="content_header.menuUrl.isShow eq '1'">
		<li>
			<a href="${ctxPage }${content_header.fatherMenuUrl}"> ${content_header.fatherMenuName} </a>
			<span class="divider">/</span>
		</li>
		</c:if>
	</c:if>
	<li class="active">${content_header.menuUrl.menuName}</li>
</ul>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="bb-alert alert alert-info" style="display: none;">
			<span>操作成功</span>
		</div>