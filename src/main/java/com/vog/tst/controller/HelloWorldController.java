package com.vog.tst.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {
	@RequestMapping(value="/")
	public String hello() {
		return "Hello Cloudly World !";
	}
	
}
