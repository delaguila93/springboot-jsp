package com.spring.jsp.models.services;

import java.util.List;

import com.spring.jsp.models.entity.Book;

public interface BookService {
	
	List<Book> getBooks();
	Book addBook(Book book);
	Book updateBook(Book book);
	void deleteBook(Long id);
	Book getBook(Long id);
	
}
