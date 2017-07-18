package com.qbd.controller.jsp.admin;


import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.qbd.model.Cmg;
import com.qbd.service.CmgService;
import com.qbd.utils.DateUtils;

 
@RestController
@RequestMapping("/jsp/admin/cmg")
public class CmgController {
	private CmgService cmgService;
	
	
	public CmgService getCmgService() {
		return cmgService;
	}

	@Autowired
	public void setCmgService(CmgService cmgService) {
		this.cmgService = cmgService;
	}

	@RequestMapping("login")
	public ModelAndView login(){
		 ModelAndView mv = new ModelAndView("admin/login");     
		 return mv;  
	}
	
	@RequestMapping("loginin")
	public ModelAndView logIn(@ModelAttribute Cmg cmg,HttpServletRequest req){
		Cmg c=cmgService.queryCmg(cmg);
		if(c==null){
			req.setAttribute("msg", "登录失败，请联系管理员");
			return new ModelAndView("admin/login");
		}else{
			cmgService.updateTs(DateUtils.DateTimeToString(new Date()), cmg.getCid()+"");
			req.getSession().setAttribute("cmg", cmg);
			return new ModelAndView("redirect:/jsp/admin/index");
		}
		  
	}
	
}
