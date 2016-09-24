package com.bbs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bbs.entity.Theme;
import com.bbs.service.ThemeService;

@Controller
public class ThemeController {
	@Autowired
	ThemeService ts;
	@RequestMapping("list")
	public String getList(Integer themeId,Model model){
		Theme gl = ts.selectByPrimaryKey(themeId);
		List<Theme> postlist = ts.getListByTheme(themeId);
		model.addAttribute("gl", gl);
		model.addAttribute("postlist", postlist);
		return "list";
		}
	@RequestMapping("getTheme")
	public String getTheme(Model model){
		List<Theme> themeOfsection1 = ts.getThemeBySection1();
		List<Theme> themeOfsection2 = ts.getThemeBySection2();
		List<Theme> themeOfsection3 = ts.getThemeBySection3();
		List<Theme> themeOfsection4 = ts.getThemeBySection4();
		List<Theme> themeOfsection5 = ts.getThemeBySection5();
		model.addAttribute("themeOfsection1", themeOfsection1);
		model.addAttribute("themeOfsection2", themeOfsection2);
		model.addAttribute("themeOfsection3", themeOfsection3);
		model.addAttribute("themeOfsection4", themeOfsection4);
		model.addAttribute("themeOfsection5", themeOfsection5);
		return "forum";
		
		
		} 
}
