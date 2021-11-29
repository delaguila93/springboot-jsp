<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>View Books</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    
    <body style="display: flex; justify-content: center; align-items: center; background-color: steelblue;">
    	<div class="card text-center" style="width: 50rem; box-shadow: 2px 2px 2px 1px rgba(0, 0, 0, 0.2);">
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
				                    <tr>
				                        <td>${book.isbn}</td>
				                        <td>${book.name}</td>
				                        <td>${book.author}</td>
				                        <td><a href="/book/updateBook/${book.id}"><button type="button" class="btn btn-primary">
												<i class="bi bi-pencil-square"></i> Editar</button></a>
										</td>
				                        <td><button type="button" class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#deleteBook">
				                        		<i class="bi bi-trash"></i> Eliminar</button>
				                        </td>
				                    </tr>
				                </c:forEach>
				            </tbody>
				        </table>
				    </div>
				<a href="/book/addBook">
					<button type="button" class="btn btn-primary">Añadir libro</button>
				</a>
				
				<!-- Modal -->
				<div class="modal fade" id="deleteBook" tabindex="-1" aria-labelledby="deleteBookLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="deleteBookLabel">Eliminar libro</h5>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Cancelar"></button>
				      </div>
				      <div class="modal-body">
				      	<p>¿Está seguro de que desea borrar el libro especificado?</p>
				      	<p>No se podrán revertir los cambios una vez hecho.</p>
				      </div>
				      <div class="modal-footer">
				      	<c:url var="add_book_url" value="/book/deleteBook"/>
				        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
				        <button type="button" class="btn btn-primary">Aceptar</button>
				      </div>
				    </div>
				  </div>
				</div>
    		</div>
    	</div>
    </body>
</html>