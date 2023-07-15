<%@page import="java.sql.Connection"%>
<%@page import="com.Db.DbConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>HOME PAGE</title>
<%@include file="all_comp/allcss.jsp" %>

</head>
<body style="display: contents;">

  <%@include file="all_comp/navbar.jsp" %>

 
<div class="container-fluid b-img m" style="background-image: url('img/home.jpg');">
<div class="text-center">
<br><br><h1><i class="fa fa-book" aria-hidden="true"></i>SAVE YOUR NOTES HERE</h1></br></br>
<a href="login.jsp" class="btn btn-light"><i class="fa fa-sign-in" aria-hidden="true"></i> Login</a>

<a href="register.jsp" class="btn btn-light"><i class="fa fa-user" aria-hidden="true"></i>Register</a>
</div>
</div>

<%@include file="all_comp/footer.jsp" %>


</body>
</html>