<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/Login.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<div class="container-login">
		<form action="login" method="post" id="form-1">
			<h4>Member Login</h4>
			<!-- Username input -->
			<p class="text-danger">${mess}</p>
			<div class="form-outline mb-4 form-group">
				<label class="form-label" for="form2Example2">Username</label> <input
					type="text" id="null-input" class="form-control" value=""
					name="username" /> <span class="form-message"></span>
			</div>


			<!-- Password input -->
			<div class="form-outline mb-4 form-group">
				<label class="form-label" for="form2Example2">Password</label> <input
					type="password" id="null-input" class="form-control" value=""
					name="password" /> <span class="form-message"></span>
			</div>

			<!-- Submit button -->
			<button class="btn btn-success btn-block mb-4 btn-login"
				type="submit" value="Login">Login</button>
		</form>
	</div>
	<script src="./js/addJS.js" type="text/javascript"></script>




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


</body>
</html>