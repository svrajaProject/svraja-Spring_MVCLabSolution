<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
		</div>
		<div class="container">
			<h2>Stacked form</h2>
			<form action="/StudentRegistrationPortal/student/save" method="post">
				<input type="hidden" class="form-control" id="id" name="id"
					value="${student.id}">
				<div class="form-group">
					<label for="name">Name:</label> <input type="text"
						class="form-control" id="name" placeholder="Enter name"
						name="name" value="${student.name}">
				</div>
				<div class="form-group">
					<label for="dpt">Department:</label> <input type="text"
						class="form-control" id="dpt" placeholder="Enter department"
						name="department" value="${student.department}">
				</div>
				<div class="form-group">
					<label for="country">Country:</label> <input type="text"
						class="form-control" id="country" name="country"
						placeholder="Enter country" name="country"
						value="${student.country}">
				</div>

				<button type="submit" class="btn btn-primary">Submit</button>
				<a href="/StudentRegistrationPortal/student/show"
					class="btn btn-outline-secondary" role="button">Back</a>
			</form>
		</div>
	</div>
</body>
</html>