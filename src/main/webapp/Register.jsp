<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EBook Register</title>
<%@include file="All_Component/AllCss.jsp"%>
</head>
<body style="background-color: #f0f1f3;">
	<%@include file="All_Component/NavBar.jsp"%>

	<Div class="container p-2">

		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">

					<div class="card-body">

						<h4 class="text-center">Registration Page</h4>








						<c:if test="${not empty SucessMsg}">
							<p class="text-center text-success">${SucessMsg}</p>
							<c:remove var="SucessMsg" scope="session" />
						</c:if>

						<c:if test="${not empty FailedMsg}">
							<p class="text-center text-danger">${FailedMsg}</p>
							<c:remove var="FailedMsg" scope="session" />
						</c:if>






						<form action="register" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Enter Full Name</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="fname">

							</div>


							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="email">

							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Phone No</label> <input
									type="number" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="phone">

							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									required="required" name="password">
							</div>
							<div class="form-group form-check">
								<input type="checkbox" class="form-check-input" name="check"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1" required="required">Agree terms &
									2Condition </label>
							</div>
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>

					</div>

				</div>

			</div>
		</Div>
	</Div>
	<%@include file="All_Component/footer.jsp"%>

</body>
</html>