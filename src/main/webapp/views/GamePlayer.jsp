<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctxPage" value="${pageContext.request.contextPath}" />
<%@include file="sys/header.jsp"%>
<%@include file="sys/navibar.jsp"%>
<%@include file="sys/sidebar.jsp"%>


<form class="form_search" action="${ctxPage}/player_search" method="post" style="margin-bottom:0px">
	<div style="float:left;margin-right:5px">
		<label>角色查询</label>
		<input type="number" name="playerId" value="" placeholder="输入角色ID">
	</div>
	<div style="float:left;margin-right:5px">
		<label>查询账号</label>
		<input type="text" name="openId" value="" placeholder="输入账号名">
	</div>
	<div class="btn-toolbar" style="padding-top:25px;padding-bottom:0px;margin-bottom:0px">
		<button type="submit" class="btn btn-primary">检索</button>
	</div>
	<div style="clear:both;"></div>
</form>

<div class="block">
	<a href="#page-stats" class="block-heading" data-toggle="collapse">玩家列表</a>
	<div id="page-stats" class="block-body collapse in">
		<table class="table table-striped table-bordered table-condensed">
			<thead>
				<tr>
					<th style="width:80px">玩家ID</th>
					<th style="width:100px">角色名</th>
					<th style="width:150px">账号</th>
					<th style="width:80px">房卡</th>
					<th style="width:80px">状态</th>
					<th style="width:100px">邀请码</th>
					<th style="width:80px">登录时间</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${list}" var="item">
					<tr>
						<td>${item.playerId}</td>
						<td>${item.roleName}</td>
						<td>${item.openId}</td>
						<td>${item.curMoney}</td>
						<td>
							<c:choose>
								<c:when test="${item.status eq '1'}">正常</c:when>
								<c:when test="${item.status eq '2'}">禁言中</c:when>
								<c:when test="${item.status eq '3'}">封号中</c:when>
							</c:choose>
						</td>
						<td>
							<c:choose>
								<c:when test="${item.inviteCode != null}">${item.inviteCode}</c:when>
								<c:otherwise>
              						 无
               					</c:otherwise>
							</c:choose>

						</td>
						<td>${item.lastLoginTime}</td>

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