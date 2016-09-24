package com.bbs.dao;

import com.bbs.entity.Section;

public interface SectionDao {
    int deleteByPrimaryKey(Integer sectionId);

    int insert(Section record);

    int insertSelective(Section record);

    Section selectByPrimaryKey(Integer sectionId);

    int updateByPrimaryKeySelective(Section record);

    int updateByPrimaryKey(Section record);
    
    Section getSection1();
    
    Section getSection2();
    
    Section getSection3();
    
    Section getSection4();
    
    Section getSection5();
}