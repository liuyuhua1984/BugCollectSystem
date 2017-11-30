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
			<a href="#home" data-toggle="tab">给下级代理充值</a>
		</li>
	</ul>

	<div id="myTabContent" class="tab-content">
		<div class="tab-pane active in" id="home">

			<form id="tab" method="post" action="${ctxPage}/proxy/recharge_sub_proxy" autocomplete="off">
	

				<!--  
				<label>发送类型</label>
				<select id="ptype" name="ptype" class="input-xlarge with-search">
					<option value="1" selected="selected">指定账号</option>
					<option value="2"> 全服发放</option>
				</select>
				-->
				<input type="hidden" name ="myName" value="${fatherUser.userName}">
				<input type="hidden" name ="id" value="${myUser.id}">
				
				<label>我的房卡</label>
				<input type="number" name="myMoney" value="${fatherUser.remainMoney}" class="input-xlarge" readonly="readonly">
				
				<label>下级代理</label>
				<input type="text" name="nextProxy" value="${myUser.userName}" class="input-xlarge" readonly="readonly">
				
				<label>充值金额</label>
				<input type="number" name="money" value="" class="input-xlarge" required="required"  onkeyup="clearNoNum(this);">
				<!--  
				<label>操作备注</label>
				<textarea name="msg" rows="3" class="input-xlarge">无</textarea>
				-->
				<div class="btn-toolbar">
					<button type="submit" class="btn btn-primary">
						<strong>充值</strong>
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