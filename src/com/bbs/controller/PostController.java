package com.bbs.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bbs.entity.Post;
import com.bbs.service.PostService;

@Controller
public class PostController {
	@Autowired
	PostService ps;
	//新帖页面
	@RequestMapping("getNewPost")
	public String getNewPost(Model model,String p){
		int pageIndex=1;
		int pageSize = 15;
	    if(p != null&&!"".equals(p)){
	    	pageIndex = Integer.parseInt(p);
	    }else if(p == null&&"".equals(p)){
	    	pageIndex = 1;
	    }
		int rowCount = ps.getCount();
		int pageCount = 0;
		if(rowCount%pageSize ==0){
			pageCount = rowCount%pageSize;
		}else{
			pageCount = rowCount%pageSize+1;
		}
		int startNumber = (pageIndex-1)*pageSize;
		int endNumber = pageIndex*pageSize;
		int nextIndex = pageIndex>=pageCount?pageCount:pageIndex+1; 
		List<Post> newPostList = ps.getAllPost();
		model.addAttribute("nextIndex", nextIndex);
		model.addAttribute("pageIndex", pageIndex);
		model.addAttribute("newPostList", newPostList);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("startNumber", startNumber);
		model.addAttribute("endNumber", endNumber);
		model.addAttribute("pageCount", pageCount);
		return "newpost";	
	}
	//首页的分页以及热帖
	@RequestMapping("getPost")
	public String getPost(Model model,String p,HttpSession session){
		int pageIndex=1;
		int pageSize = 10;
	    if(p != null&&!"".equals(p)){
	    	pageIndex = Integer.parseInt(p);
	    }else if(p == null&&"".equals(p)){
	    	pageIndex = 1;
	    }
		int rowCount = ps.getCount();
		int pageCount = 0;
		if(rowCount%pageSize ==0){
			pageCount = rowCount%pageSize;
		}else{
			pageCount = rowCount%pageSize+1;
		}
		int startNumber = (pageIndex-1)*pageSize;
		int endNumber = pageIndex*pageSize;
		int upIndex = pageIndex<=1?1:pageIndex-1;
		int nextIndex = pageIndex>=pageCount?pageCount:pageIndex+1; 
	    List<Post> hotPostList = ps.getHotPost();
		List<Post> postList = ps.getAllPost();
		session.setAttribute("hotPostList", hotPostList);
		model.addAttribute("nextIndex", nextIndex);
		model.addAttribute("upIndex", upIndex);
		model.addAttribute("postList", postList);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("startNumber", startNumber);
		model.addAttribute("endNumber", endNumber);
		model.addAttribute("pageCount", pageCount);
		return "homepage";
		
	}
	//搜索页
	@RequestMapping("search")
	public String search(Post post,Model model,String postContent,String p,HttpSession session){
		if(post != null&&!"".equals(postContent)){
			int pageIndex=1;
			int pageSize = 5;
			post.setPostContent(postContent); 
		    if(p != null&&!"".equals(p)){
		    	pageIndex = Integer.parseInt(p);
		    }else if(p == null&&"".equals(p)){
		    	pageIndex = 1;
		    }
		    int searchPostCount = ps.searchPostCount(post);
			int pageCount = 0;
			if(searchPostCount%pageSize ==0){
				pageCount = searchPostCount%pageSize;
			}else{
				pageCount = searchPostCount%pageSize+1;
			}
			int startNumber = (pageIndex-1)*pageSize;
			int endNumber = pageIndex*pageSize;
			int upIndex = pageIndex<=1?1:pageIndex-1;
			int nextIndex = pageIndex>=pageCount?pageCount:pageIndex+1; 
			List<Post> searchPostList = ps.searchPost(post);
			model.addAttribute("nextIndex", nextIndex);
			model.addAttribute("upIndex", upIndex);
			model.addAttribute("pageSize", pageSize);
			model.addAttribute("startNumber", startNumber);
			model.addAttribute("endNumber", endNumber);
			model.addAttribute("pageCount", pageCount);
			model.addAttribute("searchPostCount", searchPostCount);
			model.addAttribute("searchPostList", searchPostList);
			session.setAttribute("postContent", postContent);
			return "yessearch";
		}else{
		    return "nosearch";
		}
	}
}
