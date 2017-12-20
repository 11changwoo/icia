package com.project.dto;

public class minforDTO {
	// 펜션의 장소
	String mplace;
	// 펜션의 이름
	String mname;
	// 펜션의 방이름
	String mroom;
	// 펜션의 인원수
	String mpersonnel;
	// 펜션의 가격
	int mprice;
	// 펜션의 체크인
	String mday;
	// 펜션의 체크아웃
	String seat;
	// 사용자 id
	String id;
	// 사용자 이름
	String name;
	// 사용자 이메일
	String email;
	// 사용자 전화번호
	int tel;
	// 사용자 건의사항
	String questions;
	// 결제 체크카드종류
	String card;
	// 결제 체크카드번호
	String cardnumber;
	// 결제 체크카드비밀번호
	int cardpass;
	// 결제 체크카드유효기간
	int cardterm;
	// 결제 체크카드주민번호
	int cardidnumber;
	// 계좌이체 은행종류
	String bank;
	// 계좌이체 계좌번호
	int banknumber;
	// 계좌이체 계좌비밀번호
	int bankpass;
	// 계좌이체 계좌주민번호
	String bankidnumber;
	// 계좌이체
	String bankmaster;
	String check;

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

	public int getMprice() {
		return mprice;
	}

	public void setMprice(int mprice) {
		this.mprice = mprice;
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

	public String getCard() {
		return card;
	}

	public void setCard(String card) {
		this.card = card;
	}

	public String getCardnumber() {
		return cardnumber;
	}

	public void setCardnumber(String cardnumber) {
		this.cardnumber = cardnumber;
	}

	public int getCardpass() {
		return cardpass;
	}

	public void setCardpass(int cardpass) {
		this.cardpass = cardpass;
	}

	public int getCardterm() {
		return cardterm;
	}

	public void setCardterm(int cardterm) {
		this.cardterm = cardterm;
	}

	public int getCardidnumber() {
		return cardidnumber;
	}

	public void setCardidnumber(int cardidnumber) {
		this.cardidnumber = cardidnumber;
	}

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public int getBanknumber() {
		return banknumber;
	}

	public void setBanknumber(int banknumber) {
		this.banknumber = banknumber;
	}

	public int getBankpass() {
		return bankpass;
	}

	public void setBankpass(int bankpass) {
		this.bankpass = bankpass;
	}

	public String getBankidnumber() {
		return bankidnumber;
	}

	public void setBankidnumber(String bankidnumber) {
		this.bankidnumber = bankidnumber;
	}

	public String getBankmaster() {
		return bankmaster;
	}

	public void setBankmaster(String bankmaster) {
		this.bankmaster = bankmaster;
	}

	public String getCheck() {
		return check;
	}

	public void setCheck(String check) {
		this.check = check;
	}

	public minforDTO(String mplace, String mname, String mroom, String mpersonnel, int mprice, String mday, String seat,
			String id, String name, String email, int tel, String questions, String card, String cardnumber,
			int cardpass, int cardterm, int cardidnumber, String bank, int banknumber, int bankpass,
			String bankidnumber, String bankmaster, String check) {
		this.mplace = mplace;
		this.mname = mname;
		this.mroom = mroom;
		this.mpersonnel = mpersonnel;
		this.mprice = mprice;
		this.mday = mday;
		this.seat = seat;
		this.id = id;
		this.name = name;
		this.email = email;
		this.tel = tel;
		this.questions = questions;
		this.card = card;
		this.cardnumber = cardnumber;
		this.cardpass = cardpass;
		this.cardterm = cardterm;
		this.cardidnumber = cardidnumber;
		this.bank = bank;
		this.banknumber = banknumber;
		this.bankpass = bankpass;
		this.bankidnumber = bankidnumber;
		this.bankmaster = bankmaster;
		this.check = check;
	}
}
