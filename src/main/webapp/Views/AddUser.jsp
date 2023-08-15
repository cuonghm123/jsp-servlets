<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/AddUser.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<div class="main">
		<a class="btn btn-primary btn-back" href="../load">Back</a>
		<form action="/Website/add" method="post" class="form" id="form-1">
			<h3 class="heading">Add new User</h3>

			<div class="spacer"></div>

			<div class="form-group">
				<label for="fullname" class="form-label">First Name</label> <input
					id="null-input" name="first_name" type="text" class="form-control"
					value=""> <span class="form-message"></span>
			</div>
			<div class="form-group">
				<label for="fullname" class="form-label">First Name</label> <input
					id="null-input" name="last_name" type="text" class="form-control"
					value=""> <span class="form-message"></span>
			</div>

			<div class="form-group">
				<label for="email" class="form-label">Date</label> <input
					id="null-input" value="" name="date" type="date"
					class="form-control"> <span class="form-message"></span>
			</div>
			<div class="form-group gennder-cl" id="null-input">
				<label for="email" class="form-label">Gender</label> <input
					id="gender" name="gender" type="radio" class="form-control"
					value="1">
				<p>Nu</p>
				<input id="gender" name="gender" type="radio" class="form-control"
					value="0">
				<p>Nam</p>
				<span class="form-message"></span>
			</div>
			<div class="form-group ">
				<label for="email" class="form-label">Address</label> <input
					id="null-input" name="address" type="text" class="form-control"
					value=""> <span class="form-message"></span>
			</div>

			<div class="form-group gennder-cl" id="null-input">
				<label for="email" class="form-label">Room</label> <input
					id="gender" name="room" type="radio" class="form-control" value="3">
				<p>Admin</p>

				<input id="gender" name="room" type="radio" class="form-control"
					value="4">
				<p>Client</p>
				<span class="form-message"></span>
			</div>
			<div class="form-group">
				<label for="fullname" class="form-label">Username</label> <input
					id="null-input" name="username" type="text" class="form-control"
					value=""> <span class="form-message"></span>
			</div>
			<div class="form-group">
				<label for="password" class="form-label">password</label> <input
					id="null-input" name="password" type="password" value=""
					class="form-control"> <span class="form-message"></span>
			</div>

			<button type="submit" class="form-submit">Add</button>
		</form>

	</div>




	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>




	<script src="../js/addJS.js" type="text/javascript"></script>

</body>
</html>