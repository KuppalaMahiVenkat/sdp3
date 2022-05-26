package com.klu.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.demo.repository.sentmessageRepository;

@Service
public class sentmessageService {
	@Autowired
	private sentmessageRepository sm;
}
