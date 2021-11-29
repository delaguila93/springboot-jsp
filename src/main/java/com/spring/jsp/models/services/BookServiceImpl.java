package com.spring.jsp.models.services;

import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.jsp.models.entity.Book;

@Service
public class BookServiceImpl implements BookService {

	private LinkedList<Book> list = new LinkedList<>();
	
	@Override
	public List<Book> getBooks() {
		return list;
	}

	@Override
	public Book addBook(Book book) {
		list.add(book);
		return book;
	}
	
	@Override
	public Book updateBook(Book book) {
		return null;
	}
	
	@Override
	public void deleteBook(Long id) {
		for (Book book : list) {
			if (id.equals(book.getId())) {
				list.remove(book);
			}
		}
	}

}
