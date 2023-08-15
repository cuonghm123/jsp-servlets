<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../Website/css/ListUser.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

</head>
<body>


	<c:if test="${sessionScope.acc == null}">
		<p>You have to log in back</p>
		<a href="Login.jsp"> Login here !!!</a>
	</c:if>
	

	
	<div class="container-list">
	
		<a href="logout" class="btn btn-info">Logout</a>
		<p>Hello ${sessionScope.acc.first_name}</p>
		<div class="btn-txt">
			<h4>List of Users</h4>
			<c:if test="${sessionScope.acc.room == 3}">
				<a href="Views/AddUser.jsp" class="btn btn-success">Add new User</a>
			</c:if>


		</div>
		<form action="search" method="post">
			<div class="putSearch">
				<input class=" inputSearch" aria-label="Small" type="text"
					name="txt" value="${txtSearch}">
				<button type="submit" class="btn btn-secondary btn-number">Search</button>
			</div>
		</form>
		<table class="table">

			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">FirstName</th>
					<th scope="col">LastName</th>
					<th scope="col">Date</th>
					<th scope="col">Gender</th>
					<th scope="col">Address</th>
					<th scope="col">permission</th> <!-- room -->
					<c:if test="${sessionScope.acc.room == 3}">
						<th scope="col">Action</th>
					</c:if>

				</tr>
			</thead>
			<tbody>
				<tr class="userList">
					<c:if test="${requestScope.listS.size() <= 0}">
						<td colspan="8">Not found</td>
					</c:if>
					<c:if test="${requestScope.listS.size() > 0}">
						<c:forEach items="${requestScope.listS}" var="x">
							<tr>
								<th scope="row"><a href="detail?sid=${x.id}">${x.id}</a></th>
								<td>${x.first_name}</td>
								<td>${x.last_name}</td>
								<td>${x.date}</td>
								<td><c:if test="${x.gender == 1}">Nu</c:if> <c:if
										test="${x.gender == 0}">Nam</c:if></td>
								<td>${x.address}</td>
								<td><c:if test="${x.room == 3}">Admin</c:if> <c:if
										test="${x.room == 4}">Client</c:if></td>

								<c:if test="${sessionScope.acc.room == 3}">
									<td><a href="update?sid=${x.id}" class="btn btn-warning">Edit</a>
										<a href="#" onclick="showDeleteConfirmation(${x.id})"
										class="btn btn-danger">Delete</a></td>
								</c:if>
							</tr>
							<div id="deleteModal" class="modal">
								<div class="modal-content">
									<p>Are you sure you want to delete this item?</p>
									<div class="btn-div">
										<button class="btn btn-danger" onclick="deleteItem()">Delete</button>
										<button class="btn btn-secondary" onclick="closeModal()">Cancel</button>
									</div>
								</div>
							</div>
						</c:forEach>
					</c:if>
				</tr>
			</tbody>

		</table>
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
			function showMess(id){
				var option = confirm("Are you sure delete ?");
				if(option === true){
					window.location.href = "delete?sid="+id;
				}
			}
	</script>
	<script type="text/javascript">
	 function showDeleteConfirmation(itemId) {
	        // Open the modal
	        var modal = document.getElementById("deleteModal");
	        modal.style.display = "block";

	        // Store the itemId in a data attribute of the modal
	        modal.dataset.itemId = itemId;
	    }

	    function deleteItem() {
	        // Get the itemId from the modal's data attribute
	        var modal = document.getElementById("deleteModal");
	        var itemId = modal.dataset.itemId;
	        window.location.href = "delete?sid="+itemId;
	        // Perform deletion logic here using the itemId

	        // Close the modal
	        closeModal();
	    }

	    function closeModal() {
	        var modal = document.getElementById("deleteModal");
	        modal.style.display = "none";
	    }
	</script>

</body>

</html>