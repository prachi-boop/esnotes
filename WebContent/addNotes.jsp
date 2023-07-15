<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    UserDetails user1=(UserDetails) session.getAttribute("userD");
    if(user1==null){
    	response.sendRedirect("login.jsp");
    	session.setAttribute("Login-error", "Please Login..");
    }
    
    
    
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add notes</title>
<%@include file="all_comp/allcss.jsp" %>
</head>
<body>
<div class="container-fliud" style="height: 773px">
<%@include file="all_comp/navbar.jsp" %>

<h1 class="text-center py-4" > Add Your Notes</h1>
<div class="container">
<div class="row">
<div class="col-md-12">
<form action="AddNotesServlet" method="post">

  <div class="form-group">
  <%
  UserDetails us=(UserDetails) session.getAttribute("userD");
  
  if(us!=null){
	  %>
	    <input type="hidden" value="<%=us.getId()%>" name="uid">
	  
	  
	  <%
  }
  
  
  
  %>

  
  
    <label for="exampleInputEmail1">Enter Title</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="title" required="required">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Enter Content</label>
    <textarea rows="11" cols="" class="form-control" name="content" required="required"></textarea>
  </div>



  <div class="container text-center">
  <button type="submit" class="btn btn-primary">Add Notes</button>
  </div>
</form>


</div>

</div>


</div>
</div>
<%@include file="all_comp/footer.jsp" %>
</body>
</html>