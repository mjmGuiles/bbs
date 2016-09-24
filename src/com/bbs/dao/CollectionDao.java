package com.bbs.dao;

import com.bbs.entity.Collection;

public interface CollectionDao {
    int deleteByPrimaryKey(Integer colId);

    int insert(Collection record);

    int insertSelective(Collection record);

    Collection selectByPrimaryKey(Integer colId);

    int updateByPrimaryKeySelective(Collection record);

    int updateByPrimaryKey(Collection record);
}