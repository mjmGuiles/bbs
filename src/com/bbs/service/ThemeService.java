package com.bbs.service;

import java.util.List;

import com.bbs.entity.Theme;

public interface ThemeService {
	
	Theme selectByPrimaryKey(Integer themeId);
 
	List<Theme> getListByTheme(Integer themeId);
	
    List<Theme> getThemeBySection1();
    
    List<Theme> getThemeBySection2();
    
    List<Theme> getThemeBySection3();
    
    List<Theme> getThemeBySection4();
    
    List<Theme> getThemeBySection5();
}
