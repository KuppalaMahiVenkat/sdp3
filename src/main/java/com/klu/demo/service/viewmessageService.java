package com.klu.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.demo.repository.viewmessageRepository;

@Service
public class viewmessageService {
	@Autowired
	private viewmessageRepository vm;
}
