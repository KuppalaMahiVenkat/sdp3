package com.klu.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klu.demo.model.login;

public interface loginRepository extends JpaRepository<login, String>{
	public login findByEmail(String email);
}
