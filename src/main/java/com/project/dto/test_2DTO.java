package com.project.dto;

public class test_2DTO {
	// 업체가 등록한 영화 장소
		String mplace1;
		// 업체가 등록한 영화 이름
		String mname1;
		// 업체가 등록한 영화관 이름
		String mroom1;
		// 업체가 등록한 영화 인원수
		String mpersonnel1;
		// 업체가 등록한 영화 가격
		int mprice1;
		// 업체가 등록한 영화 날짜
		String mday1;
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
		public String getMroom1() {
			return mroom1;
		}
		public void setMroom1(String mroom1) {
			this.mroom1 = mroom1;
		}
		public String getMpersonnel1() {
			return mpersonnel1;
		}
		public void setMpersonnel1(String mpersonnel1) {
			this.mpersonnel1 = mpersonnel1;
		}
		public int getMprice1() {
			return mprice1;
		}
		public void setMprice1(int mprice1) {
			this.mprice1 = mprice1;
		}
		public String getMday1() {
			return mday1;
		}
		public void setMday1(String mday1) {
			this.mday1 = mday1;
		}
		public test_2DTO(String mplace1, String mname1, String mroom1, String mpersonnel1, int mprice1, String mday1) {
			super();
			this.mplace1 = mplace1;
			this.mname1 = mname1;
			this.mroom1 = mroom1;
			this.mpersonnel1 = mpersonnel1;
			this.mprice1 = mprice1;
			this.mday1 = mday1;
		}
		public test_2DTO(String mplace1, String mname1, String mroom1, String mpersonnel1, int mprice1) {
			super();
			this.mplace1 = mplace1;
			this.mname1 = mname1;
			this.mroom1 = mroom1;
			this.mpersonnel1 = mpersonnel1;
			this.mprice1 = mprice1;
		}
		
		public test_2DTO(String mday1) {
			this.mday1 = mday1;
		}
		
		
		
		
}
