package com.project.dto;

public class tinforDTO {
	// ����� ���
		String tplace;
		// ����� �̸�
		String tname;
		// ����� ���̸�
		String tvehicle;
		// ����� �ο���
		String tpersonnel;
		// ����� ����
		int tprice;
		// ����� üũ��
		String tstart;
		// ����� üũ�ƿ�
		String tend;
		// ����� id
		String id;
		// ����� �̸�
		String name;
		// ����� �̸���
		String email;
		// ����� ��ȭ��ȣ
		int tel;
		// ����� ���ǻ���
		String questions;
		// ���� üũī������
		String card;
		// ���� üũī���ȣ
		String cardnumber;
		// ���� üũī���й�ȣ
		int cardpass;
		// ���� üũī����ȿ�Ⱓ
		int cardterm;
		// ���� üũī���ֹι�ȣ
		int cardidnumber;
		// ������ü ��������
		String bank;
		// ������ü ���¹�ȣ
		int banknumber;
		// ������ü ���º�й�ȣ
		int bankpass;
		// ������ü �����ֹι�ȣ
		String bankidnumber;
		// ������ü
		String bankmaster;
		String check;

		// ������� ī��
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

		public int getTprice() {
			return tprice;
		}

		public void setTprice(int tprice) {
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

		public tinforDTO(String tplace, String tname, String tvehicle, String tpersonnel, int tprice, String tstart,
				String tend, String id, String name, String email, int tel, String questions, String card,
				String cardnumber, int cardpass, int cardterm, int cardidnumber, String bank, int banknumber, int bankpass,
				String bankidnumber, String bankmaster, String check) {
			this.tplace = tplace;
			this.tname = tname;
			this.tvehicle = tvehicle;
			this.tpersonnel = tpersonnel;
			this.tprice = tprice;
			this.tstart = tstart;
			this.tend = tend;
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
		public tinforDTO(int cardpass1) {
		this.cardpass1 = cardpass1;
		}

	}