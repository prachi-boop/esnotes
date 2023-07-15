<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>REGISTER PAGE</title>
<%@include file="all_comp/allcss.jsp"%>
</head>
<body>
	<%@include file="all_comp/navbar.jsp"%>
	<div class="container-fluid div-color l">
	
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div
						class="card-header text-center text-white k" style="background-color: voilet;">
						<i class="fa fa-user fa-3x" aria-hidden="true"></i>
						<h4>REGISTERATION</h4>
					</div>


					<%
					String regMsg = (String) session.getAttribute("reg-success");

					if (regMsg != null) {
					%>
					<div class="alert alert-success" role="alert"><%=regMsg%>Login <a href="login.jsp">Click here</a>
					</div>

					<%
					session.removeAttribute("reg-success");
					
					}
					%>



					<%
					String FailedMsg = (String) session.getAttribute("failed-msg");

					if (FailedMsg != null) {
					%>
					<div class="alert alert-danger" role="alert"> <%=FailedMsg%></div>

					<%
					session.removeAttribute("failed-msg");
					
					}
					%>




					<div class="card-body">
						<form action="UserServlet" method="post">

							<div class="form-group">
								<label> Enter full name</label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="fname">

							</div>

							<div class="form-group">
								<label> Enter Email</label> <input type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="uemail">

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1"> Enter Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="upassword">
							</div>

							<button type="submit"
								class="btn btn-primary badge-pill bln-block">Register</button>
						</form>
					</div>

				</div>

			</div>
		</div>



	</div>
	<%@include file="all_comp/footer.jsp"%>
</body>
</html>