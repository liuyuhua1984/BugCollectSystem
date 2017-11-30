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
			<c:choose>
				<c:when test="${channel eq '2'}">
					<form id="tab" method="post" action="${ctxPage}/noticeboard/add_text" autocomplete="off">
				</c:when>

				<c:otherwise>
					<form id="tab" method="post" action="${ctxPage}/noticeboard/add_img" autocomplete="off" enctype="multipart/form-data">
				</c:otherwise>
			</c:choose>



			<label class="control-label">区服</label>
			<div class="controls">
				<select id="worldId" name="worldId" class="input-xlarge with-search">
					<c:forEach var="item" items="${worldList}">
						<option value="${item.worldId}" selected="selected" />
                                           ${item.wName}
                                    </c:forEach>
				</select>
			</div>

			<label>标题</label>
			<input type="text" name="title" value="公告" class="input-xlarge" required="required" placeholder="请输入公告标题">
			<%--
				    <p class="help-block">
                                    指定发放的账号，多个账号使用","隔开。
                                    <span id="fails" style="display: none;color: #ff0000;"></span>
                    </p>
                     --%>
			<label>公告文件</label>

			<c:choose>
				<c:when test="${channel eq '2'}">
					<textarea class="input-xlarge" id="content" name="content" rows="3" placeholder="请填写公告栏内容"></textarea>
				</c:when>

				<c:otherwise>
					<input id="fileData" type="file" name="file" placeholder="选择一张图片" />

					<p class="help-block">选择一张PNG图片</p>
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
	
</script>
<%@include file="sys/footer.jsp"%>