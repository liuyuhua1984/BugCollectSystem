<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctxPage" value="${pageContext.request.contextPath}" />
<%@include file="mobile_header.jsp"%>
<%@include file="mobile_navibar.jsp"%>

<%@include file="mobile_sidebar.jsp"%>


<div class="block">
	<a href="#page-stats" class="block-heading" data-toggle="collapse">代理推广</a>
	<div id="page-stats" class="block-body collapse in">
	<!-- table-bordered   table-condensed-->
		<table class="table table-striped ">

			<tr>
				<td >
				<a href="${ctxPage}/mobile/my_info" class="btn btn-large btn-primary "  style="color: green;">我的推广</a>
		
				</td>

				<td>
					<a href="${ctxPage}/mobile/order_list" class="btn btn-large btn-primary "  style="color: red;" >订单查询</a>
				
				</td>
			</tr>

		</table>

	</div>
</div>



<script type="text/javascript">
	var msg = "${msg}";
	if (msg != null && msg != "") {
		alert(msg);
	}
	
	function queryTrader(){
		window.location.href="${ctxPage}/mobile/order_list"
	}
	
	function myInfo(){
		window.location.href="${ctxPage}/mobile/my_info"
	}
</script>
<%@include file="mobile_footer.jsp"%>