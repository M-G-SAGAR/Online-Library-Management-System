package com.librarymanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.librarymanagement.entities.User;

public interface UserRepository extends JpaRepository<User, Long> {

//	@Query("select u from User where u.email = : email")
//	public User getUserByUserName(@Param("email") String email);
	
	 @Query("select u from User u where u.email = :email")
	 public User getUserByUserName(@Param("email") String email);
}
