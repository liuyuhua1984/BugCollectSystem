<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctxPage" value="${pageContext.request.contextPath}" />
<%@include file="mobile_header.jsp"%>
<%@include file="mobile_navibar.jsp"%>
<%@include file="mobile_sidebar.jsp"%>
<!-- 
<div class="btn-toolbar" style="margin-bottom:2px;">
	<a href="${ctxPage}/noticeboard/add_view" class="btn btn-primary">
		<i class="icon-plus"></i>
		添加公告
	</a>
</div>
 -->
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
			<label>玩家ID，查询所有用户请留空</label>
			<input type="number" name="playerId" value="${playerId}" placeholder="输入玩家ID">
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
					<th style="width:80px">玩家ID</th>
					<th style="width:100px">角色名</th>
					<th style="width:150px">账号</th>
					<th style="width:80px">房卡</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${list}" var="item">
					<tr>
						<td>${item.playerId}</td>
						<td>${item.roleName}</td>
						<td>${item.openId}</td>
						<td>${item.curMoney}</td>
				
					
					
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
<%@include file="mobile_footer.jsp"%>