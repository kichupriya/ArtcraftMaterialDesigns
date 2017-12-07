<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pagecontext.request.contextpath}" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<title>ArtcraftMaterialDesigns -${title}</title>

<script>
	window.menu = '${title}';
</script>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Readable theme -->
<link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">

<!-- bootstap Datatables -->
<link href="${css}/datatables.bootstrap.css" rel="stylesheet">


<!-- Add custom CSS here -->
<link href="${css}/myapp.css" rel="stylesheet">
</head>
<body>
    <div class="se-pre-con"></div>
	
</head>

<body>
<div class="wrapper">

	<!-- Navigation -->
	<%@include file="header.jsp"%>

	<!-- Page content -->
	
	<div class="content">
	<!-- loading the home content  -->
	<c:if test="${userClickHome == true }">
		<%@include file="home.jsp" %>
	</c:if>
	
	<!-- load only when user clicks about -->
	<c:if test="${userClickAbout == true }">
		<%@include file="about.jsp"%>
	</c:if>

	<!-- load only when user clicks contact -->
	<c:if test="${userClickContact == true }">
		<%@include file="contact.jsp"%>
	</c:if>
	</div>

	<!-- footer comes here -->
	<%@include file="footer.jsp"%>
	
	</div>
	<!-- /.container -->

	<!--Self code JavaScript -->
	<script src="${js}/myapp.js"></script>
	<script src="${js}/bootstrap.js"></script>
</div>
</body>

</html>
