package com.bbs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bbs.dao.ThemeDao;
import com.bbs.entity.Theme;

@Service
public class ThemeServiceimpl implements ThemeService {
	@Autowired
    ThemeDao td;
	@Override
	public Theme selectByPrimaryKey(Integer themeId) {
		// TODO Auto-generated method stub
		return td.selectByPrimaryKey(themeId);
	}
	@Override
	public List<Theme> getListByTheme(Integer themeId) {
		// TODO Auto-generated method stub
		return td.getListByTheme(themeId);
	}
	@Override
	public List<Theme> getThemeBySection1() {
		// TODO Auto-generated method stub
		return td.getThemeBySection1();
	}
	@Override
	public List<Theme> getThemeBySection2() {
		// TODO Auto-generated method stub
		return td.getThemeBySection2();
	}
	@Override
	public List<Theme> getThemeBySection3() {
		// TODO Auto-generated method stub
		return td.getThemeBySection3();
	}
	@Override
	public List<Theme> getThemeBySection4() {
		// TODO Auto-generated method stub
		return td.getThemeBySection4();
	}
	@Override
	public List<Theme> getThemeBySection5() {
		// TODO Auto-generated method stub
		return td.getThemeBySection5();
	}

}
