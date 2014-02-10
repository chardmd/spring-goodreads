package com.springdemo.goodreads.web;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.springdemo.goodreads.model.Book;
import com.springdemo.goodreads.model.Books;
import com.springdemo.goodreads.service.GoodReadService;

/**
 * @author Richard Dimalanta
 */
@Controller
@RequestMapping("/books")
public class BookController {
	
	private final GoodReadService goodReadService;
	
	@Autowired
	public BookController(GoodReadService goodReadService) {
		this.goodReadService = goodReadService;
	}
	
	@RequestMapping(method = RequestMethod.GET)
    public ModelAndView showBookList(ModelAndView model) {
        // Here we are returning an object of type 'Books' rather than a collection of Book objects 
        // so it is simpler for Object-Xml mapping
      
    	Books books = new Books();
    	Collection<Book> bookList = this.goodReadService.findBooks();
    	books.getBookList().addAll(bookList);
    	model.addObject("books", books);
    	model.setViewName("books/bookList");
    	
    	return model;
    }
	
	


}
