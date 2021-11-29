<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Update Book</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
		<script type="text/javascript" src="/resources/js/app.js"></script>
    </head>
    
    <body style="display: flex; justify-content: center; align-items: center; background-color: steelblue;">
    	<div class="card text-center" style="width: 50rem; box-shadow: 2px 2px 2px 1px rgba(0, 0, 0, 0.2);">
    		<div class="card-body">
    			<h5 class="card-title">Añadir un nuevo libro</h5>
    			<c:url var="update_book_url" value="/book/updateBook" />
    			<form:form id="updateForm" action="${update_book_url}" method="post" modelAttribute="book" onsubmit="update('${book.id }')">
    			<div class="form-floating mb-3">
    			  <form:input type="text" path="isbn" class="form-control" id="floatingInput" placeholder="ISBN" value="${book.isbn}" />
				  <form:label path="isbn" for="floatingInput">ISBN</form:label>
				</div>
				<div class="form-floating mb-3">
				  <form:input type="text" path="name" class="form-control" id="floatingInput" placeholder="Name" value="${book.name}" />
				  <form:label path="name" for="floatingPassword">Book Name</form:label>
				</div>
				<div class="form-floating mb-3">
				  <form:input type="text" path="author" class="form-control" id="floatingInput" placeholder="Author" value="${book.author}"/>
				  <form:label path="author" for="floatingPassword">Author Name</form:label>
				</div>
				<input class="btn btn-primary" type="submit" value="Actualizar" />
				</form:form>
    		</div>
    	</div>
    </body>
</html>