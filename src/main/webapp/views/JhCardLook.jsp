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

			<form id="tab" method="post" action="${ctxPage}/jh/card_look" autocomplete="off">
				<input type="hidden" name="opttype" value="5052" />
				<label class="control-label">区服</label>
				<div class="controls">
					<select id="worldId" name="worldId" class="input-xlarge with-search">
						<c:forEach var="item" items="${worldList}">
							<option value="${item.worldId}" selected="selected" />
                                        ${item.wName}
                                    </c:forEach>
					</select>
				</div>
	
			<select name="type">
				<option value="0">金花</option>
				<option value="1">麻将</option>
			</select>>
			
				<label>玩家ID</label>
				<input type="number" name="playerId" value="" class="input-xlarge" required="required" placeholder="请输入玩家ID">
				<p class="help-block">请在玩家进入房间后输入玩家Id</p>
				
	

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