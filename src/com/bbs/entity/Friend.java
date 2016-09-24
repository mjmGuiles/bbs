package com.bbs.entity;

public class Friend {
    private Integer friendId;

	private Integer userId;

	private Integer friId;

	private String friRemark;

	public Integer getFriendId() {
		return friendId;
	}

	public void setFriendId(Integer friendId) {
		this.friendId = friendId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getFriId() {
		return friId;
	}

	public void setFriId(Integer friId) {
		this.friId = friId;
	}

	public String getFriRemark() {
		return friRemark;
	}

	public void setFriRemark(String friRemark) {
		this.friRemark = friRemark == null ? null : friRemark.trim();
	}

	
}