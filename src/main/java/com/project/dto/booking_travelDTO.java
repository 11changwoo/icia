package com.project.dto;

import java.sql.Timestamp;

public class booking_travelDTO {
	/*
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
	
	*/
	
	int num;
	
	String tplace;
	
	String tname;
	
	String tvehicle;
	
	String tpersonnel;
	
	String tprice;
	
	String tstart;
	
	String tend;
	
	int tprice1;
	String tplace1;
	
	String tvehicle1;
	String tname1;
	String personnel1;
	String timg;
	
	public booking_travelDTO(int tprice1, String tplace1, String tvehicle1, String tname1, String personnel1, String timg) {
		this.tprice1 = tprice1;
		this.tplace1 = tplace1;
		this.tvehicle1 = tvehicle1;
		this.tname1 = tname1;
		this.personnel1 = personnel1;
		this.timg = timg;
	}
	
	public String getTvehicle1() {
		return tvehicle1;
	}

	public void setTvehicle1(String tvehicle1) {
		this.tvehicle1 = tvehicle1;
	}

	public String getTname1() {
		return tname1;
	}

	public void setTname1(String tname1) {
		this.tname1 = tname1;
	}

	public String getPersonnel1() {
		return personnel1;
	}

	public void setPersonnel1(String personnel1) {
		this.personnel1 = personnel1;
	}

	public String getTimg() {
		return timg;
	}

	public void setTimg(String timg) {
		this.timg = timg;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getTplace() {
		return tplace;
	}

	public void setTplace(String tplace) {
		this.tplace = tplace;
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public String getTvehicle() {
		return tvehicle;
	}

	public void setTvehicle(String tvehicle) {
		this.tvehicle = tvehicle;
	}

	public String getTpersonnel() {
		return tpersonnel;
	}

	public void setTpersonnel(String tpersonnel) {
		this.tpersonnel = tpersonnel;
	}

	public String getTprice() {
		return tprice;
	}

	public void setTprice(String tprice) {
		this.tprice = tprice;
	}

	public String getTstart() {
		return tstart;
	}

	public void setTstart(String tstart) {
		this.tstart = tstart;
	}

	public String getTend() {
		return tend;
	}

	public void setTend(String tend) {
		this.tend = tend;
	}

	public int getTprice1() {
		return tprice1;
	}

	public void setTprice1(int tprice1) {
		this.tprice1 = tprice1;
	}

	public String getTplace1() {
		return tplace1;
	}

	public void setTplace1(String tplace1) {
		this.tplace1 = tplace1;
	}

	public booking_travelDTO(int num, String tvehicle, String tname, String tpersonnel, String tprice, String tstart, String tend) {
		this.num = num;
		this.tvehicle = tvehicle;
		this.tname = tname;
		this.tpersonnel = tpersonnel;
		this.tprice = tprice;
		this.tstart = tstart;
		this.tend = tend;
	}

	public booking_travelDTO(String tplace, String tname, String tvehicle, String tpersonnel, String tprice, String tstart,
			String tend) {
		this.tplace = tplace;
		this.tname = tname;
		this.tvehicle = tvehicle;
		this.tpersonnel = tpersonnel;
		this.tprice = tprice;
		this.tstart = tstart;
		this.tend = tend;
	}

}
