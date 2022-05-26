package com.klu.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.demo.model.sendmessage;
import com.klu.demo.model.signup;
import com.klu.demo.repository.sendmessageRepository;

@Service
public class sendmessageService {
	@Autowired
	private sendmessageRepository sm;
	public void sendmess(sendmessage sp)
	{
		sm.save(sp);
	}
	public List<sendmessage> findByFrom(String from){
		return (List<sendmessage>)sm.findByFrom(from);
	}
	public List<sendmessage> findByTo(String to){
		return (List<sendmessage>)sm.findByTo(to);
	}
}
