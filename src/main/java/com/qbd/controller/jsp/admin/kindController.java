package com.qbd.controller.jsp.admin;




import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.qbd.cons.Sys;
import com.qbd.model.Kind;
import com.qbd.model.Page;
import com.qbd.service.KindService;
import com.qbd.utils.DateUtils;


 
@RestController
@RequestMapping("/jsp/admin/kind")
public class kindController {
	 
	private KindService kindService;
	Page page=new Page();
	

	public KindService getKindService() {
		return kindService;
	}

	@Autowired
	public void setKindService(KindService kindService) {
		this.kindService = kindService;
	}


	@RequestMapping("list")
	public ModelAndView list(Kind kind,HttpServletRequest req){
		String kname=kind.getKname();
		if(kname!=null&&kname.trim().length()>0){
			kind.setKname("%"+kname+"%");
		}
		
		if(kind.getPageNo()==null)kind.setPageNo(1);
		if(kind.getPageSize()==null)kind.setPageSize(Sys.Common.pageSize);
		
		page.setPageNo(kind.getPageNo());
		page.setPageSize(kind.getPageSize());
		page.setStartRow(page.getPageNo(), page.getPageSize());
		page.setCount(kindService.queryCount(kind));
		page.setPages(page.getCount(), page.getPageSize());
		
		kind.setStartRow(page.getStartRow());
		
		List<Kind> li=kindService.list(kind);
		req.setAttribute("li", li);
		req.setAttribute("page", page);
		kind.setKname(kname);
		req.setAttribute("kind", kind);
		ModelAndView mv = new ModelAndView("admin/kind_list");     
		return mv;  
	}
	
	@RequestMapping("add")
	public ModelAndView add(){
		 ModelAndView mv = new ModelAndView("admin/kind_add");     
		 return mv;  
	}
	
	@RequestMapping("added")
	public ModelAndView added(@ModelAttribute Kind kind){
		kind.setCts(DateUtils.DateTimeToString(new Date()));
		kindService.add(kind);
		 ModelAndView mv = new ModelAndView("redirect:/jsp/admin/kind/list");     
		 return mv;  
	}
	
	@RequestMapping("update")
	public ModelAndView update(Integer kid,Integer  pageNo,HttpServletRequest req){
		req.setAttribute("kind",kindService.byId(kid));
		ModelAndView mv = new ModelAndView("admin/kind_update");     
		return mv;  
	}
	
	@RequestMapping("updated")
	public ModelAndView updated(Kind kind,HttpServletRequest req){
		kindService.update(kind);
		return list(kind,req);
	}
	
	@RequestMapping("isuse")
	public ModelAndView isuse(Kind kind,HttpServletRequest req){
		Kind old=kindService.byId(kind.getKid());
		Kind newkind=new Kind();
		if(old.getStatus()==Sys.Common.NO_USE)newkind.setStatus(Sys.Common.USE);
		else newkind.setStatus(Sys.Common.NO_USE);
		newkind.setKid(kind.getKid());
		kindService.update(newkind);
		return list(kind,req);
	}
	
	@RequestMapping("del")
	public ModelAndView del(Kind kind,HttpServletRequest req){
		kindService.deleteById(kind.getKid()); 
		return list(kind,req);
	}
	
	@RequestMapping("plnouse")
	public ModelAndView plnouse(Kind kind,HttpServletRequest req){
		String[] ids=kind.getIds().split(",");
		for(String id:ids){
			Kind newkind=new Kind(); 
			newkind.setStatus(Sys.Common.NO_USE);
			newkind.setKid(Integer.parseInt(id));
			kindService.update(newkind);
		}
		return list(kind,req);
	}
	
	@RequestMapping("pluse")
	public ModelAndView pluse(Kind kind,HttpServletRequest req){
		String[] ids=kind.getIds().split(",");
		for(String id:ids){
			Kind newkind=new Kind(); 
			newkind.setStatus(Sys.Common.USE);
			newkind.setKid(Integer.parseInt(id));
			kindService.update(newkind);
		}
		return list(kind,req);
	}
	
	@RequestMapping("pldel")
	public ModelAndView pldel(Kind kind,HttpServletRequest req){
		String[] ids=kind.getIds().split(",");
		for(String id:ids){
			kindService.deleteById(Integer.parseInt(id)); 
		}
		return list(kind,req);
	}
	
	
	 
	
}
