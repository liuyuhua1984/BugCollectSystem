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

			<form id="tab" method="post" action="${ctxPage}/proxy/add" autocomplete="off">
					<label>代理Id</label>
				<input type="text" name="proxyId" value="${proxyId}" readonly="readonly" class="input-xlarge" />

				<c:choose>
					<c:when test="${level gt 2}">
						<label>代理类型</label>
						<select id="ptype" name="proxyLevel" class="input-xlarge with-search">
							<option value="1" selected="selected">一级代理</option>
							<option value="2"> 二级代理</option>
						</select>

					</c:when>
					<c:otherwise>
						<select id="ptype" name="proxyLevel" class="input-xlarge with-search">
							<option value="1" selected="selected">一级代理</option>

						</select>
					</c:otherwise>

				</c:choose>


				<label>代理用户名</label>
				<input type="text" name="name" value="p1001" class="input-xlarge" required="required" maxlength="8" placeholder="只能字母与数字4-8位">
				<label>密码</label>
				<input type="text" name="password" value="123123" class="input-xlarge" required="required" maxlength="6" placeholder="不能有汉字不能大于6位">
				<label>代理真实姓名</label>
				<input type="text" name="realName" value="" class="input-xlarge" required="required" placeholder="请填写真实名字" maxlength="8">

				<!--
				    <p class="help-block">
                                    指定发放的账号，多个账号使用","隔开。
                                    <span id="fails" style="display: none;color: #ff0000;"></span>
                    </p>  -->

				<label>手机号</label>
				<input type="number" name="phone" value="" class="input-xlarge" required="required" placeholder="不能超过11位">
				<label>银行卡号</label>
				<input type="text" name="bank" value="" class="input-xlarge" required="required" placeholder="请填写银行卡号" maxlength="25">
				<c:if test="${channel eq '2'}">
					<label>绑定游戏玩家ID</label>
					<input type="text" name="playerId" value="" class="input-xlarge" required="required" placeholder="真实的游戏玩家ID">
				</c:if>

				<label>邀请码</label>
				<input type="text" name="inviteCode" value="${inviteCode}" class="input-xlarge" required="required" placeholder="代理邀请码" maxlength="5">

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