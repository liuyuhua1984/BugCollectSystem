<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctxPage" value="${pageContext.request.contextPath}" />
<%@include file="sys/header.jsp"%>
<%@include file="sys/navibar.jsp"%>
<%@include file="sys/sidebar.jsp"%>

<div class="well">
	<ul class="nav nav-tabs">
		<li class="active">
			<a href="#home" data-toggle="tab">${page_title}</a>
		</li>
	</ul>

	<div id="myTabContent" class="tab-content">
	<div class="tab-pane active in" id="home">
			<form id="tab" method="post" action="${ctxPage}/proxy/settlement_config_add" autocomplete="off">
			<input type="hidden"  name ="id" value="${proxyConfig.id}">
				<label>一级代理提成比例</label>
				<input type="number" maxlength="3" id="oneLevel" name="oneLevel"  class="input-xlarge"  value="${proxyConfig.oneLevel}" placeholder="请填写你的一级代理提成比例" />

				<label>二级代理提成比例</label>
				<input type="number" maxlength="3" class="input-xlarge" id="twoLevel" name="twoLevel" value="${proxyConfig.twoLevel}" placeholder="请填写你的二级代理提成比例" />
				<label>三级代理提成比例</label>
				<input type="number" maxlength="3" class="input-xlarge" id="threeLevel" name="threeLevel" value="${proxyConfig.threeLevel}" placeholder="请填写你的三级代理提成比例" />
				
				<label>提成基础金额</label>
				<input type="number" maxlength="3" class="input-xlarge" id="noneLevel" name="noneLevel" value="${proxyConfig.noneLevel}" placeholder="请填写提成基础金额" />

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
        obj.value = obj.value.replace(/[^\d.]/g, "");  //清除“数字”和“.”以外的字符
        obj.value = obj.value.replace(/^\./g, "");  //验证第一个字符是数字而不是.
        obj.value = obj.value.replace(/\.{2,}/g, "."); //只保留第一个. 清除多余的.
        obj.value = obj.value.replace(".", "$#$").replace(/\./g, "").replace("$#$", ".");
    }
</script>
<%@include file="sys/footer.jsp"%>