package com.project.dto;

import java.sql.Timestamp;

public class MemberVO {
	private String id;
	private String pw;
	private String name;
	private String gender;
	private String address;
	private String address_f;
	private String address_b;
	private String email;
	private String email_id;
	private String email_addr;
	private String tel;
	private String intro;
	private Timestamp reg;
	private String business;
	private String type;

	public String getBusiness() {
		return business;
	}

	public void setBusiness(String business) {
		this.business = business;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public Timestamp getReg() {
		return reg;
	}

	public void setReg(Timestamp timestamp) {
		this.reg = timestamp;
	}

	@Override
	public String toString() {
		return "MemberVO [name=" + name + ", id=" + id + ", pw=" + pw + ", tel="+ tel + "]";
	}

	public String getAddress_f() {
		return address_f;
	}

	public void setAddress_f(String address_f) {
		this.address_f = address_f;
	}

	public String getAddress_b() {
		return address_b;
	}

	public void setAddress_b(String address_b) {
		this.address_b = address_b;
	}

	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	public String getEmail_addr() {
		return email_addr;
	}

	public void setEmail_addr(String email_addr) {
		this.email_addr = email_addr;
	}

}
