package com.bbs.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bbs.entity.User;
import com.bbs.service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService us;
	//游客进入首页
	@RequestMapping("index")
	public String goHomepage(){
		return "redirect:/getPost";	
	}
	//发表帖子页
	@RequestMapping("post")
	public String post(){
		return "post";	
	}
	//用户登入
	@RequestMapping("login")
	public String homepsge(HttpSession session,User users){
	    User user = us.findUser(users);
		if(user != null){
			session.setAttribute("user", user);
			return "redirect:/getPost";
		}else{
			return "reditect:/index";
		}
		
	}
	//退出操作
	@RequestMapping("quit")
	public String quit(HttpSession session){
		session.removeAttribute("user");
		return "homepage";
		
	}
	//消息页
	@RequestMapping("message")
	public String message(){
		return "message";	
	}
	//收藏也
	@RequestMapping("favorite")
	public String favorite(){
		return "favorite";	
	}
	//个人空间也
	@RequestMapping("perspace")
	public String perspace(Model model,Integer userId){
		List<User> gf = us.getAllFriend(userId);
		model.addAttribute("gf", gf);
		return "perspace";
	} 
	//个人资料
	@RequestMapping("profile")
	public String profile(){
		return "profile";	
	}
	//设置页
	@RequestMapping("setup")
	public String setup(){
		return "setup";
	}
	//账号页面
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
	//改密
	@RequestMapping("changePassword")
	public String changePassword(User user){
		int cpd = us.changePassword(user);
		if(cpd != 0){
			return "redirect:account";
		}else{
			return "redirect:/setup";
		}
	}
	//改号
	@RequestMapping("changePhone")
	public String changePhone(User user){
		int cpe = us.changePhone(user);
		if(cpe != 0){
			return "redirect:account";
		}else{
			return "redirect:/setup";
		}
	}
	//改邮箱
	@RequestMapping("changeMail")
	public String changeMail(User user){
		int cml = us.changeMail(user);
		if(cml != 0){
			return "redirect:account";
		}else{
			return "redirect:/setup";
		}
	}
	//更新个人信息
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
	//jqueryEasyUI
	//easyUI测试
    @RequestMapping("getAllUsers")
    @ResponseBody
    public List<User> getAllUsers(){
    	List<User> gau = us.getAllUser();
		return gau;
    	
    }
    @RequestMapping("addUser")
    @ResponseBody
    public int addUser(User user){
    	int result = us.insertSelective(user);
		return result;	
    }
    @RequestMapping("updateUser1")
    @ResponseBody
    public int updateUser1(User userId){
    	int uu = us.updateByPrimaryKeySelective(userId);
		return uu;
    }
    @InitBinder  
    public void initBinder(ServletRequestDataBinder binder) {  
        SimpleDateFormat dateFormat = new SimpleDateFormat(  
                "yyyy-MM-dd HH:mm:ss");  
        binder.registerCustomEditor(Date.class, new CustomDateEditor(  
                dateFormat, false));  
    }  
    @RequestMapping("test")
    public String goTest(){
    	return "JQueryEasyUI";
    }
}


