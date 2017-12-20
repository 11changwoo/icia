package com.project.dto;

public class mbookingDTO {
	int mnum;
	String mplace;
	String mname;
	String mroom;
	String mpersonnel;
	String mprice;
	String mday;
	String seat;

	int mprice1;
	String mroom1;

	String a;
	String b;
	String c;
	String d;

	String mplace1;
	String mname1;
	String mpersonnel1;
	String mimg;
	String monday;

	public String getMplace1() {
		return mplace1;
	}

	public void setMplace1(String mplace1) {
		this.mplace1 = mplace1;
	}

	public String getMname1() {
		return mname1;
	}

	public void setMname1(String mname1) {
		this.mname1 = mname1;
	}

	public String getMpersonnel1() {
		return mpersonnel1;
	}

	public void setMpersonnel1(String mpersonnel1) {
		this.mpersonnel1 = mpersonnel1;
	}

	public String getMimg() {
		return mimg;
	}

	public void setMimg(String mimg) {
		this.mimg = mimg;
	}

	public String getMonday() {
		return monday;
	}

	public void setMonday(String monday) {
		this.monday = monday;
	}

	public String getMprice() {
		return mprice;
	}

	public void setMprice(String mprice) {
		this.mprice = mprice;
	}

	public int getMprice1() {
		return mprice1;
	}

	public void setMprice1(int mprice1) {
		this.mprice1 = mprice1;
	}

	public String getMroom1() {
		return mroom1;
	}

	public void setMroom1(String mroom1) {
		this.mroom1 = mroom1;
	}

	public int getMnum() {
		return mnum;
	}

	public void setMnum(int mnum) {
		this.mnum = mnum;
	}

	public String getMplace() {
		return mplace;
	}

	public void setMplace(String mplace) {
		this.mplace = mplace;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMroom() {
		return mroom;
	}

	public void setMroom(String mroom) {
		this.mroom = mroom;
	}

	public String getMpersonnel() {
		return mpersonnel;
	}

	public void setMpersonnel(String mpersonnel) {
		this.mpersonnel = mpersonnel;
	}

	public String getMday() {
		return mday;
	}

	public void setMday(String mday) {
		this.mday = mday;
	}

	public String getSeat() {
		return seat;
	}

	public void setSeat(String seat) {
		this.seat = seat;
	}

	public String getA() {
		return a;
	}

	public void setA(String a) {
		this.a = a;
	}

	public String getB() {
		return b;
	}

	public void setB(String b) {
		this.b = b;
	}

	public String getC() {
		return c;
	}

	public void setC(String c) {
		this.c = c;
	}

	public String getD() {
		return d;
	}

	public void setD(String d) {
		this.d = d;
	}

	public mbookingDTO(int mnum, String mplace, String mname, String mpersonnel, String mprice, String mday) {
		this.mnum = mnum;
		this.mplace = mplace;
		this.mname = mname;
		this.mpersonnel = mpersonnel;
		this.mprice = mprice;
		this.mday = mday;
	}

	public mbookingDTO(int mprice1, String mroom1) {
		this.mprice1 = mprice1;
		this.mroom1 = mroom1;
	}

	public mbookingDTO(int mprice1, String mroom1, String mplace1, String mname1, String mpersonnel1, String mimg,
			String monday) {
		this.mprice1 = mprice1;
		this.mroom1 = mroom1;
		this.mplace1 = mplace1;
		this.mname1 = mname1;
		this.mpersonnel1 = mpersonnel1;
		this.mimg = mimg;
		this.monday = monday;
	}

	public mbookingDTO(String mplace, String mname, String mroom, String mpersonnel, String mprice, String mday) {
		this.mplace = mplace;
		this.mname = mname;
		this.mroom = mroom;
		this.mpersonnel = mpersonnel;
		this.mprice = mprice;
		this.mday = mday;
	}

	public mbookingDTO(String mplace, String mname, String mroom, String mpersonnel, String mprice, String mday,
			String seat) {
		this.mplace = mplace;
		this.mname = mname;
		this.mroom = mroom;
		this.mpersonnel = mpersonnel;
		this.mprice = mprice;
		this.mday = mday;
		this.seat = seat;
	}

	public mbookingDTO(String a, String b, String c, String d) {
		this.a = a;
		this.b = b;
		this.c = c;
		this.d = d;
	}

}
