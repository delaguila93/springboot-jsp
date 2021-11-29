package com.spring.jsp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.spring.jsp.models.entity.Book;
import com.spring.jsp.models.services.BookService;

@Controller
@RequestMapping("/book")
public class BookController {

	@Autowired
	private final BookService bookService;

	public BookController(BookService bookService) {
		this.bookService = bookService;
	}

	@GetMapping("/viewBooks")
	public String viewBooks(Model model) {
		model.addAttribute("books", bookService.getBooks());
		return "view-books";
	}

	@GetMapping("/addBook")
	public String addBookView(Model model) {
		model.addAttribute("book", new Book());
		return "add-book";
	}

	@PostMapping("/addBook")
	public RedirectView addBook(@ModelAttribute("book") Book book, RedirectAttributes redirectAttributes) {
		final RedirectView redirectView = new RedirectView("/book/viewBooks", true);
		Book savedBook = bookService.addBook(book);
		redirectAttributes.addFlashAttribute("savedBook", savedBook);
		return redirectView;
	} 
	
	@DeleteMapping("/deleteBook")
	public RedirectView deleteBook(@ModelAttribute("book") Book book) {
		final RedirectView redirectView = new RedirectView("/book/viewBooks", true);
		bookService.deleteBook(book.getId());
		return redirectView;
	}
	
	@GetMapping("/updateBook/{id}")
	public String viewBooks(Model model, @PathVariable("id") Long id) {
		model.addAttribute("book", bookService.getBook(id));
		return "update-book";
	}
}