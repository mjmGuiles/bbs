package com.bbs.dao;

import java.util.List;

import com.bbs.entity.Theme;

public interface ThemeDao {
    int deleteByPrimaryKey(Integer themeId);

    int insert(Theme record);

    int insertSelective(Theme record);

    Theme selectByPrimaryKey(Integer themeId);

    int updateByPrimaryKeySelective(Theme record);

    int updateByPrimaryKey(Theme record);
    
    List<Theme> getListByTheme(Integer themeId);
    
    List<Theme> getThemeBySection1();
    
    List<Theme> getThemeBySection2();
    
    List<Theme> getThemeBySection3();
    
    List<Theme> getThemeBySection4();
    
    List<Theme> getThemeBySection5();
    
}