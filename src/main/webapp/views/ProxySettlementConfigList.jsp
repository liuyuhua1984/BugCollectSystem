<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctxPage" value="${pageContext.request.contextPath}" />
<%@include file="sys/header.jsp"%>
<%@include file="sys/navibar.jsp"%>
<%@include file="sys/sidebar.jsp"%>
<!-- 
<div class="btn-toolbar" style="margin-bottom:2px;">
	<a href="${ctxPage}/noticeboard/add_view" class="btn btn-primary">
		<i class="icon-plus"></i>
		添加公告
	</a>
</div>
 -->
<div class="block">
	<a href="#page-stats" class="block-heading" data-toggle="collapse">${page_title}</a>
	<div id="page-stats" class="block-body collapse in">
		<table class="table table-striped table-bordered table-condensed">
			<thead>
				<tr>
					<th style="width :100px">序号</th>
					<th style="width :140px">一级代理</th>
					<th style="width :100px">二级代理</th>
					<th style="width :100px">三级代理</th>
					<th style="width :100px">提成基础金额</th>
					<th style="width :30px">操作</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${list}" var="item">
					<tr>

						<td>${item.id}</td>
								<td>${item.oneLevel}%</td>
										<td>${item.twoLevel}%</td>
										<td>${item.threeLevel}%</td>
										<td>${item.noneLevel}</td>
						<td>
								<a href="${ctxPage}/proxy/settlement_config_add?id=${item.id}">修改</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<!--- START 分页模板 --->
		${pages}
		<!--- END --->
	</div>
</div>

<%@include file="sys/footer.jsp"%>