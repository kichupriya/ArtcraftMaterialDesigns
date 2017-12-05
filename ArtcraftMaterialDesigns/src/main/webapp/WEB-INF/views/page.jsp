<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib pefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    
     <spring:url var="css" value="/resources/css"/>
     <spring:url var="js" value="/resources/js"/>
     <spring:url var="images" value="/resources/images"/>
     
 <c:set var="contextRoot" value="${pagecontxt.request.contextpath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Shop Homepage Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="${css}/myapp.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ArtcraftMaterialDesign-${title }</title>
</head>
<body>
     ${contextRoot} says - ${greeting}
     <!--Navigation  -->
<%@include file="./shared/nav.jsp" %>
    
<!-- Page container -->
   <!--loading the home content  -->
   <c:if test="${userclickhome == true }">
        <%@include file="home.jsp" %>  
   </c:if>
   <!-- Footer comes here -->
   <%@include file="./shared/footer.jsp"%>

    <!-- JavaScript -->
    <script src="${js}/jquery-1.10.2.js"></script>
    <script src="${js}/bootstrap.js"></script>
     

</body>
</html>