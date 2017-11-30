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

			<form id="tab" method="post" action="${ctxPage}/broadcast/send" autocomplete="off">
				<input type="hidden" name="opttype" value="5050" />
				<label class="control-label">区服</label>
				<div class="controls">
					<select id="wid" name="wid" class="input-xlarge with-search">
						<c:forEach var="item" items="${worldList}">
							<option value="${item.worldId}" selected="selected" />
                                           ${item.wName}
                                    </c:forEach>
					</select>
				</div>

				<label>发送类型</label>
				<select id="type" name="type" class="input-xlarge with-search">
					<option value="1" selected="selected">单次</option>
					<option value="2"> 循环</option>
				</select>

				<label>循环时间</label>
				<input type="number" name="time" value="1" class="input-xlarge" required="required">
				<p class="help-block">
					单位分钟，发送循环时间，请正确选择类型。
					<span id="fails" style="display: none;color: #ff0000;"></span>
				</p>

				<label>content</label>
				<textarea name="content" rows="3" class="input-xlarge">无</textarea>
				<p class="help-block">广播的内容信息(250字内哦)。</p>
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