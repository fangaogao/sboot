package com.qbd.controller;

 
 
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

 

@RestController
@RequestMapping("/jsp/front")
public class AdminFrontController {
	@RequestMapping("index")
	public ModelAndView index(){
		 ModelAndView mv = new ModelAndView("front/index");     
		 return mv;  
	}
	 
}
