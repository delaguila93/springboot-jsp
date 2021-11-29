<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>View Books</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
     
    </head>
    <body>
        <table class="table">
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
                        <td><button type="button" class="btn btn-primary">
								<i class="bi bi-pencil-square"></i> Editar
							</button>
						</td>
                        <td><button type="button" class="btn btn-outline-danger">
                        		<i class="bi bi-trash"></i> Eliminar
                        	</button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>