package com.project.dto;

public class test_travelDTO {
	
	String tplace;
	// ��ü�� ����� ���� ��Ű���̸�
	String tname;
	// ��ü�� ����� ���� �̵�����
	String tvehicle;
	// ��ü�� ����� ���� ����
	int tprice;
	// ��ü�� ����� ���� �ο���
	String tpersonnel;
	// ��ü�� ����� ���� �����
	String tstart;
	// ��ü�� ����� ���� ������
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
