package com.librarymanagement.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.librarymanagement.entities.Book;
import com.librarymanagement.entities.User;

public interface BookRepository extends JpaRepository<Book, Long> {

	public Book save(long id);

	
	
	public List<Book> findByNameContainingAndUser(String name, User user);
}
