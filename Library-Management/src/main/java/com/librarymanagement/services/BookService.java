package com.librarymanagement.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.librarymanagement.entities.Book;
import com.librarymanagement.repository.BookRepository;

@Service
public class BookService {

	@Autowired
	private BookRepository bookRepository;
	
	public Book add_book(Book book)
	{
		bookRepository.save(book);
		return book;
	}
	
	public List<Book> getAllBooks()
	{
		List<Book> listOfBooks = bookRepository.findAll();
		return listOfBooks;
	}
	
	public Book updateById(Book book, long id)
	{
		Book book1 = bookRepository.save(id);
		return book1;
	}
}
