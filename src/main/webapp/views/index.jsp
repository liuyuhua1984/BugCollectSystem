<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctxPage" value="${pageContext.request.contextPath}" />

<%@include file="sys/header.jsp"%>
<%@include file="sys/navibar.jsp"%>
<%@include file="sys/sidebar.jsp"%>


<!--- START 以上内容不需更改，保证该TPL页内的标签匹配即可 --->

<div class="block">
	<a href="#page-stats" class="block-heading" data-toggle="collapse">当前用户信息</a>
	<div id="page-stats" class="block-body collapse in">

		<table class="table table-striped table-bordered table-condensed">

			<tr>
				<td>用户名</td>
				<td>手机号</td>
				<td>Email</td>
				<td>登录时间</td>
				<td>登录IP</td>
				<c:if test="${user_info.osaUser.isProxy eq '1'}">
					<td>微信号</td>
					<td>上级代理</td>
					<td>邀请码</td>
					<td>代理级别</td>
					<td>剩余房卡</td>
					<td>银行卡</td>
				</c:if>
				<td>创建时间</td>
			</tr>
			<tr>
				<td>${user_info.osaUser.userName}</td>
				<td>${user_info.osaUser.mobile}</td>
				<td>${user_info.osaUser.email}</td>
				<td>
					<fmt:formatDate value="${user_info.osaUser.loginTime}" pattern="yyyy-MM-dd HH:mm:ss" />
				</td>
				<td>${user_info.osaUser.loginIp}</td>
				<c:if test="${user_info.osaUser.isProxy eq '1'}">
					<td>${user_info.osaUser.wechat}</td>
					<td>${user_info.osaUser.fatherName}</td>
					<td>${user_info.osaUser.inviteCode}</td>
					<td>${user_info.osaUser.proxyLevel}</td>
					<td>${user_info.osaUser.remainMoney}</td>
					<td>${user_info.osaUser.bank}</td>
				</c:if>
				<td>
					<fmt:formatDate value="${user_info.osaUser.createTime}" pattern="yyyy-MM-dd HH:mm:ss" />
				</td>
			</tr>
		</table>
	</div>

	<div class="alert alert-success">
		<button type="button" class="close" data-dismiss="alert">×</button>
		<strong>注意！</strong>请保管好您的个人信息，一点发生密码泄露请紧急联系管理员。
	</div>
</div>


<!--- END 以下内容不需更改，请保证该TPL页内的标签匹配即可 --->
<%@include file="sys/footer.jsp"%>