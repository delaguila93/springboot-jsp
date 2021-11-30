<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>View Books</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="/resources/js/app.js"></script>
</head>

<body
	style="display: flex; justify-content: center; align-items: center; background-color: steelblue;">
	<div class="card text-center"
		style="width: 50rem; box-shadow: 2px 2px 2px 1px rgba(0, 0, 0, 0.2);">
		<div class="card-body">
			<h5 class="card-title">Lista de libros</h5>
			<p class="card-text">
			<div class="table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
							<th scope="col">ISBN</th>
							<th scope="col">Name</th>
							<th scope="col">Author</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${books}" var="book">
							<input name="id" type="hidden" value="${book.id}">
							<tr>
								<td>${book.isbn}</td>
								<td>${book.name}</td>
								<td>${book.author}</td>
								<td><a href="/book/updateBook?id=${book.id}"><button
											type="button" class="btn btn-primary">
											<i class="bi bi-pencil-square"></i> Editar
										</button></a></td>
								<td><button type="button" class="btn btn-outline-danger"
										 onclick="deleteBook('${book.id}')">
										<i class="bi bi-trash" ></i> Eliminar
									</button></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<a href="/book/addBook">
				<button type="button" class="btn btn-primary">Añadir libro</button>
			</a>
		</div>
	</div>
</body>
</html>