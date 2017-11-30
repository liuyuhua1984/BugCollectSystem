<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctxPage" value="${pageContext.request.contextPath}" />
<%@include file="mobile_header.jsp"%>
<%@include file="mobile_navibar.jsp"%>

<%@include file="mobile_sidebar.jsp"%>
<div class="block">
	<a href="#page-stats" class="block-heading" data-toggle="collapse">我的推广</a>
	<div id="page-stats" class="block-body collapse in">
		<table class="table table-striped table-bordered table-condensed">

			<tr>
				<td>代理昵称</td>
				<td>${sysUser.osaUser.userName}</td>
			</tr>
			<tr>
				<td>真实姓名</td>
				<td>${sysUser.osaUser.realName}</td>
			</tr>
			<tr>
				<td>手机号</td>
				<td>${sysUser.osaUser.mobile}</td>
			</tr>
			<tr>
				<td>邀请码</td>
				<td>${sysUser.osaUser.inviteCode}</td>
			</tr>
			<tr>
				<td>推广人数</td>
				<td><a href="${ctxPage}/mobile/player_list">${sysUser.playerNum}</a></td>
			</tr>
			<tr>
				<td>注册时间</td>
				<td>
					<fmt:formatDate value="${sysUser.osaUser.createTime}" pattern="yyyy-MM-dd HH:mm:ss" />
				</td>
			</tr>

			<tr>
				<td colspan="2" style =" text-align: center;">金额信息</td>
			</tr>
				<c:if test="${channel == 2}">
			<tr>
				<td>剩余金额</td>
				<td>${user_info.osaUser.remainMoney}</td>
			</tr>
		</c:if>
			<tr>
				<td>可提现金额</td>
				<td>${user_info.osaUser.remainFetchMoney}</td>
			</tr>

			<tr>
				<td>累计收益</td>
				<td>${user_info.osaUser.totalFetchMoney}</td>
			</tr>

		<tr>
				<td>提现金额</td>
				<td><a href="${ctxPage}/mobile/settlement_request">提现</a></td>
			</tr>
			<c:if test="${channel == 2}">
				<tr>
				<td>售卡</td>
				<td><a href="${ctxPage}/mobile/recharge_money">售卡</a></td>
			</tr>
			</c:if>
	
			<tr>
				<td><a href="javascript:history.back();">返回</a></td>
				<td><a href="${ctxPage}/mobile/index">首页</a></td>
			</tr>
		</table>

	</div>
</div>



<script type="text/javascript">
	var msg = "${msg}";
	if (msg != null && msg != "") {
		alert(msg);
	}

	function queryTrader() {
		window.location.href = "${ctxPage}/mobile/order_list"
	}

	function myInfo() {
		window.location.href = "${ctxPage}/mobile/my_info"
	}
</script>
<%@include file="mobile_footer.jsp"%>