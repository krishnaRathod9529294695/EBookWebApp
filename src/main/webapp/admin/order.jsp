<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="AllCss.jsp"%>
<title>Admin Dashboard - Order Records</title>
</head>
<body style="background-color:#f0f1f2;">
	<%@include file="NavBar.jsp"%>

	<div class="container mt-4">
		<h3 class="text-center text-primary">Welcome, Admin</h3>

		<div class="card mt-3 shadow">
			<div class="card-body">

				<h5 class="text-center text-success">Order Records</h5>

				<table class="table table-bordered table-striped table-hover">
					<thead class="thead-dark">
						<tr>
							<th>Order ID</th>
							<th>Name</th>
							<th>Email</th>
							<th>Address</th>
							<th>Phone</th>
							<th>Book Name</th>
							<th>Author</th>
							<th>Price</th>
							<th>Payment Type</th>
						</tr>
					</thead>
					<tbody>
						<%-- Sample data for now, replace with dynamic data from your backend (JSTL or scriptlet) --%>
						<tr>
							<td>1</td>
							<td>John Doe</td>
							<td>john@example.com</td>
							<td>123 Main St, NY</td>
							<td>1234567890</td>
							<td>Effective Java</td>
							<td>Joshua Bloch</td>
							<td>500</td>
							<td>Cash On Delivery</td>
						</tr>
						<tr>
							<td>2</td>
							<td>Jane Smith</td>
							<td>jane@example.com</td>
							<td>456 Elm St, CA</td>
							<td>9876543210</td>
							<td>Clean Code</td>
							<td>Robert Martin</td>
							<td>600</td>
							<td>UPI</td>
						</tr>
						<tr>
							<td>3</td>
							<td>Alice Johnson</td>
							<td>alice@example.com</td>
							<td>789 Oak St, TX</td>
							<td>5556667777</td>
							<td>Harry Potter</td>
							<td>J.K. Rowling</td>
							<td>400</td>
							<td>Net Banking</td>
						</tr>
					</tbody>
				</table>

			</div>
		</div>
	</div>
	<div style="margin-top:300px;">
		<%@include file="footer.jsp"%>
		</div>

</body>
</html>
