<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
.contain{
	margin:0px 15%;
}
.topmar{
	margin:150px 0%;
}
</style>
</head>
<body>
<%@ include file = "header.jsp" %>
	<div class="container">
	<div class="row topmar">
	<div class="col-6" >
		<div class="contain">
		<h2 style="text-align:center">Login</h2>
		<c:if test = "${regsucmessage !=null}">
		<p class="alert alert-warning"><c:out value="${regsucmessage}"/></p>
		</c:if>
		<form action="<%=request.getContextPath()%>/login" method="post">

			<div class="form-group">
				<label for="uname">User Name:</label> 
				<input type="text" class="form-control" id="username" placeholder="User Name" name="username" required>
			</div>

			<div class="form-group">
				<label for="uname">Password:</label> 
				<input type="password" class="form-control" id="password" placeholder="Password" name="password" required>
			</div>
			<p class="text-danger"><c:out value="${usererrlogmessage}"/></p>
			<button type="submit" class="btn btn-primary">Submit</button>
			<p>Not Registered Yet <a href="/flight/registeruser.jsp">Click here</a></p>
		</form>
		</div>
	</div>

	<div class="col-6">
		<div class="contain">
		<h2 style="text-align:center">Admin Login</h2>
		<form action="<%=request.getContextPath()%>/Adminlogin" method="post">

			<div class="form-group">
				<label for="uname">User Name:</label> 
				<input type="text" class="form-control" id="username" placeholder="User Name" name="username" required>
			</div>

			<div class="form-group">
				<label for="uname">Password:</label> 
				<input type="password" class="form-control" id="password" placeholder="Password" name="password" required>
			</div>
			<p class="text-danger"><c:out value="${adminerrlogmessage}"/></p>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
		</div>
	</div>
	</div>
	</div>
</body>
</html>