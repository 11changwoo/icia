package com.project.dto;

public class inforDTO {
	// 펜션의 장소
	String place;
	// 펜션의 이름
	String pname;
	// 펜션의 방이름
	String proom;
	// 펜션의 인원수
	String personnel;
	// 펜션의 가격
	int pprice;
	// 펜션의 체크인
	String checkin;
	// 펜션의 체크아웃
	String checkout;
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

	// 사용자의 카드
	String cardnumber1;
	int cardmoney1;
	int cardpass1;
	int banknumber1;
	int bankmoney1;
	int bankpass1;

	public String getCardnumber1() {
		return cardnumber1;
	}

	public void setCardnumber1(String cardnumber1) {
		this.cardnumber1 = cardnumber1;
	}

	public int getCardmoney1() {
		return cardmoney1;
	}

	public void setCardmoney1(int cardmoney1) {
		this.cardmoney1 = cardmoney1;
	}

	public int getCardpass1() {
		return cardpass1;
	}

	public void setCardpass1(int cardpass1) {
		this.cardpass1 = cardpass1;
	}

	public int getBanknumber1() {
		return banknumber1;
	}

	public void setBanknumber1(int banknumber1) {
		this.banknumber1 = banknumber1;
	}

	public int getBankmoney1() {
		return bankmoney1;
	}

	public void setBankmoney1(int bankmoney1) {
		this.bankmoney1 = bankmoney1;
	}

	public int getBankpass1() {
		return bankpass1;
	}

	public void setBankpass1(int bankpass1) {
		this.bankpass1 = bankpass1;
	}

	public int getPprice() {
		return pprice;
	}

	public void setPprice(int pprice) {
		this.pprice = pprice;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public void setCardidnumber(int catdidnumber) {
		this.cardidnumber = catdidnumber;
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

	public inforDTO(String place, String pname, String proom, String personnel, int pprice, String checkin,
			String checkout, String id, String name, String email, int tel, String questions, String card,
			String cardnumber, int cardpass, int cardterm, int cardidnumber, String bank, int banknumber, int bankpass,
			String bankidnumber, String bankmaster, String check) {
		this.place = place;
		this.pname = pname;
		this.proom = proom;
		this.personnel = personnel;
		this.pprice = pprice;
		this.checkin = checkin;
		this.checkout = checkout;
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
	public inforDTO(int cardpass1) {
	this.cardpass1 = cardpass1;
	}

}
