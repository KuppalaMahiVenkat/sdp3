package com.klu.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.klu.demo.model.signup;
import com.klu.demo.repository.signupRepository;

//import com.example.demo.Employee;

@Service
public class signupService {
@Autowired
private signupRepository sg;
public void addsign(signup sp)
{
	sg.save(sp);
}
public  signup findemail(String email)
{
	 return sg.findByEmail(email);
}
public List<signup> getAllRecords()
{
	return (List<signup>)sg.findAll();
}
@Transactional
public void deleteByEmail(String email)
{
   sg.deleteByEmail(email);
}
}
