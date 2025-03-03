
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	 pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>

<div class="container-fluid"
	style="height: 10px; background-color: #303f9f"></div>


<div class="container-fluid p-3 bg-light">
	<div class="row">
		<div class="col-md-3 text-success">

			<h3>
				<i class="fa-solid fa-book"></i> Ebooks
			</h3>
		</div>
		
		<div class="col-md-3">

           <c:if test="${not empty  userobj }"> 
           
           <a  class="btn btn-success text-white">
			 ${userobj.name}</a> 
				
				<a
				href="../Register.jsp" class="btn btn-primary text-white"> <i
				class="fa-solid fa-user-plus"></i> Logout
			</a>
           </c:if>
           
           
           <c:if test="${ empty  userobj }"> 
           
           <a href="../Login.jsp" class="btn btn-success"><i
				class="fa-solid fa-right-to-bracket"></i> Login </a> <a
				href="../Register.jsp" class="btn btn-primary text-white"> <i
				class="fa-solid fa-user-plus"></i> Register
			</a>
           </c:if>
           
           
			
		</div>

	</div>
</div>


<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<a class="navbar-brand" href="#"><i class="fa-solid fa-house"></i></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="home.jsp">
					Home <span class="sr-only">(current)</span>
			</a></li>

			</form>
	</div>
</nav>