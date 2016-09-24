package com.bbs.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bbs.entity.Section;
import com.bbs.service.SectionService;

@Controller
public class SectioController {
	@Autowired
	SectionService ss;
	
    //°æ¿é
	@RequestMapping("getSection")
	public String getSection(HttpSession model){
		Section section1 =  ss.getSection1();
		Section section2 =  ss.getSection2();
		Section section3 =  ss.getSection3();
		Section section4 =  ss.getSection4();
		Section section5 =  ss.getSection5();
		model.setAttribute("section1", section1);
		model.setAttribute("section2", section2);
		model.setAttribute("section3", section3);
		model.setAttribute("section4", section4);
		model.setAttribute("section5", section5);
		return "redirect:getTheme";		
	}
}
