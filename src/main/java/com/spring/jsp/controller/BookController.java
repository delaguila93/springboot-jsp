package com.spring.jsp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	@RequestMapping(value={"/deleteBook/{id}"},method= {RequestMethod.DELETE, RequestMethod.GET})
	public String deleteBook(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {
		bookService.deleteBook(id);
		return "redirect:/book/viewBooks";
	}
	
	@GetMapping("/updateBook")
	public String viewUpdateBook(Model model, @RequestParam Long id) {
		Book book = bookService.getBook(id);
		model.addAttribute("book", book);
		return "update-book";
	}

	@PostMapping("/updateBook")
	public String updateBook(Model model, @ModelAttribute("book") Book book) {
		bookService.updateBook(book);
		return "redirect:/book/viewBooks";
	}
	
}