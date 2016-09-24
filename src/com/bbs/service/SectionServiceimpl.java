package com.bbs.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bbs.dao.SectionDao;
import com.bbs.entity.Section;
import com.bbs.service.SectionService;

@Service
public class SectionServiceimpl implements SectionService {
    @Autowired
    SectionDao sd;
	@Override
	public Section getSection1() {
		// TODO Auto-generated method stub
		return sd.getSection1();
	}
	@Override
	public Section getSection2() {
		// TODO Auto-generated method stub
		return sd.getSection2();
	}
	@Override
	public Section getSection3() {
		// TODO Auto-generated method stub
		return sd.getSection3();
	}
	@Override
	public Section getSection4() {
		// TODO Auto-generated method stub
		return sd.getSection4();
	}
	@Override
	public Section getSection5() {
		// TODO Auto-generated method stub
		return sd.getSection5();
	}

}
