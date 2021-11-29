package com.spring.jsp.main.dao;

import org.springframework.data.repository.CrudRepository;

import com.spring.jsp.models.entity.Book;


public interface BookDao extends CrudRepository<Book, Long> {

}
