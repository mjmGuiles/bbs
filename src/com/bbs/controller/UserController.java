package com.bbs.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bbs.entity.User;
import com.bbs.service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService us;
	//�οͽ�����ҳ
	@RequestMapping("index")
	public String goHomepage(){
		return "redirect:/getPost";	
	}
	//����ҳ
	@RequestMapping("search")
	public String search(String srchtxt,Model model){
		if(srchtxt != ""){
			return "redirect:/yes";
		}else{
		    return "redirect:/no";
		}
	}
	//����������
	@RequestMapping("yes")
	public String yessearch(){
		return "yessearch";
		
	}
	//����������
	@RequestMapping("no")
	public String nosearch(){
		return "nosearch";	
	}
	//��������ҳ
	@RequestMapping("post")
	public String post(){
		return "post";	
	}
	//�û�����
	@RequestMapping("login")
	public String homepsge(HttpSession session,User users){
	    User user = us.findUser(users);
		if(user != null){
			session.setAttribute("user", user);
			return "homepage";
		}else{
			return "reditect:/index";
		}
		
	}
	//�˳�����
	@RequestMapping("quit")
	public String quit(HttpSession session){
		session.removeAttribute("user");
		return "homepage";
		
	}
	//��Ϣҳ
	@RequestMapping("message")
	public String message(){
		return "message";	
	}
	//�ղ�Ҳ
	@RequestMapping("favorite")
	public String favorite(){
		return "favorite";	
	}
	//���˿ռ�Ҳ
	@RequestMapping("perspace")
	public String perspace(Model model,Integer userId){
		List<User> gf = us.getAllFriend(userId);
		model.addAttribute("gf", gf);
		return "perspace";
	} 
	//��������
	@RequestMapping("profile")
	public String profile(){
		return "profile";	
	}
	//����ҳ
	@RequestMapping("setup")
	public String setup(){
		return "setup";
	}
	//�˺�ҳ��
	@RequestMapping("account")
	public String account(Model model,Integer userId){
		String phone = us.getPhone(userId);
		String email = us.getEmail(userId);
		model.addAttribute("phone", phone);
		model.addAttribute("email", email);
		return "account";
	}
	//MY
	@RequestMapping("my")
	public String my(){
		return "my";
	}
	//����
	@RequestMapping("changePassword")
	public String changePassword(User user){
		int cpd = us.changePassword(user);
		if(cpd != 0){
			return "redirect:account";
		}else{
			return "redirect:/setup";
		}
	}
	//�ĺ�
	@RequestMapping("changePhone")
	public String changePhone(User user){
		int cpe = us.changePhone(user);
		if(cpe != 0){
			return "redirect:account";
		}else{
			return "redirect:/setup";
		}
	}
	//������
	@RequestMapping("changeMail")
	public String changeMail(User user){
		int cml = us.changeMail(user);
		if(cml != 0){
			return "redirect:account";
		}else{
			return "redirect:/setup";
		}
	}
	//���¸�����Ϣ
	@RequestMapping("updateUser")
	public String updateUser(User user){
		int uu = us.updateUser(user);
		if(uu != 0){
			return "redirect:/setup";
		}
		    return "redirect:/quit";
	}
	@RequestMapping("deleteFri")
	public String deleteFri(Integer friId){
		int df = us.deleteFriend(friId);
		return "redirect:/perspace";
	}
}


