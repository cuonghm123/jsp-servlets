<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="ListUser.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

</head>
<body>

	<div class="container-list">
		<a href="logout" class="btn btn-info">Logout</a>
		<p>Hello ${sessionScope.acc.username}</p>
		<div class="btn-txt">
			<h4>List of Users</h4>
			<a href="Views/AddUser.jsp" class="btn btn-success">Add new User</a>

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
					<th scope="col">Room</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
			<tr>
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
							<td>${x.room}</td>
							<td><a href="update?sid=${x.id}" class="btn btn-warning">Edit</a>
								<a href="#" onclick="showMess(${x.id})" class="btn btn-danger">Delete</a></td>
						</tr>

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
				var option = confirm("Are you sure delte ?");
				if(option === true){
					window.location.href = "delete?sid="+id;
				}
			}
	</script>

</body>

</html>