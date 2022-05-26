package com.klu.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.klu.demo.model.politician;
import com.klu.demo.model.signup;
import com.klu.demo.repository.politicianRepository;

@Service
public class politicianService {
	@Autowired
	politicianRepository pr;
	public  politician findemail(String email)
	{
		 return pr.findByEmail(email);
	}
	public List<politician> getAllRecords()
	{
		return (List<politician>)pr.findAll();
	}
	public void addpolitician(politician p)
	{
	pr.save(p);
	}
	@Transactional
	public void deleteByEmail(String email)
	{
	   pr.deleteByEmail(email);
	}
	

}
