<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
    UserDetails user2=(UserDetails) session.getAttribute("userD");
    if(user2==null){
    	response.sendRedirect("login.jsp");
    	session.setAttribute("Login-error", "Please Login..");
    }
    
    
    
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert your title here</title>
<%@include file="all_comp/allcss.jsp" %>



</head>
<body>

<div class="container-fluid" style="height: 773px">
<%@include file="all_comp/navbar.jsp" %>
<div class="card">
<div class="card-body text-center">
<img alt=" " src="img/notes.jpg" class="img-fluid mx-auto" style="width: 800px;">
<h1> START TAKING NOTES HERE</h1>
<a href="addNotes.jsp" class="btn btn-outline-primary">Start here</a>

</div>

</div>


</div>


<%@include file="all_comp/footer.jsp" %>
</body>
</html>