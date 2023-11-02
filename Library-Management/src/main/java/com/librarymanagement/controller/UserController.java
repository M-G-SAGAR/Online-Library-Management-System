package com.librarymanagement.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.librarymanagement.entities.Book;
import com.librarymanagement.entities.User;
import com.librarymanagement.repository.BookRepository;
import com.librarymanagement.repository.UserRepository;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserRepository userRepository;
//	
//	@Autowired
//	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private BookRepository bookRepository;

	
	@GetMapping("/dashboard")
	public String userDashboard() {
		return "user/userdashboard";
	}
	

	@GetMapping("/index")
	public String home() {
		return "user/userindex";
	}
	
	@GetMapping("/charts")
	public String charts() {
		return "user/charts";
	}
	
	@GetMapping("/profile")
	public String profile() {
		return "user/profile";
	}
	
	@GetMapping("/book_table")
    public String getBooks(Model model) {
        List<Book> list = bookRepository.findAll();
        model.addAttribute("books", list);
        return "user/tables"; // Return the view name as a string
    }
	
    @GetMapping("/user/{id}/profile")
    public String profile(@PathVariable("id") long id, Model model, Principal principal) {
    	principal.getName();
        User user = userRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid book ID: " + id));
        model.addAttribute("user", user);
        return "user/profile";
    }
	
    
    @GetMapping("/add_book")
	public String addBook(Model model) {
		model.addAttribute("book", new Book());
		return "add_book";
	}
	
	@PostMapping("/book_table")
	public String createBook(@ModelAttribute("book") Book book, Principal principal) throws Exception {
		
		String name = principal.getName();
		User user = this.userRepository.getUserByUserName(name);
		
		book.setUser(user);
		
		//bookService.add_book(book);
		bookRepository.save(book);
		return "redirect:book_table";
    
	}
//	@PostMapping("/doregister")
//	public String doregister(@Valid @ModelAttribute("user") User user,BindingResult result, Model model,
//			HttpSession session) {
//		System.out.println(user);
//		
//		if(result.hasErrors())
//		{
//			
//			FieldError name= result.getFieldError("firstName");
//			
//			//Validation for firstName Attribute
//			if(name !=null) {
//			model.addAttribute("firstNameErrors", name.getDefaultMessage());
//			}
//			
//			FieldError last= result.getFieldError("lastName");
//			
//			//Validation for lastName Attribute
//			if(last !=null) {
//			model.addAttribute("lastNameErrors", last.getDefaultMessage());
//			}
//			
//			FieldError email = result.getFieldError("email");
//			
//			//Validation for email Attribute
//			if(email !=null) {
//			model.addAttribute("emailErrors", email.getDefaultMessage());
//			}
//			
//			FieldError password = result.getFieldError("password");
//			
//			//Validation for password Attribute
//			if(password !=null) {
//			model.addAttribute("passwordErrors", password.getDefaultMessage());
//			}
//			
//			model.addAttribute("user",user);
//			return "register";
//		}
//		
//		try {
//			
//			user.setRole("ROLE_USER");
//			user.setImage("");
//			user.setPassword(passwordEncoder.encode(user.getPassword()));
//			
//			userRepository.save(user);
//			model.addAttribute("user", new User());
//			model.addAttribute("message1", "Successfull Registered!!!!!!");
//			return "register";
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//			model.addAttribute("message2", "Bad Creadentials!!!!!!");
//			//model.addAttribute("user", user);
//			//return "register";
//		}
//		
//		//userRepository.save(user);
//		
//		return "register";
//	}
	

//
//	@GetMapping("/password")
//	public String password() {
//		return "password";
//	} 
	
}
