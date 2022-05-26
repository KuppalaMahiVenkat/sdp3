package com.klu.demo.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.demo.model.admin;
import com.klu.demo.repository.adminRepository;
@Service
public class adminService {
	@Autowired
	private adminRepository ad;
	public void addlog(admin sp)
	{
		ad.save(sp);
	}
	public  admin findemail(String email)
	{
		 return ad.findByEmail(email);
	}
}

