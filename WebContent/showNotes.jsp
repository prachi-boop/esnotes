<%@ page import="com.Servlet.Post"%>
<%@ page import="java.util.List"%>
<%@ page import="com.Db.DbConnect"%>
<%@ page import="com.DAO.PostDAO"%>




<%
UserDetails user3=(UserDetails) session.getAttribute("userD");
if(user3==null){
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error","Please Login..");
    	
	
	
}



%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
	
	
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Notes</title>
<%@include file="all_comp/allcss.jsp"%>

</head>
<body>
	<%@include file="all_comp/navbar.jsp"%>
	
	<%
	String updateMsg=(String)session.getAttribute("updateMsg");
	if(updateMsg!=null){
		%>
		<div class="alert alert-danger" role="alert"><%=updateMsg%></div>
		<%
		session.removeAttribute("updateMsg");
	}
	%>
	
	<%
	String wrongMsg=(String)session.getAttribute("wrongMsg");
	if(wrongMsg!=null){
		%>
		<div class="alert alert-success" role="alert"><%=wrongMsg%></div>
		<%
		session.removeAttribute("wrongMsg");
	}
	
	
	%>
	
	
	<div class="container">
		<h2 class="text-center">All Notes</h2>
		<div class="row">
			<div class="col-md-12">
			<%
if(user3!=null){
	PostDAO ob=new PostDAO(DbConnect.getConn());
	List<Post> post= ob.getData(user3.getId());
    for(Post po:post){%>
    		<div class="card mt-3">
					<img alt=" " src="img/shoe-02.jpg" class="card-img-top mt-2 mx-auto"
						style="max-width: 400px;">
					<div class="card-body p-4">




						<h5 class="card-title"><%=po.getTitle() %></h5>
						<p><%=po.getContent() %>.</p>
						<p>
							<b class="text-success">Published by:<%=user3.getName() %> </br></b><b class="text-primary"></b>
						</p>
						<p>
							<b class="text-success">Published date:<%=po.getPdate() %></br></b><b
								class="text-primary"></b>
						</p>


						<div class="container text-center mt-2">
							<a href="deleteSevlet?note_id=<%=po.getId()%>" class="btn-btn-danger">Delete</a> 
							<a href="edit.jsp?note_id=<%=po.getId()%>" class="btn-btn-primary">Edit</a>



						</div>


					</div>



				</div>
    
    
    
    <% 	
    }
}



%>

		
			

			</div>
					
					
					
				
						
					
					
	






		</div>














	</div>
<%@include file="all_comp/footer.jsp" %>
</body>
</html>