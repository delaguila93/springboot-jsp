package com.spring.jsp.models.entity;

public class Book {

	private String isbn;
    private String name;
    private String author;
    
	public Book() {
		this.isbn = "ISBN001";
		this.name = "Sinsajo";
		this.author = "Suzanne Collins";
	}
	
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	
}