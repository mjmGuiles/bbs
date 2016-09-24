package com.bbs.entity;

import java.util.Date;

public class Collection {
    private Integer colId;

	private Integer colUser;

	private Integer postId;

	private Integer reportUser;

	private Date colTime;

	public Integer getColId() {
		return colId;
	}

	public void setColId(Integer colId) {
		this.colId = colId;
	}

	public Integer getColUser() {
		return colUser;
	}

	public void setColUser(Integer colUser) {
		this.colUser = colUser;
	}

	public Integer getPostId() {
		return postId;
	}

	public void setPostId(Integer postId) {
		this.postId = postId;
	}

	public Integer getReportUser() {
		return reportUser;
	}

	public void setReportUser(Integer reportUser) {
		this.reportUser = reportUser;
	}

	public Date getColTime() {
		return colTime;
	}

	public void setColTime(Date colTime) {
		this.colTime = colTime;
	}

}