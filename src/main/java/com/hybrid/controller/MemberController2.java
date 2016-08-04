package com.hybrid.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hybrid.javaBean.MemberInfo;

@Controller
@RequestMapping("/membership")
public class MemberController2 {
	
	//로그남기기
	static Logger log = LoggerFactory.getLogger(MemberController2.class);
	
	@RequestMapping("/regit")
	public String regit(){
		log.info("#############");
		log.info("regit()....");
		log.info("#############");
		
		return "regit";
	}
	
	@RequestMapping("/regitResult")
	public String regitResult(MemberInfo memberInfo){
		log.info("#############");
		log.info("regitRequest()....");
		log.info("#############");
		
		return "regitResult";
	}
	
	
}
