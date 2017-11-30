<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<c:set var="ctxPage" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${page_title}</title>

<link rel="stylesheet" href="${ctxPage}/css/bootstrap.css">
<link rel="stylesheet" href="${ctxPage}/theme/default-theme.css">
<link rel="stylesheet" href="${ctxPage}/font-awesome/css/font-awesome.css">
<link rel="stylesheet" href="${ctxPage}/css/other.css">
<link rel="stylesheet" href="${ctxPage}/css/jquery-ui.css" />

<script src="${ctxPage}/js/jquery-1.12.4.js"></script>
<script src="${ctxPage}/js/jquery.cookie.js"></script>

<script src="${ctxPage}/js/other.js"></script>

<script src="${ctxPage}/js/bootbox.js"></script>
<script src="${ctxPage}/js/bootstrap-modal.js"></script>
<script src="${ctxPage}/js/jquery-ui.js"></script>

 
<style type="text/css">
#line-chart {
	margin: 0px auto;
	margin-top: 1em;
}

.brand {
	font-family: georgia, serif;
}

.brand .first {
	color: #ccc;
	font-style: italic;
}

.brand .second {
	color: #fff;
	font-weight: bold;
}

</style>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="${ctxPage}/js/html5.js"></script>
    <![endif]-->
<!-- Demo page code -->
</head>