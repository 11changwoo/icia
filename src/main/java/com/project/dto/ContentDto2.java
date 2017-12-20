package com.project.dto;

import java.sql.Timestamp;

public class ContentDto2 {
	

	String gender;
	String address;
	String intro;
	Timestamp reg;
	String business;
	String type;
	

	String name;
	String place;
	String proom;
	String personnel;
	String checkin;
	String checkout;
	String pname;
	String email;
	int tel;
	String questions;
	String pprice;
	String seat;
	String cname;

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getSeat() {
		return seat;
	}

	public void setSeat(String seat) {
		this.seat = seat;
	}

	public ContentDto2() {
	}

	public ContentDto2(String name, String pprice,String place, String korname, String engname, String vehicle,  String proom, String personnel, String checkin, String checkout,
			String pname, String email, int tel, String questions, String seat,String cname) {
		this.name = name;
		this.place = place;
		this.proom = proom;
		this.pprice = pprice;
		this.personnel = personnel;
		this.checkin = checkin;
		this.checkout = checkout;
		this.pname = pname;
		this.email = email;
		this.tel = tel;
		this.questions = questions;
		this.name = name;
		this.korname = korname;
		this.engname = engname;
		this.vehicle = vehicle;
		this.personnel = personnel;
		this.place = place;
		this.pname = pname;
		this.checkin = checkin;
		this.checkout = checkout;
		this.seat =seat;
		this.cname =cname;
	}

	
	// --------------------------------------------------------------

	String korname;
	String engname;
	String vehicle;	


	public ContentDto2(String name, String vehicle, String personnel, String place,
			String pname, String checkin, String checkout) {
		this.name = name;
		this.vehicle = vehicle;
		this.personnel = personnel;
		this.place = place;
		this.pname = pname;
		this.checkin = checkin;
		this.checkout = checkout;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getProom() {
		return proom;
	}

	public void setProom(String proom) {
		this.proom = proom;
	}

	public String getPersonnel() {
		return personnel;
	}

	public void setPersonnel(String personnel) {
		this.personnel = personnel;
	}

	public String getCheckin() {
		return checkin;
	}

	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}

	public String getCheckout() {
		return checkout;
	}

	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getTel() {
		return tel;
	}

	public void setTel(int tel) {
		this.tel = tel;
	}

	public String getQuestions() {
		return questions;
	}

	public void setQuestions(String questions) {
		this.questions = questions;
	}

	public String getKorname() {
		return korname;
	}

	public void setKorname(String korname) {
		this.korname = korname;
	}

	public String getEngname() {
		return engname;
	}

	public void setEngname(String engname) {
		this.engname = engname;
	}

	public String getVehicle() {
		return vehicle;
	}

	public void setVehicle(String vehicle) {
		this.vehicle = vehicle;
	}
	public String getPprice() {
		return pprice;
	}

	public void setPprice(String pprice) {
		this.pprice = pprice;
	}

	//--------------------------------------------------
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

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public Timestamp getReg() {
		return reg;
	}

	public void setReg(Timestamp reg) {
		this.reg = reg;
	}

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
	public ContentDto2(String name, String gender, String address, String email, int tel, String intro,
			Timestamp reg, String business, String type) {
		this.name = name;
		this.gender = gender;
		this.address = address;
		this.email = email;
		this.tel = tel;
		this.intro = intro;
		this.reg = reg;
		this.business = business;
		this.type = type;
	}

	
}
