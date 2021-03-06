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
	padding:80px 15% 30px 15%;
}
.contain2{
	padding:30px 25%;
}
.box{
	background-color: #97b498;
    border-radius: 26px;
    padding: 25px 11px;
}
.box h2{
	color:white;
}
</style>
</head>

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
	</div>
	<div class="contain2">
		<div class="row box">
			<div class="col">
			<h2>ADD FLIGHT</h2>
				<form action="admininsertflight" method="post">
				  <div class="form-row">
				    <div class="form-group col-4">
				      <label for="flightno">Flight no:</label>
				      <input type="text" class="form-control" id="flightno" placeholder="Flight no" name="flightno" required>
				    </div>
				    <div class="form-group col-4">
				      <label for="airline">airline:</label>
				      <select class="form-control" id="airline" name="airline" required>
				        <option selected>Choose...</option>
				        <option value="AirIndia">AirIndia</option>
				        <option value="GoAir">GoAir</option>
				        <option value="Deccan">Deccan</option>
				        <option value="SpiceXpress">SpiceXpress</option>
				      </select>
				    </div>
				    <div class="form-group col-4">
				      <label for="traveldate">Travel date:</label>
				      <input type="date" class="form-control" id="traveldate" name="traveldate" required>
				    </div>
				  </div>
				  <div class="form-row">
				    <div class="form-group col-4">
				      <label for="starttime">Start time:</label>
				      <input type="time" class="form-control" id="starttime" name="starttime" required>
				    </div>
				    <div class="form-group col-4">
				      <label for="arrivaldate">Arrival date:</label>
				      <input type="date" class="form-control" id="arrivaldate" name="arrivaldate" required>
				    </div>
				    <div class="form-group col-4">
				      <label for="endtime">End time:</label>
				      <input type="time" class="form-control" id="endtime" name="endtime" required>
				    </div>
				  </div>
				  <div class="form-row">
				    <div class="form-group col">
				      <label for="hrs">From</label>
				      <select class="form-control col" id="hrs" name="source" required>
				        <option selected>From:</option>
				        <c:forEach var="place" items="${bookinplaces}">
                          <option value="<c:out value="${place}"/>"><c:out value="${place}"/></option>
                        </c:forEach>
				      </select>
				    </div>
				    <div class="form-group col">
				      <label for="min">To:</label>
				      <select class="form-control col" id="min" name="destination" required>
				        <option selected>To</option>
				        <c:forEach var="place" items="${bookinplaces}">
                          <option value="<c:out value="${place}"/>"><c:out value="${place}"/></option>
                        </c:forEach>
				      </select>
				    </div>
				    <div class="form-group col">
				      <label for="ticketprice">Fare:</label>
				      <input type="number" class="form-control" id="ticketprice" name="ticketprice" required>
				    </div>
				  </div>
				  <button type="submit" class="btn btn-success">ADD FLIGHT</button>
				</form>
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