<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img class="first-slide home-image" src="resources/images/Kolkata1.jpg" alt="first slide" height="1200px" width="1500px"> 
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>WELCOME TO KOLKATA</h1>
                            <p>Here You View Kolkata Photos</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="second-slide home-image" src="resources/images/London2.jpg" alt="Second slide" height="1200px" width="1500px">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>London</h1>
                            <p>See London<p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="third-slide home-image " src="resources/images/Tokyo1.jpg" alt="Third slide" height="1200px" width="1500px">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Tokyo</h1>
                            <p>See Tokyo</p>
                        </div>
                    </div>
                </div>
                 <div class="item">
                    <img class="forth-slide home-image " src="resources/images/Maldives.jpg" alt="Fourth slide" height="1200px" width="1500px">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Maldives</h1>
                            <p>See Maldives<p>
                        </div>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" ></span>
                <span class="sr-only">Next</span>
            </a>
        </div><!-- /.carousel -->

</div>
	
</body>
</html>
<%@ include file="footer.jsp" %>
</html>>