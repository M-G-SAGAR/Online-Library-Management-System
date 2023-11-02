package com.librarymanagement.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.librarymanagement.entities.Book;
import com.librarymanagement.entities.User;
import com.librarymanagement.repository.BookRepository;
import com.librarymanagement.repository.UserRepository;
import com.librarymanagement.services.BookService;

@Controller
public class LibraryManagementController {
	
//	@Autowired
//	private BookService bookService;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private BookRepository bookRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	
	@GetMapping("/register")
	public String register(Model model) {
		model.addAttribute("user",new User());
		return "register";
	}
	
	@PostMapping("/doregister")
	public String doregister(@Valid @ModelAttribute("user") User user,BindingResult result, Model model,
			HttpSession session) {
		System.out.println(user);
		
		if(result.hasErrors())
		{
			
			FieldError name= result.getFieldError("firstName");
			
			//Validation for firstName Attribute
			if(name !=null) {
			model.addAttribute("firstNameErrors", name.getDefaultMessage());
			}
			
			FieldError last= result.getFieldError("lastName");
			
			//Validation for lastName Attribute
			if(last !=null) {
			model.addAttribute("lastNameErrors", last.getDefaultMessage());
			}
			
			FieldError email = result.getFieldError("email");
			
			//Validation for email Attribute
			if(email !=null) {
			model.addAttribute("emailErrors", email.getDefaultMessage());
			}
			
			FieldError password = result.getFieldError("password");
			
			//Validation for password Attribute
			if(password !=null) {
			model.addAttribute("passwordErrors", password.getDefaultMessage());
			}
			
			model.addAttribute("user",user);
			return "register";
		}
		
		try {
			
			user.setRole("ROLE_USER");
			user.setImage("");
			user.setPassword(passwordEncoder.encode(user.getPassword()));
			
			userRepository.save(user);
			model.addAttribute("user", new User());
			model.addAttribute("message1", "Successfull Registered!!!!!!");
			return "register";
			
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message2", "Bad Creadentials!!!!!!");
			//model.addAttribute("user", user);
			return "register";
		}
		
		//userRepository.save(user);
		
		//return "";
	}

	@GetMapping("/login")
	public String customLogin(Model model) {
		return "login";
	}
	
	@GetMapping("/")
	public String welcome() {
		return "welcome";
	}
	
	
	/*---------- This For Adding the Book in DB --------------*/
	
	/*
	 * @GetMapping("/add_book") public String addBook(Model model) {
	 * model.addAttribute("book", new Book()); return "add_book"; }
	 * 
	 * @PostMapping("/book_table") public String createBook(@ModelAttribute("book")
	 * Book book) throws Exception { //bookService.add_book(book);
	 * bookRepository.save(book); return "redirect:book_table"; }
	 */
	
//	@GetMapping("/book_table")
//	public ModelAndView getBooks() {
//		List<Book> list = bookRepository.findAll();
//		
//		ModelAndView model = new ModelAndView();
//		
//		model.addObject("books",list);
//		model.setViewName("tables");
//		return model;
//	}
	
	@GetMapping("/book_table")
    public String getBooks(Model model) {
        List<Book> list = bookRepository.findAll();
        model.addAttribute("books", list);
        return "tables"; // Return the view name as a string
    }
	
	
	/* That Method For Fetch the Particular Data From DB for Update */
	 @GetMapping("/update_book/{id}/edit")
	    public String editBookForm(@PathVariable("id") long id, Model model) {
	        Book book = bookRepository.findById(id)
	                .orElseThrow(() -> new IllegalArgumentException("Invalid book ID: " + id));
	        model.addAttribute("book", book);
	        return "update";
	    }

	 /* That Method For Update the Particular Fetched Data */
	    @PostMapping("/update_book/{id}")
	    public String updateBook(@PathVariable("id") long id, @ModelAttribute("book") Book book) {
	        book.setId(id);
	        bookRepository.save(book);
	        return "redirect:/book_table";
	    }
	    
	    
	    @GetMapping("/delete_book/{id}/remove")
	    public String deleteBook(@PathVariable("id") long id) {
	        bookRepository.deleteById(id);
	        return "redirect:/book_table";
	    }
	    
	    @GetMapping("/books/{id}/show")
	    public String showBook(@PathVariable("id") long id, Model model) {
	        Book book = bookRepository.findById(id)
	                .orElseThrow(() -> new IllegalArgumentException("Invalid book ID: " + id));
	        model.addAttribute("book", book);
	        return "show_page";
	    }

	    
	    
	@GetMapping("/401")
	public String errors401() {
		return "401";
	}
	
	@GetMapping("/404")
	public String errors404() {
		return "404";
	}
	
	@GetMapping("/500")
	public String errors500() {
		return "500";
	}
	
	@GetMapping("/charts")
	public String charts() {
		return "charts";
	}
		
}
