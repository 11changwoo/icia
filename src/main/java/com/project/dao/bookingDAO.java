package com.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import com.project.dto.bookingDTO;
import com.project.dto.inforDTO;
import com.project.util.Constant;

public class bookingDAO {
	JdbcTemplate template;

	public bookingDAO() {
		template = Constant.template;
	}

	// 업체가 등록한 예약정보를 사용자가 클릭하여 1차 DB(booking)에 삽입
	public void write(final String place, final String pname, final String proom, final String personnel, String pprice,
			final String checkin, final String checkout) {
		try {
			// 업체가 등록한 DB(test_t)에서 가격을 가져와 대입 query
			String query1 = "select pprice from pension where proom = '" + proom + "'";

			SqlRowSet srs = template.queryForRowSet(query1);
			if (srs.next()) {
				String pprice_t = srs.getString("pprice");
				pprice = pprice_t;
			}
			// 1차 DB에 삽입 query
			String query2 = "insert into booking(num, place, pname, proom, personnel, pprice, checkin, checkout) values(booking_seq.nextval,?,?,?,?,?,?,?)";
			final String pprice2 = pprice;

			template.update(query2, new PreparedStatementSetter() {

				@Override
				public void setValues(PreparedStatement ps) throws SQLException {
					// TODO Auto-generated method stub
					ps.setString(1, place);
					ps.setString(2, pname);
					ps.setString(3, proom);
					ps.setString(4, personnel);
					ps.setString(5, pprice2);
					ps.setString(6, checkin);
					ps.setString(7, checkout);
				}
			});

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 결제정보창에서 사용자가 등록한 값을 출력해주는것
	public bookingDTO write_2() {
		bookingDTO dto = null;

		try {
			String query = "select place, pname, proom, personnel, pprice, checkin, checkout from booking";

			SqlRowSet srs = template.queryForRowSet(query);

			int i = 0;
			while (srs.next()) {
				i++;
			}

			// 결제정보페이지에 출력하기위 정보를 가져오는 query
			query = "select place, pname, proom, personnel, pprice,checkin,checkout from booking where num = '" + i
					+ "'";

			SqlRowSet srs2 = template.queryForRowSet(query);

			while (srs2.next()) {
				String place = srs2.getString("place");
				String pname = srs2.getString("pname");
				String proom = srs2.getString("proom");
				String personnel = srs2.getString("personnel");
				String pprice = srs2.getString("pprice");
				String checkin = srs2.getString("checkin");
				String checkout = srs2.getString("checkout");
				dto = new bookingDTO(place, pname, proom, personnel, pprice, checkin, checkout);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

	// 결제정보창에서 사용자가 선택한 예약정보와 결제정보를 최종 DB(infor)에 삽입
	public void write_3(final String place, final String pname, final String proom, final String personnel,
			final String pprice, final String checkin, final String checkout, final String id, final String name,
			final String email, final String tel, final String questions, final String card, final String cardnumber,
			final String cardpass, final String cardterm, final String cardidnumber, final String bank,
			final String banknumber, final String bankpass, final String bankidnumber, final String bankmaster,
			final String check) throws Exception {

		String va = check;
		int cardmoney1 = 0;
		int bankmoney1 = 0;

		// 사용자가 결제를 신용카드를 선택하였을때
		if (va.equals("sin")) {
			String query = "insert into infor(place, pname, proom, personnel, pprice, checkin, checkout, id, name, email, tel, questions, card, cardnumber, cardpass, cardterm, cardidnumber) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			template.update(query, new PreparedStatementSetter() {

				@Override
				public void setValues(PreparedStatement ps) throws SQLException {
					// TODO Auto-generated method stub
					ps.setString(1, place);
					ps.setString(2, pname);
					ps.setString(3, proom);
					ps.setString(4, personnel);
					ps.setInt(5, Integer.parseInt(pprice));
					ps.setString(6, checkin);
					ps.setString(7, checkout);
					ps.setString(8, id);
					ps.setString(9, name);
					ps.setString(10, email);
					ps.setString(11, tel);
					ps.setString(12, questions);
					ps.setString(13, card);
					ps.setString(14, cardnumber);
					ps.setString(15, cardpass);
					ps.setString(16, cardterm);
					ps.setString(17, cardidnumber);
				}
			});

			String query1 = "select * from payment where cardnumber = '" + cardnumber + "' and cardpass = '" + cardpass
					+ "'";
			SqlRowSet srs = template.queryForRowSet(query1);
			if (srs.next()) {
				cardmoney1 = srs.getInt("cardmoney");
				cardmoney1 = cardmoney1 - Integer.parseInt(pprice);
				final int cardmoney = cardmoney1;
				String query2 = "update payment set cardmoney = ? where cardnumber = ? and cardpass = ?";

				template.update(query2, new PreparedStatementSetter() {

					@Override
					public void setValues(PreparedStatement ps) throws SQLException {
						// TODO Auto-generated method stub
						ps.setInt(1, cardmoney);
						ps.setString(2, cardnumber);
						ps.setString(3, cardpass);
					}
				});
			}
		}
		// 사용자가 계좌이체를 선택하였을때
		else {
			String query = "insert into infor(place, pname, proom, personnel, pprice, checkin, checkout, id, name, email, tel, questions, bank, banknumber, bankpass, bankidnumber, bankmaster) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

			template.update(query, new PreparedStatementSetter() {

				@Override
				public void setValues(PreparedStatement ps) throws SQLException {
					// TODO Auto-generated method stub
					ps.setString(1, place);
					ps.setString(2, pname);
					ps.setString(3, proom);
					ps.setString(4, personnel);
					ps.setInt(5, Integer.parseInt(pprice));
					ps.setString(6, checkin);
					ps.setString(7, checkout);
					ps.setString(8, id);
					ps.setString(9, name);
					ps.setString(10, email);
					ps.setInt(11, Integer.parseInt(tel));
					ps.setString(12, questions);
					ps.setString(13, bank);
					ps.setString(14, banknumber);
					ps.setInt(15, Integer.parseInt(bankpass));
					ps.setString(16, bankidnumber);
					ps.setString(17, bankmaster);
				}
			});

			String query1 = "select * from payment where banknumber = '" + banknumber + "' and bankpass = '" + bankpass
					+ "'";
			SqlRowSet srs = template.queryForRowSet(query1);
			if (srs.next()) {
				bankmoney1 = srs.getInt("bankmoney");
				bankmoney1 = bankmoney1 - Integer.parseInt(pprice);
				final int bankmoney = bankmoney1;

				String query2 = "update payment set bankmoney = ? where banknumber = ? and bankpass = ?";

				template.update(query2, new PreparedStatementSetter() {

					@Override
					public void setValues(PreparedStatement ps) throws SQLException {
						// TODO Auto-generated method stub
						ps.setInt(1, bankmoney);
						ps.setString(2, banknumber);
						ps.setString(3, bankpass);
					}
				});
			}
		}
	}

	// 사용자가 펜션의 방이름을 클릭하였을때 팝업창을 보여준다
	// 팝업창에서 사용자가 클릭한 방의 가격과 이름을 출력해준다
	public bookingDTO popup(String proom1) {
		bookingDTO dto = null;

		try {
			// 업체가 등록한 DB에서 방이름을 검색하는 query
			String query = "select * from pension where proom = '"+proom1+"'";
			
			SqlRowSet srs = template.queryForRowSet(query);

			if (srs.next()) {
				int pprice1 = srs.getInt("pprice");
				proom1 = srs.getString("proom");
				String place1 = srs.getString("pplace");
				String pname1 = srs.getString("pname");
				String personnel1 = srs.getString("ppersonnel_max");
				String pimg = srs.getString("pimg");
				dto = new bookingDTO(pprice1, proom1, place1, pname1, personnel1, pimg);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	
	public void updateNow(final String proom,final String checkin,final String checkout) {
		try {
			// 업체가 등록한 DB에서 방이름을 검색하는 query
			String query = "update pension set now = 1 where proom = ? AND (ponday = ? OR ponday = ?)";
			template.update(query, new PreparedStatementSetter() {
				
				@Override
				public void setValues(PreparedStatement ps) throws SQLException {
					// TODO Auto-generated method stub
					ps.setString(1, proom);
					ps.setString(2, checkin);
					ps.setString(3, checkout);
				}
			});
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}