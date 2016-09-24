package com.bbs.dao;

import com.bbs.entity.Reply;

public interface ReplyDao {
    int deleteByPrimaryKey(Integer reId);

    int insert(Reply record);

    int insertSelective(Reply record);

    Reply selectByPrimaryKey(Integer reId);

    int updateByPrimaryKeySelective(Reply record);

    int updateByPrimaryKeyWithBLOBs(Reply record);

    int updateByPrimaryKey(Reply record);
}