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

					<th style="width: 50px">序</th>
					<th style="width: 150px">交易号</th>
					<th style="width: 80px">代理名称</th>
					<th style="width: 80px">充值金额</th>
					<th style="width: 200px">充值时间</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${list}" var="item">
					<tr>
						<td style="text-align: center">
							<input type="checkbox" name="ids" value="${item.id}" id="act${item.id}" />
						</td>

						<td>${item.traderOrder}</td>
						<td>${item.proxyName}</td>
						<td>${item.money}</td>
						<td>
							<fmt:formatDate value="${item.createTime}" pattern="yyyy-MM-dd HH:mm:ss" />
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