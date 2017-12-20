package com.project.dto;

public class test_DTO {
	// 업체가 등록한 펜션 장소
	String place1;
	// 업체가 등록한 펜션 이름
	String pname1;
	// 업체가 등록한 펜션 방이름
	String proom1;
	// 업체가 등록한 펜션 인원수
	String personnel1;
	// 업체가 등록한 펜션 가격
	int pprice1;
	
	String ponday;

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

	public String getProom1() {
		return proom1;
	}

	public void setProom1(String proom1) {
		this.proom1 = proom1;
	}

	public String getPersonnel1() {
		return personnel1;
	}

	public void setPersonnel1(String personnel1) {
		this.personnel1 = personnel1;
	}

	public int getPprice1() {
		return pprice1;
	}

	public void setPprice1(int pprice1) {
		this.pprice1 = pprice1;
	}

	public String getPonday() {
		return ponday;
	}

	public void setPonday(String ponday) {
		this.ponday = ponday;
	}

	public test_DTO(String place1, String pname1, String proom1, String personnel1, int pprice1, String ponday) {
		super();
		this.place1 = place1;
		this.pname1 = pname1;
		this.proom1 = proom1;
		this.personnel1 = personnel1;
		this.pprice1 = pprice1;
		this.ponday = ponday;
	}

	public test_DTO(String place1, String pname1, String proom1, String personnel1, int pprice1) {
		super();
		this.place1 = place1;
		this.pname1 = pname1;
		this.proom1 = proom1;
		this.personnel1 = personnel1;
		this.pprice1 = pprice1;
	}
	
	public test_DTO(String ponday) {
		this.ponday = ponday;
	}

	
	
	
	

	
}
