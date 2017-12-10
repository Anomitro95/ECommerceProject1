<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page isELIgnored ="false" %>
<html>
<head>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name= "viewport" content= "width=device-width, initial scale =1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    <!-- Angular Js -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
      
       <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
  
    <style>
    
	.hover-item:hover {
	background-color: blue;
	color:red;
	
}
		</style>
    
    

<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-inverse">
		<div class="container-fluid">
		<button type="button" class="navbar-toggle collapsed" 
   data-toggle="collapse" data-target="#collapse-example" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
		<div class="navbar-header">
        <c:url value="/resources/images/Welcome.jpg" var="url"></c:url>
		<a class="navbar-brand" href=""><img src="${url }" alt="Welcome" height="30px" width="30px"></a>
			</div>
			<div  class="collapse navbar-collapse" id="collapse-example">
		<ul class="nav navbar-nav">
		<c:url value="/home" var="homeUrl"></c:url>
			<li class="active"><a href="${homeUrl }">Home<span class="sr-only">You are in home page link</span></a></li>
			<c:url value="/aboutus" var="aboutUsUrl"></c:url>
			<li class="active"><a href="${aboutUsUrl }">AboutUs</a></li>
			
			<security:authorize access="hasRole('ROLE_ADMIN')">
			<c:url value="/admin/getproductform?id=0" var="productForm"></c:url>
			<li class="active"><a href="${productForm }">Add Product</a></li>
			</security:authorize>
			
			<c:url value="/all/getallproducts" var="productsUrl"></c:url>
			<!--  productsUrl = http://localhost:9090/project1_frontend/all/getallproducts -->
			<li class="active"><a href="${productsUrl }">Browse all products</a></li>
			
			 <li class="active dropdown">
			<a href="" class="dropdown-toggle" data-toggle="dropdown">
                     Select by Category<b class="caret"></b></a>
			<ul class="dropdown-menu">
					<li>
					<c:forEach items="${categories }" var="c">
		<c:url 
			value="/all/product/searchbycategory?searchCondition=${c.categoryname }"
				var="url" ></c:url>
                <a href="${url }" >${c.categoryname } </a>
                </c:forEach>
                <c:url value="/all/product/searchbycategory?searchCondition=All" var="url1">
                </c:url>
                 <a href="${url1 }">All</a>
                </li>
			</ul>
			</li>
			
			
			<security:authorize access="hasRole('ROLE_USER')">
	        <li class="active"><a href="<c:url value='/cart/getcart'></c:url>">Cart</a></li>
	        </security:authorize>
			</ul>
			
			
			<ul class="nav navbar-nav navbar-right">
			<c:if test="${pageContext.request.userPrincipal.name==null }">
			<li class ="active"><a href="<c:url value='/login'></c:url>">Sign In</a></li>
			<li class= "active"><a href='<c:url value='/all/registrationform'></c:url>'><span class="hover-item">Sign Up</span></a></li>
			</c:if>
			<c:if test="${pageContext.request.userPrincipal.name!=null }">
			<li><a href="">Welcome ${pageContext.request.userPrincipal.name}</a></li>
			<li><a href="<c:url value='/j_spring_security_logout'></c:url>">Logout</a></li>
			</c:if>
			</ul>
			
			</div>
		</div>
	</nav>
</body>
</html>