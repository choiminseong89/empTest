package com.emp.mvc.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.emp.mvc.dao.MVCDao;
import com.emp.mvc.service.MVCService;

@Service
public class MVCServiceImpl implements MVCService {

	@Autowired
	private MVCDao mvcdao;
	
	@Override
	public String sayHello() {
		System.out.println(mvcdao.sayHello()+"================================");
		return "æ»≥Á«œΩ√∑∆¥œ±Ó";
	}
	
}
