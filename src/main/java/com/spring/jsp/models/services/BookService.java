package com.spring.jsp.models.services;

import java.util.List;

import com.spring.jsp.models.entity.Book;

public interface BookService {
	
	List<Book> getBooks();
	Book getBook(Long id);
	Book addBook(Book book);
	Book updateBook(Book book);
	void deleteBook(Long id);
	void deleteBook(Book book);
	
}
