package com.bbs.entity;

public class Section {

	private Integer sectionId;

    private String sectionNotice;

    private String sectionName;
    
    private Theme theme;

    public Theme getTheme() {
		return theme;
	}

	public void setTheme(Theme theme) {
		this.theme = theme;
	}

	public Integer getSectionId() {
        return sectionId;
    }

    public void setSectionId(Integer sectionId) {
        this.sectionId = sectionId;
    }

    public String getSectionNotice() {
        return sectionNotice;
    }

    public void setSectionNotice(String sectionNotice) {
        this.sectionNotice = sectionNotice == null ? null : sectionNotice.trim();
    }

    public String getSectionName() {
        return sectionName;
    }

    public void setSectionName(String sectionName) {
        this.sectionName = sectionName == null ? null : sectionName.trim();
    }
}