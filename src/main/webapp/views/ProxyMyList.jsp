<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctxPage" value="${pageContext.request.contextPath}" />
<%@include file="sys/header.jsp"%>
<%@include file="sys/navibar.jsp"%>
<%@include file="sys/sidebar.jsp"%>
<div style="border:0px;padding-bottom:5px;height:auto">
	<form action="" method="POST" style="margin-bottom:0px">

		<div style="float:left;margin-right:5px">
			<label> 选择起始时间 </label>
			<input type="text" id="start_date" name="startDate" value="${startDate}" placeholder="起始时间">
		</div>
		<div style="float:left;margin-right:5px">
			<label>选择结束时间</label>
			<input type="text" id="end_date" name="endDate" value="${endDate}" placeholder="结束时间">
		</div>
		
		<div style="float:left;margin-right:5px">
			<label>电话，查询所有用户请留空</label>
			<input type="number" name="phone" value="${phone}" placeholder="输入电话">
		</div>
		 <div style="float:left;margin-right:5px">
			<label>邀请码，查询所有用户请留空</label>
			<input type="text" name="inviteCode" value="${inviteCode}" placeholder="输入邀请码">
		</div>
		
		<div class="btn-toolbar" style="padding-top:25px;padding-bottom:0px;margin-bottom:0px">
			<button type="submit" class="btn btn-primary">
				<strong>检索</strong>
			</button>
		</div>
		
		<div style="clear:both;"></div>
	</form>
</div>

<div class="block">
	<a href="#page-stats" class="block-heading" data-toggle="collapse">${page_title}</a>
	<div id="page-stats" class="block-body collapse in">
		<table class="table table-striped table-bordered table-condensed">
			<thead>
				<tr>

					<th style="width :100px">代理ID</th>
					<th style="width :140px">代理名称</th>
					<th style="width :100px">电话</th>
					<th style="width :100px">邀请码</th>
					<th style="width :100px">代理等级</th>
					<th style="width :100px">上级代理</th>
					<th style="width :100px">房卡</th>
					<th style="width :100px">银行卡</th>
					<th style="width :100px">注册时间</th>
					<th style="width :30px">操作</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${list}" var="item">
					<tr>

						<td>${item.id}</td>
						<td>
							[
							<a href="${ctxPage}/proxy/see_sub_proxy?id=${item.id}">查看下级代理</a>
							] ${item.userName}
						</td>
						<td>${item.mobile}</td>
						<td>${item.inviteCode}</td>
						<td>${item.proxyLevel}</td>
						<td>${item.fatherName}</td>
						<td>${item.remainMoney}</td>
						<td>${item.bank}</td>
					
						<td>
							<fmt:formatDate value="${item.createTime}" pattern="yyyy-MM-dd HH:mm:ss" />
						</td>
						<td>
						
							<c:if test="${ !empty name}">
								<a href="${ctxPage}/proxy/recharge_sub_proxy?id=${item.id}&myName=${name}">充值</a> /
								<a href="${ctxPage}/proxy/proxy_del?id=${item.id}">删除</a>
							</c:if>
							
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
	$(function() {
		var date = $("#start_date");
		date.datepicker({
			dateFormat : "yy-mm-dd"
		});
		date.datepicker("option", "firstDay", 1);
	});
	$(function() {
		var date = $("#end_date");
		date.datepicker({
			dateFormat : "yy-mm-dd"
		});
		date.datepicker("option", "firstDay", 1);
	});
</script>
<%@include file="sys/footer.jsp"%>