					
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<c:set var="ctxPage" value="${pageContext.request.contextPath}" />

					<footer>
                        <hr>
                        <p class="pull-right">A <a href="www.baidu.com" target="_blank">管理系统</a></p>
                        <p>&copy; 2017 <a href="www.baidu.com" target="_blank">web-admin</a></p>
                    </footer>
				</div>
			</div>
		</div>

 <script src="${ctxPage}/js/bootstrap.js"></script>

<!-- 捷径的提示 -->

		<script type="text/javascript">	
		<%--
			alertDismiss("alert-success", 3);
			alertDismiss("alert-info", 10);

			listenShortCut("icon-plus");
			listenShortCut("icon-minus");

			doSidebar();
			---%>
		</script>
	</body>
</html>
