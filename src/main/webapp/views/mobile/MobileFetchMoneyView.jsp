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
							【<a href="javascript:window.history.back();">返回</a>】
							【<a href="${ctxPage}/mobile/index">返回首页</a>】
					</h2>
				</header>

			<form id="tab" method="post" action="${ctxPage}/mobile/settlement_request" autocomplete="off">
				<label>余额</label>
				<input type="text" name="remainMoney" value="${remainMoney}" class="input-xlarge" required="required" readonly="readonly">
				
				<label>提现金额(每次提现申请不低于${proxyConfig.noneLevel}元)</label>
				<input type="number" name="money" value="" class="input-xlarge" required="required" placeholder="提现金额">

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
</script>
<%@include file="mobile_footer.jsp"%>