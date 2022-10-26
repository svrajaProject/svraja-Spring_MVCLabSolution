<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student-portal</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="jumbotron">
			<h1>STUDENT REGISTRATION - 22</h1>
			<a href="/StudentRegistrationPortal/student/reg-form"
				class="btn btn-outline-secondary" role="button">For Registration</a>
		</div>

	</div>
	<div class="container">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Name</th>
					<th>Department</th>
					<th>Country</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${students}" var="students">
					<tr>
						<td scope="row"><c:out value="${students.name}" /></td>
						<td><c:out value="${students.department}" /></td>
						<td><c:out value="${students.country}" /></td>
						<td><a
							href="/StudentRegistrationPortal/student/update-form?studentId=${students.id}">Update</a>
							| <a
							href="/StudentRegistrationPortal/student/delete?studentId=${students.id}" onclick="return confirm('Are you sure?')">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>