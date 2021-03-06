<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">  
<link rel="stylesheet" href="css/bootstrap.min.css">
<style>
.contain1{
	padding:80px 10% 30px 10%;
}
.wholeflightsbox{
	padding:0px 10% 0px 10%;
}
.flightstore{
	background-color:black;
	padding:15px;
}
.flightbox{
	background-color: #c2ebc0;
	border-radius:10px;
	margin:15px;
	border: 4px solid #649b9a;
}
.flightbox:hover{
	background-color: #dfe9a0;
}
.detailsbox{
	background-color:black;
}
.planeinfo{
	padding-left: 25px;
	
}
.planeinfo h3{
	margin-bottom: 0;
}
.tourdetail{
	padding-top: 16px;
}
.travelduration{
	padding-top: 24px;
	padding-left: 49px;
}
.price{
	padding-top: 13px;
}
.options{
	padding-left: 39px;
	padding-top: 8px;
}
.options a{
	margin-bottom:5px;
}
.addbutton{
	margin-right: 132px;
    margin-top: 22px;
    margin-bottom: 3px;
}
</style>
</head>
<body>
<body>
		<%
		String si=(String)session.getAttribute("isAdmin");
		if(si!=null)
		{
		%>
	<%@ include file = "header.jsp" %>
	<div class="contain1">

		<div class="row">
			<div class = "col-3">
				<a class="btn btn-primary btn-lg btn-block" href="Adminflights">master list of flights</a>
			</div>
			<div class = "col-3">
				<a class="btn btn-outline-primary btn-lg btn-block" href="Admincities">master list of cities</a>
			</div>
			<div class = "col-3">
				<a class="btn btn-outline-primary btn-lg btn-block" href="Adminairlines">master list of airlines</a>
			</div>
			<div class = "col-3">
				<a class="btn btn-outline-primary btn-lg btn-block" href="adminchangepassword.jsp">Change password</a>
			</div>
		</div>
		<div class="d-flex flex-row justify-content-end">
			<a class="btn btn-success addbutton" href="adminflightinsert.jsp">ADD NEW FLIGHT</a>
		</div>
		<div class="row">
			<div class="col wholeflightsbox">
			<c:forEach var="flight" items="${listallflights}">
	                <div class="flightbox">    
	            	<div class="row">
			            <div class="col-2 planeinfo">
			                <img>
			                <h6 style="color: brown; font-size: 19px;"><strong><c:out value="${flight.airline}"/></strong></h6>
			                <p><c:out value="${flight.flightno}"/></p>
			            </div>
			            <div class="col-3 tourdetail">
			                <h3><c:out value="${flight.starttime}"/> - <c:out value="${flight.endtime}"/></h3>
			                <p><c:out value="${flight.source}"/> - <c:out value="${flight.destination}"/></p>
			            </div>
			            <div class="col-3 travelduration">
			                <h6 style="font-size: 18px;">Non-stop</h6>
			                <p><c:out value="${flight.duration}"/></p>
			            </div>
			            <div class="col-2 price">
			                <h3><i class="fa fa-rupee" style="font-size:24px"></i> <c:out value="${flight.ticketprice}"/></h3>
			                <p>190 instant off</p>
			            </div>
			            <div class="col-2 options">
			                <a type="submit" class="btn btn-danger" href="admindeleteflight?id=<c:out value='${flight.id}'/>">DELETE</a>
			                <a type="submit" class="btn btn-warning" href="adminflighteditform?id=<c:out value='${flight.id}' />">EDIT</a>
			            </div>
			        </div>
		            </div>
                </c:forEach>
              </div>
		</div>
	</div>
<%}
		else
		{
			response.sendRedirect("login.jsp");
		}
%>
</body>
</html>