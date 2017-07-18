package com.qbd.controller;

 
 
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

 

@RestController
@RequestMapping("/jsp/admin")
public class AdminIndexController {
	@RequestMapping("index")
	public ModelAndView index(){
		 ModelAndView mv = new ModelAndView("admin/index");     
		 return mv;  
	}
	 
}
