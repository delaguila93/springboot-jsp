package com.spring.jsp.models.services;

import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.jsp.main.dao.BookDao;
import com.spring.jsp.models.entity.Book;

@Service
public class BookServiceImpl implements BookService {

	
	
	@Autowired
	private BookDao bookDao;
	
	@Override
	@Transactional(readOnly = true)
	public List<Book> getBooks() {
		return (List<Book>)bookDao.findAll();
	}

	@Override
	@Transactional
	public Book addBook(Book book) {	
		return bookDao.save(book);
	}
	
	@Override
	@Transactional
	public Book updateBook(Book book) {
		return bookDao.save(book);
	}
	
	@Override
	@Transactional
	public void deleteBook(Long id) {
		bookDao.deleteById(id);
	}

	@Override
	@Transactional(readOnly = true)
	public Book getBook(Long id) {	
		return bookDao.findById(id).orElse(null);
	}

}
