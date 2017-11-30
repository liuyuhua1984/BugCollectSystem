<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctxPage" value="${pageContext.request.contextPath}" />
<%@include file="sys/header.jsp"%>
<%@include file="sys/navibar.jsp"%>
<%@include file="sys/sidebar.jsp"%>
<div class="btn-toolbar" style="margin-bottom:2px;">
	<a href="${ctxPage}/noticeboard/add_view" class="btn btn-primary">
		<i class="icon-plus"></i>
		添加公告
	</a>
</div>

<div class="block">
	<a href="#page-stats" class="block-heading" data-toggle="collapse">${page_title}</a>
	<div id="page-stats" class="block-body collapse in">
		<table class="table table-striped table-bordered table-condensed">
			<thead>
				<tr>

					<th style="width :100px">标题</th>
					<th style="width :140px">时间</th>
					<c:choose>
						<c:when test="${channel eq '2'}">
							<th style="width :100px">公告栏内容</th>
						</c:when>
						<c:otherwise>
							<th style="width :100px">公告栏图片</th>
						</c:otherwise>
					</c:choose>

					<th style="width :140px">状态</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${list}" var="item">
					<tr>

						<td>${item.title}</td>
						<td>
							<fmt:formatDate value="${item.createTime}" pattern="yyyy-MM-dd HH:mm:ss" />
						</td>
						<c:choose>
							<c:when test="${channel eq '2'}">
								<td class="center">
									<input name="info" value="${item.content}" readonly="readonly">
								</td>
							</c:when>
							<c:otherwise>
								<td class="center">
									<img width="100" height="30" src="${ctxPage}/${item.content}">
								</td>
							</c:otherwise>
						</c:choose>
						<td>
							<c:choose>
								<c:when test="${item.status eq '1'}">
							成功
							</c:when>
								<c:otherwise>
								失败
							</c:otherwise>
							</c:choose>
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