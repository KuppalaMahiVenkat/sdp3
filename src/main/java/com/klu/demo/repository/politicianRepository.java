package com.klu.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klu.demo.model.politician;
import com.klu.demo.model.signup;

public interface politicianRepository extends JpaRepository<politician, String>{
	public politician findByEmail(String email);
	public void deleteByEmail(String email);
	 List<politician> findAll();
}
