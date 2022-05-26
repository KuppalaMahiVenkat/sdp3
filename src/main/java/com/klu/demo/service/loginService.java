package com.klu.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.demo.model.login;
import com.klu.demo.repository.loginRepository;
@Service
public class loginService {
	@Autowired
	private loginRepository sg;
	public void addlog(login sp)
	{
		sg.save(sp);
	}
	public  login findemail(String email)
	{
		 return sg.findByEmail(email);
	}
}
