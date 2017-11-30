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
	<a href="${ctxPage}/proxy/settlement_request" class="btn btn-primary">
		<i class="icon-plus"></i>
		结算请求
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
					<th style="width: 150px">代理</th>
					<th style="width: 80px">金额</th>
					<th style="width: 100px">申请时间</th>
					<th style="width: 100px">操作</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${list}" var="item">
					<tr>
						<td style="text-align: center">
							<input type="checkbox" name="ids" value="${item.id}" id="act${item.id}" />
						</td>

						<td>${item.name}</td>
						<td>${item.money}</td>
						<td>
							<fmt:formatDate value="${item.createTime}" pattern="yyyy-MM-dd HH:mm:ss" />
						</td>
						<td>
							<a href="${ctxPage}/proxy/settlement_pay?id=${item.id}" onclick=" return confirm('你确定要与${item.name}结算${item.money}元?'); return false;">结算</a>
							&nbsp;
							<!--  <a href="${ctxPage}/proxy/settlement_see?id=${item.id}">查看</a>-->
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
<script type="text/javascript">
	var msg = "${msg}";
	if (msg != null && msg != "") {
		alert(msg);
	}
</script>


<%@include file="sys/footer.jsp"%>