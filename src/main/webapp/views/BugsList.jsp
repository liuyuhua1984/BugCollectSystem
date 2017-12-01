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
			<label>玩家账号</label>
			<input type="text" name="openId" value="" placeholder="玩家账号">
		</div>
		 <div style="float:left;margin-right:5px">
			<label>玩家Id</label>
			<input type="text" name="playerId" value="" placeholder="玩家Id">
		</div>
		
		<div style="float:left;margin-right:5px">
			<label>玩家名称</label>
			<input type="text" name="playerName" value="" placeholder="玩家名称">
		</div>
		
		<div style="float:left;margin-right:5px">
			<label>描述</label>
			<input type="text" name="descs" value="" placeholder="bug描述">
		</div>
		
		<div style="float:left;margin-right:5px">
			<label>项目</label>
			<input type="text" name="folder" value="jz" placeholder="项目">
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
					<th style="width :50px">项目</th>
					<th style="width :100px">玩家账号</th>
					<th style="width :100px">玩家Id</th>
					<th style="width :100px">玩家名称</th>
					<th style="width :100px">描述</th>
					<th style="width :100px">记录时间</th>
					<th style="width :30px">操作</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${list}" var="item">
					<tr>
						<td>${item.folder}</td>
						<td>${item.openId}</td>
						<td>
							 ${item.playerId}
						</td>
						<td>${item.playerName}</td>
						<td>${item.descs}</td>
					
						<td>
							<fmt:formatDate value="${item.createTime}" pattern="yyyy-MM-dd HH:mm:ss" />
						</td>
						<td>
								<a href="${ctxPage}/download_file?id=${item.id}">下载</a> 
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