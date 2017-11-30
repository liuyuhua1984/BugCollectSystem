<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctxPage" value="${pageContext.request.contextPath}" />
<%@include file="mobile_header.jsp"%>
<%@include file="mobile_navibar.jsp"%>
<%@include file="mobile_sidebar.jsp"%>

<div class="well">
	<ul class="nav nav-tabs">
		<li class="active">
			<a href="#home" data-toggle="tab">${page_title}</a>
		</li>
	</ul>

	<div id="myTabContent" class="tab-content">
		<div class="tab-pane active in" id="home">

			<header>
				<h2>
					【
					<a href="javascript:window.history.back();">返回</a>
					】 【
					<a href="${ctxPage}/mobile/index">返回首页</a>
					】
				</h2>
			</header>

			<form id="tab" method="post" action="${ctxPage}/mobile/recharge_money" autocomplete="off">
				<c:choose>
					<c:when test="${empty gamePlayer.playerId}">
						<label>请输入玩家ID</label>
						<input type="number" name="playerId" value="${remainMoney}" class="input-xlarge" required="required">
					</c:when>
					<c:otherwise>
						<label>代理的房卡</label>
						<input type="number" name="myMoney" value="${myUser.remainMoney}" class="input-xlarge" readonly="readonly">

						<label>玩家名称</label>
						<input type="number" name="nextProxy" value="${gamePlayer.roleName}" class="input-xlarge" readonly="readonly">
						<label>玩家ID</label>
						<input type="text" name="playerId" value="${gamePlayer.playerId}" class="input-xlarge" readonly="readonly">

						<label>充值金额</label>
						<input type="number" name="money" value="" class="input-xlarge" required="required" onkeyup="clearNoNum(this);" placeholder="请输入金额">
					</c:otherwise>
			  </c:choose>


				<div class="btn-toolbar">
					<button type="submit" class="btn btn-primary">
						<strong>提交</strong>
					</button>
					<div class="btn-group"></div>
				</div>

			</form>
		</div>
	</div>
</div>
<script type="text/javascript">
	var msg = "${msg}";
	if (msg != null && msg != "") {
		alert(msg);
	}


	/**
     * 限制数字输入
     * @param obj
     */
	function clearNoNum(obj) {
		obj.value = obj.value.replace(/[^\d.]/g, ""); //清除“数字”和“.”以外的字符
		obj.value = obj.value.replace(/^\./g, ""); //验证第一个字符是数字而不是.
		obj.value = obj.value.replace(/\.{2,}/g, "."); //只保留第一个. 清除多余的.
		obj.value = obj.value.replace(".", "$#$").replace(/\./g, "").replace("$#$", ".");
	}
</script>
<%@include file="mobile_footer.jsp"%>