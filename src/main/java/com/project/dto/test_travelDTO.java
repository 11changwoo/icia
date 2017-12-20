package com.project.dto;

public class test_travelDTO {
	
	String tplace;
	// 업체가 등록한 여행 패키지이름
	String tname;
	// 업체가 등록한 여행 이동수단
	String tvehicle;
	// 업체가 등록한 여행 가격
	int tprice;
	// 업체가 등록한 여행 인원수
	String tpersonnel;
	// 업체가 등록한 여행 출발일
	String tstart;
	// 업체가 등록한 여행 종료일
	String tend;

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

	public int getTprice() {
		return tprice;
	}

	public void setTprice(int tprice) {
		this.tprice = tprice;
	}

	public String getTpersonnel() {
		return tpersonnel;
	}

	public void setTpersonnel(String tpersonnel) {
		this.tpersonnel = tpersonnel;
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

	public test_travelDTO(String tplace, String tname, String tvehicle, int tprice, String tpersonnel, String tstart,
			String tend) {
		this.tplace = tplace;
		this.tname = tname;
		this.tvehicle = tvehicle;
		this.tprice = tprice;
		this.tpersonnel = tpersonnel;
		this.tstart = tstart;
		this.tend = tend;
	}

	public test_travelDTO(String tplace, String tname, String tvehicle, int tprice, String tpersonnel) {
		super();
		this.tplace = tplace;
		this.tname = tname;
		this.tvehicle = tvehicle;
		this.tprice = tprice;
		this.tpersonnel = tpersonnel;
	}

	public test_travelDTO(String tstart, String tend) {
		super();
		this.tstart = tstart;
		this.tend = tend;
	}
	
	

}
