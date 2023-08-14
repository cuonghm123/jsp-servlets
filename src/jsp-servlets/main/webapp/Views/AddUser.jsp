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
	<!-- <form action="login" method="post">
		UserName: <input type="text" value="" name="username"/>
		Password: <input type="password" value="" name="password"/>
		<input type="submit" value="Login">
	</form> -->

	<div class="container-login">
		<!-- /Website/add -->
		<form action="/Website/add" method="post" name="myform" >
			<h4>Add new user</h4>
			<!-- Email input -->
			<div class="form-outline mb-4">
				<label class="form-label" for="form2Example1">FirstName</label> <input
					type="text" id="form2Example1" class="form-control" value=""
					name="first_name" required="required"/>
			</div>
			<div class="form-outline mb-4">
				<label class="form-label" for="form2Example1">LastName</label> <input
					type="text" id="form2Example1" class="form-control" value=""
					name="last_name" required="required" />
			</div>
			<div class="form-outline mb-4">
				<label class="form-label" for="form2Example1">Date</label> <input
					type="date" id="form2Example1" class="form-control" value=""
					name="date" required="required" />
			</div>
			<div class="form-outline mb-4">

				<label class="form-label" for="form2Example1">Gender</label>
				<div class="gender">
					<input type="radio" id="form2Example1" class="form-control"
						value="1" name="gender" required="required" />Nu
						 <input type="radio"
						id="form2Example1" class="form-control" value="0" name="gender" required="required"/>Nam

				</div>

			</div>
			<div class="form-outline mb-4">
				<label class="form-label" for="form2Example1">Address</label> <input
					type="text" id="form2Example1" class="form-control" value=""
					name="address" required="required" />
			</div>
			<div class="form-outline mb-4">
				<label class="form-label" for="form2Example1">Room</label> <input
					type="text" id="form2Example1" class="form-control" value=""
					name="room" required="required" />
			</div>
			<!-- Submit button -->
			<button class="btn btn-success btn-block mb-4 btn-login btn-add"
				type="submit">Add new</button>
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


	<script type="text/javascript">
	// Truy cập vào các ô input
	const fName = document.getElementsByClassName('first_name');
	const lName = document.getElementsByClassName('last_name');
	const date = document.getElementsByClassName('date');
	const gender = document.getElementsByClassName('gender');
	const address = document.getElementsByClassName('address');
	const room = document.getElementsByClassName('room');
	
	const btnRegister = document.getElementsByClassName('btn-add');

	btnRegister.addEventListener('click', function () {
	    let isValid = checkValidate();

	    if (isValid) {
	        alert('Gửi đăng ký thành công');
	    }
	});
	
	
	function checkValidate() {
	    let nameValue = fName.value;
	    let emailValue = emailEle.value;
	    let phoneValue = phoneEle.value;

	    let isCheck = true;

	    // Kiểm tra trường username
	    if (nameValue == '') {
	        setError(fName, 'Tên không được để trống');
	        isCheck = false;
	    } else {
	        setSuccess(fName);
	    }
		return isCheck;    
	}
	</script>

</body>
</html>