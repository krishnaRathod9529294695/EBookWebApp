<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Home</title>
<%@include file="AllCss.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
}
</style>

</head>
<body>
	<%@include file="NavBar.jsp"%>

	<div class="container">
		<div class="row p-5">


			<div class="col-md-3">
				<a href="order.jsp">
					<div class="card">
						<div class="card-body  text-center">
							<i class="fa-solid fa-box-open fa-3x text-warning"></i>

							<h4>Order</h4>
							----------
						</div>
					</div>
				</a>
			</div>

		</div>
		</div>
		<div style="margin-top: 300px;">
			<%@include file="footer.jsp"%>
		</div>
</body>
</html>