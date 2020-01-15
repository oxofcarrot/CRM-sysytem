package com.mortal.CRMSYSTEM.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;



import com.mortal.CRMSYSTEM.service.UsernameService;
import com.mortal.CRMSYSTEM.vo.username;



@Controller
@RequestMapping("user")
public class UserController {
	@Autowired
	private UsernameService crmsystemService;
	
	@RequestMapping("/list")
	public String list(ModelMap mm)
	{
		mm.put("arr", crmsystemService.getAllUsername());
		return "list";
	}
	
	//注册
	
	@RequestMapping("/register")
	public String insert(username m,ModelMap mm)
	{
		crmsystemService.saveOneUsername(m);
		return "redirect:../index.jsp";		
	}
	//删除用户
	@RequestMapping("/delete")
	public String delete(String id,ModelMap mm){
		boolean b=crmsystemService.removeOneUsername(id);
		return list(mm);
	}
	
	//修改个人信息
	@RequestMapping("/update")
	public String update(String id,ModelMap mm){
		boolean c=crmsystemService.updateOneUsername(id);
		return "update";
	}
	
	//登录
	@RequestMapping("/login")
	public String login(username u){
		System.out.println(u.getCode()+"  "+u.getPassword());
		username user=crmsystemService.findByCode(u.getCode());
		if(user == null) {
			System.out.println("用户名错误");
			//用户名不存在
			 return "redirect:../test.jsp";
		}
		System.out.println(user.getCode()+"  "+user.getPassword());
		if(!u.getPassword().equals(user.getPassword())) {
			System.out.println("密码错误");
		
			 return "redirect:../test.jsp";
		}
		return "home";
		
	}

	
	



}