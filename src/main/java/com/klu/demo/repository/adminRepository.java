package com.klu.demo.repository;
import org.springframework.data.jpa.repository.JpaRepository;

import com.klu.demo.model.admin;
import com.klu.demo.model.login;
public interface adminRepository  extends JpaRepository<admin, String> {
	public admin findByEmail(String email);
}
