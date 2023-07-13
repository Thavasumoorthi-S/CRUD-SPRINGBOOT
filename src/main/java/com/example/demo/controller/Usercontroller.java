package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.method.support.ModelAndViewContainer;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.Userdao;
import com.example.demo.model.User;

@Controller
public class Usercontroller {
	 
	@Autowired
	Userdao userdao;
	
	
	@RequestMapping("/index")
	public String first()
	{
		return "index.jsp";
	}
	
	@RequestMapping("/adduser")
	public String add(User user)
	{
		userdao.save(user);
		return "index.jsp";
	}
	
	
	@RequestMapping("/finduser")
	public ModelAndView find(@RequestParam int id)
	{
		ModelAndView mav=new ModelAndView("showuser.jsp");
		User user=userdao.findById(id).orElse(new User());
		mav.addObject(user);
		return mav;
		
	}
	@RequestMapping("deleteuser")
	public ModelAndView delete(@RequestParam int id)
	{
		ModelAndView mav=new ModelAndView("deleteuser.jsp");
		User user=userdao.findById(id).orElse(new User());
		userdao.deleteById(id);
		mav.addObject(user);
		return mav;
		
	}
	
	
	@RequestMapping("updateuser")
	public ModelAndView update(@RequestParam int id)
	{
		ModelAndView mav=new ModelAndView("updateuser.jsp");
		User user=userdao.findById(id).orElse(new User());
		userdao.deleteById(id);
		mav.addObject(user);
		return mav;
		
	}
	
}
