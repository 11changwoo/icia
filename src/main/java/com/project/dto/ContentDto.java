package com.project.dto;

public class ContentDto {
	
	int num; //������ ������ ����
	String pplace; //p = pension ���
	String pname; //�̸�
	String proom; //���̸�
	
	String pprice; // �� String ���� ���� db ���� varchar2
	String ppersonnel_min;// �ּ�(�⺻) �ο�
	String ppersonnel_max;// �ִ� �ο�
	String pstart; // ���� ���� ������ -  ������ ������ ����
	String pend;// ���� ���� ����
	String pm;
	String pimg;
	String now;// ���� ��Ʈ
	String ponday;// ���� ��Ʈ

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
	public String getPonday() {
		return ponday;
	}

	public void setPonday(String ponday) {
		this.ponday = ponday;
	}

	public ContentDto() {
	}

	public ContentDto(int num,String pplace, String pname, String proom, String pprice, String ppersonnel_min,
			String ppersonnel_max, String pstart, String pend, String ponday, String pm, String pimg, String now) {
		this.num = num;
		this.pplace = pplace;
		this.pname = pname;
		this.proom = proom;
		this.pprice = pprice;
		this.ppersonnel_min = ppersonnel_min;
		this.ppersonnel_max = ppersonnel_max;
		this.pstart = pstart;
		this.pend = pend;
		this.ponday = ponday;
		this.pm = pm;
		this.pimg = pimg;
		this.now = now;

	}

	public String getPplace() {
		return pplace;
	}

	public void setPplace(String pplace) {
		this.pplace = pplace;
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

	public String getPprice() {
		return pprice;
	}

	public void setPprice(String pprice) {
		this.pprice = pprice;
	}

	public String getPpersonnel_min() {
		return ppersonnel_min;
	}

	public void setPpersonnel_min(String ppersonnel_min) {
		this.ppersonnel_min = ppersonnel_min;
	}

	public String getPpersonnel_max() {
		return ppersonnel_max;
	}

	public void setPpersonnel_max(String ppersonnel_max) {
		this.ppersonnel_max = ppersonnel_max;
	}

	public String getPstart() {
		return pstart;
	}

	public void setPstart(String pstart) {
		this.pstart = pstart;
	}

	public String getPend() {
		return pend;
	}

	public void setPend(String pend) {
		this.pend = pend;
	}

	public String getPm() {
		return pm;
	}

	public void setPm(String pm) {
		this.pm = pm;
	}

	public String getPimg() {
		return pimg;
	}

	public void setPimg(String pimg) {
		this.pimg = pimg;
	}

	public String getNow() {
		return now;
	}

	public void setNow(String now) {
		this.now = now;
	}

	/*---------------------------------------------------------*/

	String tname ;
	String tplace ;
	String tvehicle ;
	String tprice ;
	String tpersonnel_min ;
	String tpersonnel_max ;
	String tstart ;

	String tend ;
	String tm ;
	String timg ;
	
	
	public ContentDto(int num,String tname, String tplace, String tvehicle, String tprice, String tpersonnel_min,
			String tpersonnel_max, String tstart, String tend, String tm, String timg, String now) {
		this.num = num;
		this.tplace = tplace;
		this.tname = tname;
		this.tprice = tprice;
		this.tpersonnel_min = tpersonnel_min;
		this.tpersonnel_max = tpersonnel_max;
		this.tstart = tstart;
		this.tend = tend;
		this.tm = tm;
		this.timg = timg;
		this.now = now;

	}
	
	
	
	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public String getTplace() {
		return tplace;
	}

	public void setTplace(String tplace) {
		this.tplace = tplace;
	}

	public String getTvehicle() {
		return tvehicle;
	}

	public void setTvehicle(String tvehicle) {
		this.tvehicle = tvehicle;
	}

	public String getTprice() {
		return tprice;
	}

	public void setTprice(String tprice) {
		this.tprice = tprice;
	}

	public String getTpersonnel_min() {
		return tpersonnel_min;
	}

	public void setTpersonnel_min(String tpersonnel_min) {
		this.tpersonnel_min = tpersonnel_min;
	}

	public String getTpersonnel_max() {
		return tpersonnel_max;
	}

	public void setTpersonnel_max(String tpersonnel_max) {
		this.tpersonnel_max = tpersonnel_max;
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

	public String getTm() {
		return tm;
	}

	public void setTm(String tm) {
		this.tm = tm;
	}

	public String getTimg() {
		return timg;
	}

	public void setTimg(String timg) {
		this.timg = timg;
	}

	/*---------------------------------------------------------*/


	String mplace ;
	String mname;
	String theater;
	String mpersonnel;
	String mstart;
	String mend;
	String monday;
	String mm;
	String mimg;

	public ContentDto(int num,String mplace, String mname, String theater, String mpersonnel,
			String mstart, String mend,String monday,String mm, String mimg, String now) {
		this.num = num;
		this.mplace = mplace;
		this.mname = mname;
		this.mpersonnel = mpersonnel;
		this.mstart = mstart;
		this.mend = mend;
		this.monday = monday;
		this.mm = mm;
		this.mimg = mimg;
		this.now = now;

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

	public String getTheater() {
		return theater;
	}

	public void setTheater(String theater) {
		this.theater = theater;
	}

	public String getMpersonnel() {
		return mpersonnel;
	}

	public void setMpersonnel(String mpersonnel) {
		this.mpersonnel = mpersonnel;
	}

	public String getMstart() {
		return mstart;
	}

	public void setMstart(String mstart) {
		this.mstart = mstart;
	}

	public String getMend() {
		return mend;
	}

	public void setMend(String mend) {
		this.mend = mend;
	}

	public String getMonday() {
		return monday;
	}

	public void setMonday(String monday) {
		this.monday = monday;
	}

	public String getMm() {
		return mm;
	}

	public void setMm(String mm) {
		this.mm = mm;
	}

	public String getMimg() {
		return mimg;
	}

	public void setMimg(String mimg) {
		this.mimg = mimg;
	}
	

}
