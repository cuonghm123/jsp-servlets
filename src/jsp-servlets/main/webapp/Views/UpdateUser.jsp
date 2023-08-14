<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../Website/css/AddUser.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	 <div class="container-login">
      <form action="/Website/update" method="post">
       <input type="hidden" id="form2Example1" class="form-control" value="${st.id}"
            name="id" /> 
        <h4>Update user</h4>
        <!-- Email input -->
        <div class="form-outline mb-4">
        <label class="form-label" for="form2Example1">ID</label>
          <input type="text" id="form2Example1" class="form-control" value="${st.id}"
            name="id" readonly="readonly" /> 
        </div>
        <div class="form-outline mb-4">
        <label class="form-label" for="form2Example1">FirstName</label>
          <input type="text" id="form2Example1" class="form-control" value="${st.first_name}"
            name="first_name" required="required" /> 
        </div>
        <div class="form-outline mb-4">
         <label class="form-label" for="form2Example1">LastName</label>
          <input type="text" id="form2Example1" class="form-control" value="${st.last_name}"
            name="last_name" required="required" />
        </div>
        <div class="form-outline mb-4">
         <label class="form-label" for="form2Example1">Date</label>
          <input type="text" id="form2Example1" class="form-control" value="${st.date}"
            name="date" required="required" />
        </div>
        <div class="form-outline mb-4">
          
          <label class="form-label" for="form2Example1">Gender</label>
          <div class="gender">
            <input type="radio" id="form2Example1" class="form-control"
            value="1" ${st.gender == 1 ? "checked" : ""} name="gender" required="required" />Nu 
            <input type="radio" id="form2Example1"
						class="form-control" value="0" ${st.gender == 0 ? "checked" : ""} name="gender" required="required" />Nam

          </div>
  
        </div>
        <div class="form-outline mb-4">
          <input type="text" id="form2Example1" class="form-control" value="${st.address}"
            name="address" required="required" /> <label class="form-label" for="form2Example1"></label>
        </div>
        <div class="form-outline mb-4">
          <input type="text" id="form2Example1" class="form-control" value="${st.room}"
            name="room" required="required" /> <label class="form-label" for="form2Example1"></label>
        </div>
        <!-- Submit button -->
        <button class="btn btn-success btn-block mb-4 btn-login"
          type="submit">Update</button>
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
</body>
</html>