package com.project.dto;

import java.sql.Timestamp;

public class bookingDTO {
	//DB¿« sequence∏¶ ¿ÃøÎ«— num
	int num;
	//∆Êº«¿« ¿Âº“
	String place;
	//∆Êº«¿« ∆Êº«¿Ã∏ß
	String pname;
	//∆Êº«¿« πÊ¿Ã∏ß
	String proom;
	//∆Êº«¿« ¿Œø¯
	String personnel;
	//∆Êº«¿« ∞°∞›
	String pprice;
	//∆Êº«¿« √º≈©¿Œ
	String checkin;
	//∆Êº«¿« √º≈©æ∆øÙ
	String checkout;

	int pprice1;
	String proom1;
	
	String place1;
	String pname1;
	String personnel1;
	String checkin1;
	String checkout1;
	String pimg;

	public int getPprice1() {
		return pprice1;
	}

	public void setPprice1(int pprice1) {
		this.pprice1 = pprice1;
	}

	public String getProom1() {
		return proom1;
	}

	public void setProom1(String proom1) {
		this.proom1 = proom1;
	}

	public bookingDTO(int pprice1, String proom1) {
		this.pprice1 = pprice1;
		this.proom1 = proom1;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
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

	public String getPprice() {
		return pprice;
	}

	public void setPprice(String pprice) {
		this.pprice = pprice;
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
	
	public String getPlace1() {
		return place1;
	}

	public void setPlace1(String place1) {
		this.place1 = place1;
	}

	public String getPname1() {
		return pname1;
	}

	public void setPname1(String pname1) {
		this.pname1 = pname1;
	}

	public String getPersonnel1() {
		return personnel1;
	}

	public void setPersonnel1(String personnel1) {
		this.personnel1 = personnel1;
	}

	public String getCheckin1() {
		return checkin1;
	}

	public void setCheckin1(String checkin1) {
		this.checkin1 = checkin1;
	}

	public String getCheckout1() {
		return checkout1;
	}

	public void setCheckout1(String checkout1) {
		this.checkout1 = checkout1;
	}

	public String getPimg() {
		return pimg;
	}

	public void setPimg(String pimg) {
		this.pimg = pimg;
	}

	public bookingDTO() {}

	public bookingDTO(int num, String place, String pname, String personnel, String pprice, String checkin, String checkout) {
		this.num = num;
		this.place = place;
		this.pname = pname;
		this.personnel = personnel;
		this.pprice = pprice;
		this.checkin = checkin;
		this.checkout = checkout;
	}

	public bookingDTO(String place, String pname, String proom, String personnel, String pprice, String checkin,
			String checkout) {
		this.place = place;
		this.pname = pname;
		this.proom = proom;
		this.personnel = personnel;
		this.pprice = pprice;
		this.checkin = checkin;
		this.checkout = checkout;
	}
	
	public bookingDTO(int pprice1, String proom1, String place1, String pname1, String personnel1, String pimg) {
		this.pprice1 = pprice1;
		this.proom1 = proom1;
		this.place1 = place1;
		this.pname1 = pname1;
		this.personnel1 = personnel1;
		this.pimg = pimg;
	}

}
