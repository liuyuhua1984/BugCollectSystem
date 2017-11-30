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

			<form id="tab" method="post" action="${ctxPage}/forbid/block_say" autocomplete="off">
				<input type="hidden" name="opttype" value="5050" />
				<label class="control-label">区服</label>
				<div class="controls">
					<select id="worldId" name="worldId" class="input-xlarge with-search">
						<c:forEach var="item" items="${worldList}">
							<option value="${item.worldId}" selected="selected" />
                                           ${item.wName}
                                    </c:forEach>
					</select>
				</div>

				<label>账号类型</label>
				<select id="ptype" name="ptype" class="input-xlarge with-search">
					<option value="1" selected="selected">账号</option>
					<option value="2">角色ID</option>
				</select>

				<label>账号或者角色ID</label>
				<input type="text" name="openId" value="" class="input-xlarge" required="required">
				<label>禁言时间(分钟)</label>
				<input type="number" name="forbidtime" value="" class="input-xlarge" required="required">
				<label>操作原因描述</label>
				<textarea name="msg" rows="3" class="input-xlarge">无</textarea>

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
<%@include file="sys/footer.jsp"%>