package com.librarymanagement.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.librarymanagement.entities.Book;
import com.librarymanagement.entities.User;
import com.librarymanagement.repository.BookRepository;
import com.librarymanagement.repository.UserRepository;

@RestController
public class SearchController {
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private BookRepository bookRepository;

	@GetMapping("/search/{query}")
	public ResponseEntity<?> search(@PathVariable("query") String query, Principal principal){
		
		User user = userRepository.getUserByUserName(principal.getName());
		
		List<Book> book = this.bookRepository.findByNameContainingAndUser(query, user);
		
		
		return ResponseEntity.ok(book);
	}
}
