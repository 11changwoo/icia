package com.project.dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import com.project.dto.bookingDTO;
import com.project.dto.mbookingDTO;
import com.project.util.Constant;

public class mbookingDAO {
	JdbcTemplate template;

	public mbookingDAO() {
		template = Constant.template;
	}

	// 업체가 등록한 예약정보를 사용자가 클릭하여 1차 DB(mbooking)에 삽입
	public void mwrite(final String mplace, final String mname, final String mroom, final String mpersonnel, String mprice, final String mday) {
		bookingDTO dto = null;

		try {
			// 업체가 등록한 DB(test_mt)에서 가격을 가져와 대입 query
			String query1 = "select mprice from movie where theater = '"+mroom+"'";

			SqlRowSet srs = template.queryForRowSet(query1);
			if (srs.next()) {
				String mprice_t = srs.getString("mprice");
				mprice = mprice_t;
			}

			// 1차 DB에 삽입 query
			final String mprice2 = mprice; 
			String query = "insert into mbooking(mnum, mplace, mname, mroom, mpersonnel, mprice, mday) values(mbooking_seq.nextval,?,?,?,?,?,?)";
			
			template.update(query, new PreparedStatementSetter() {
				
				@Override
				public void setValues(PreparedStatement ps) throws SQLException {
					// TODO Auto-generated method stub
					ps.setString(1, mplace);
					ps.setString(2, mname);
					ps.setString(3, mroom);
					ps.setString(4, mpersonnel);
					ps.setString(5, mprice2);
					ps.setString(6, mday);
				}
			});
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}

	// 결제정보창에서 사용자가 등록한 값을 출력해주는것
	public mbookingDTO mwrite_2() {
		mbookingDTO dto = null;

		try {
			// 1차 DB에서 제일 마지막에 등록된 정보를 검색 query
			String query = "select mplace, mname, mroom, mpersonnel, mprice, mday, seat from mbooking";
			SqlRowSet srs = template.queryForRowSet(query);

			int i = 0;
			while (srs.next()) {
				i++;
			}

			// 결제정보페이지에 출력하기위 정보를 가져오는 query
			query = "select mplace, mname, mroom, mpersonnel, mprice, mday, seat from mbooking where mnum = '"+i+"'";
			SqlRowSet srs2 = template.queryForRowSet(query);

			while (srs2.next()) {
				String mplace = srs2.getString("mplace");
				String mname = srs2.getString("mname");
				String mroom = srs2.getString("mroom");
				String mpersonnel = srs2.getString("mpersonnel");
				String mprice = srs2.getString("mprice");
				String mday = srs2.getString("mday");
				String seat = srs2.getString("seat");
				dto = new mbookingDTO(mplace, mname, mroom, mpersonnel, mprice, mday, seat);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

	// 결제정보창에서 사용자가 선택한 예약정보와 결제정보를 최종 DB(minfor)에 삽입
	public void mwrite_3(final String mplace, final String mname, final String mroom, final String mpersonnel, final String mprice, final String mday, final String seat,
			final String id, final String name, final String email, final String tel, final String questions, final String card, final String cardnumber,
			final String cardpass, final String cardterm, final String cardidnumber, final String bank, final String banknumber, final String bankpass,
			final String bankidnumber, final String bankmaster, final String check) throws Exception {
		
		String va = check;
		int cardmoney1 = 0;
		int bankmoney1 = 0;

		// 사용자가 결제를 신용카드를 선택하였을때
		if (va.equals("sin")) {
			String query = "insert into minfor(mplace, mname, mroom, mpersonnel, mprice, mday, seat, id, name, email, tel, questions, card, cardnumber, cardpass, cardterm, cardidnumber) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			
			template.update(query, new PreparedStatementSetter() {
				
				@Override
				public void setValues(PreparedStatement ps) throws SQLException {
					// TODO Auto-generated method stub
					ps.setString(1, mplace);
					ps.setString(2, mname);
					ps.setString(3, mroom);
					ps.setString(4, mpersonnel);
					ps.setInt(5, Integer.parseInt(mprice));
					ps.setString(6, mday);
					ps.setString(7, seat);
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
			

			String query1 = "select * from payment where cardnumber = '"+cardnumber+"' and cardpass = '"+cardpass+"'";

			SqlRowSet srs = template.queryForRowSet(query1);

			if (srs.next()) {
				cardmoney1 = srs.getInt("cardmoney");
				cardmoney1 = cardmoney1 - Integer.parseInt(mprice);
				
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

			// 사용자가 계좌이체를 선택하였을때
		} else if (va.equals("ge")) {
			String query = "insert into minfor(mplace, mname, mroom, mpersonnel, mprice, mday, seat, id, name, email, tel, questions, bank, banknumber, bankpass, bankidnumber, bankmaster) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			
			template.update(query, new PreparedStatementSetter() {
				
				@Override
				public void setValues(PreparedStatement ps) throws SQLException {
					// TODO Auto-generated method stub
					ps.setString(1, mplace);
					ps.setString(2, mname);
					ps.setString(3, mroom);
					ps.setString(4, mpersonnel);
					ps.setInt(5, Integer.parseInt(mprice));
					ps.setString(6, mday);
					ps.setString(7, seat);
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

			String query1 = "select * from payment where banknumber = '"+banknumber+"' and bankpass = '"+bankpass+"'";
			
			SqlRowSet srs = template.queryForRowSet(query1);

			if (srs.next()) {
				bankmoney1 = srs.getInt("bankmoney");
				bankmoney1 = bankmoney1 - Integer.parseInt(mprice);
				
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

	// 사용자가 영화의 영화이름을 클릭하였을때 팝업창을 보여준다
	// 팝업창에서 사용자가 클릭한 영화의 가격과 이름을 출력해준다
	public mbookingDTO mpopup(String mroom1) {
		mbookingDTO dto = null;

		try {
			// 업체가 등록한 DB에서 방이름을 검색하는 query
			String query = "select * from movie where theater = '"+mroom1+"'";
			
			SqlRowSet srs = template.queryForRowSet(query);

			if (srs.next()) {
				int mprice1 = srs.getInt("mprice");
				mroom1 = srs.getString("theater");
				String mplace1 = srs.getString("mplace");
				String mname1 = srs.getString("mname");
				String mpersonnel1 = srs.getString("mpersonnel");
				String mimg = srs.getString("mimg");
				String monday = srs.getString("monday");
				dto = new mbookingDTO(mprice1, mroom1, mplace1, mname1, mpersonnel1, mimg, monday);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return dto;
	}

	public ArrayList<mbookingDTO> seat_m() {
		ArrayList<mbookingDTO> dtos = new ArrayList<mbookingDTO>();

		try {
			String query = "select * from seat";
			SqlRowSet srs = template.queryForRowSet(query);

			while (srs.next()) {
				String a = srs.getString("a");
				String b = srs.getString("b");
				String c = srs.getString("c");
				String d = srs.getString("d");

				mbookingDTO dto = new mbookingDTO(a, b, c, d);
				dtos.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return dtos;
	}

	public void mwrite_seat(final String seat) {
		mbookingDTO dto = null;

		try {
			// 1차 DB에서 제일 마지막에 등록된 정보를 검색 query
			String query = "select mplace, mname, mroom, mpersonnel, mprice, mday, seat from mbooking";

			SqlRowSet srs = template.queryForRowSet(query);

			int i = 0;
			while (srs.next()) {
				i++;
			}
			
			final int num = i;
			query = "update mbooking set seat = ? where mnum = ?";
			template.update(query, new PreparedStatementSetter() {
				
				@Override
				public void setValues(PreparedStatement ps) throws SQLException {
					// TODO Auto-generated method stub
					ps.setString(1, seat);
					ps.setInt(2, num);
				}
			});
			
			// 결제정보페이지에 출력하기위해 정보를 가져오는 query
//			if (resultSet1.next()) {
//				preparedStatement1 = connection.prepareStatement(query);
//
//			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	
	public void updateNow(final String mname, final String mday) {
		try {
			// 업체가 등록한 DB에서 방이름을 검색하는 query
			String query = "update movie set now = 1 where mname = ? AND monday = ?";
			template.update(query, new PreparedStatementSetter() {
				
				@Override
				public void setValues(PreparedStatement ps) throws SQLException {
					// TODO Auto-generated method stub
					ps.setString(1, mname);
					ps.setString(2, mday);
				}
			});
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}