package com.klu.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klu.demo.model.sendmessage;
import com.klu.demo.model.signup;

public interface sendmessageRepository extends JpaRepository<sendmessage,Long>{
	List<sendmessage> findByFrom(String from);
	List<sendmessage> findByTo(String to);
}
