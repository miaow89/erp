package org.kor.mv.modules.empManage.vo;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class EmpManageVO{
	
	private String id;

    private String name;

    private String residRegistrNum;

    private String mobileNum;

    private String emailAddress;

    private String certification;

    private String specialNote;

    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+9")
    private Date hiredate;

    private String depart;

    private String position;

    private String level;

    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+9")
    private Date resignationDate;
    
    private String officeStatus;
    
	private String password;

	private String homeAddress;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getResidRegistrNum() {
		return residRegistrNum;
	}

	public void setResidRegistrNum(String residRegistrNum) {
		this.residRegistrNum = residRegistrNum;
	}

	public String getMobileNum() {
		return mobileNum;
	}

	public void setMobileNum(String mobileNum) {
		this.mobileNum = mobileNum;
	}

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public String getCertification() {
		return certification;
	}

	public void setCertification(String certification) {
		this.certification = certification;
	}

	public String getSpecialNote() {
		return specialNote;
	}

	public void setSpecialNote(String specialNote) {
		this.specialNote = specialNote;
	}

	public Date getHiredate() {
		return hiredate;
	}

	public void setHiredate(Date hiredate) {
		this.hiredate = hiredate;
	}

	public String getDepart() {
		return depart;
	}

	public void setDepart(String depart) {
		this.depart = depart;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public Date getResignationDate() {
		return resignationDate;
	}

	public void setResignationDate(Date resignationDate) {
		this.resignationDate = resignationDate;
	}

	public String getOfficeStatus() {
		return officeStatus;
	}

	public void setOfficeStatus(String officeStatus) {
		this.officeStatus = officeStatus;
	}
	
	public String getHomeAddress() {
		return homeAddress;
	}

	public void setHomeAddress(String homeAddress) {
		this.homeAddress = homeAddress;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
