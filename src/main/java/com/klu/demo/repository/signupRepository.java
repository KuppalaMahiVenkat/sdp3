package com.klu.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klu.demo.model.signup;

public interface signupRepository extends JpaRepository<signup,String>{
	public signup findByEmail(String email);
	 List<signup> findAll();
	 public void  deleteByEmail(String email);
}
