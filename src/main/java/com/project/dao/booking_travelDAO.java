package com.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import com.project.dto.booking_travelDTO;
import com.project.dto.tinforDTO;
import com.project.util.Constant;

public class booking_travelDAO {

	JdbcTemplate template;

	public booking_travelDAO() {
		template = Constant.template;
	}

	// ��ü�� ����� ���������� ����ڰ� Ŭ���Ͽ� 1�� DB(booking)�� ����
	public void twrite(final String tplace, final String tname, final String tvehicle, final String tpersonnel,
			String tprice, final String tstart, final String tend) {
		booking_travelDTO dto = null;

		try {
			// ��ü�� ����� DB(test_t)���� ������ ������ ���� query
			String query1 = "select tprice from travel where tplace = '" + tplace + "'";

			SqlRowSet srs = template.queryForRowSet(query1);

			if (srs.next()) {

				String tprice_t = srs.getString("tprice");
				tprice = tprice_t;
			}

			final String tprice2 = tprice;
			// 1�� DB�� ���� query
			String query = "insert into tbooking(num, tplace, tname, tvehicle, tpersonnel, tprice, tstart, tend) values(tbooking_seq.nextval,?,?,?,?,?,?,?)";

			template.update(query, new PreparedStatementSetter() {

				@Override
				public void setValues(PreparedStatement ps) throws SQLException {
					// TODO Auto-generated method stub
					ps.setString(1, tplace);
					ps.setString(2, tname);
					ps.setString(3, tvehicle);
					ps.setString(4, tpersonnel);
					ps.setString(5, tprice2);
					ps.setString(6, tstart);
					ps.setString(7, tend);
				}
			});

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// ��������â���� ����ڰ� ����� ���� ������ִ°�
	public booking_travelDTO twrite_2() {
		booking_travelDTO dto = null;

		try {
			// 1�� DB���� ���� �������� ��ϵ� ������ �˻� query
			String query = "select tplace, tname, tvehicle, tpersonnel, tprice, tstart, tend from tbooking";
			SqlRowSet srs = template.queryForRowSet(query);

			int i = 0;
			while (srs.next()) {
				i++;
			}

			// ���������������� ����ϱ��� ������ �������� query
			query = "select tplace, tname, tvehicle, tpersonnel, tprice, tstart, tend from tbooking where num = '" + i
					+ "'";
			srs = template.queryForRowSet(query);

			while (srs.next()) {
				String tplace = srs.getString("tplace");
				String tname = srs.getString("tname");
				String tvehicle = srs.getString("tvehicle");
				String tpersonnel = srs.getString("tpersonnel");
				String tprice = srs.getString("tprice");
				String tstart = srs.getString("tstart");
				String tend = srs.getString("tend");
				dto = new booking_travelDTO(tplace, tname, tvehicle, tpersonnel, tprice, tstart, tend);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

	// ��������â���� ����ڰ� ������ ���������� ���������� ���� DB(infor)�� ����
	public void twrite_3(final String tplace, final String tname, final String tvehicle, final String tpersonnel,
			final String tprice, final String tstart, final String tend, final String id, final String name,
			final String email, final String tel, final String questions, final String card, final String cardnumber,
			final String cardpass, final String cardterm, final String cardidnumber, final String bank,
			final String banknumber, final String bankpass, final String bankidnumber, final String bankmaster,
			final String check) throws Exception {

		tinforDTO dto = null;
		String va = check;
		int cardmoney1 = 0;
		int bankmoney1 = 0;

		/* try { */
		// ����ڰ� ������ �ſ�ī�带 �����Ͽ�����
		if (va.equals("sin")) {

			String query = "insert into tinfor(tplace, tname, tvehicle, tpersonnel, tprice, tstart, tend, id, name, email, tel, questions, card, cardnumber, cardpass, cardterm, cardidnumber) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			template.update(query, new PreparedStatementSetter() {

				@Override
				public void setValues(PreparedStatement ps) throws SQLException {
					// TODO Auto-generated method stub
					ps.setString(1, tplace);
					ps.setString(2, tname);
					ps.setString(3, tvehicle);
					ps.setString(4, tpersonnel);
					ps.setInt(5, Integer.parseInt(tprice));
					ps.setString(6, tstart);
					ps.setString(7, tend);
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
				cardmoney1 = cardmoney1 - Integer.parseInt(tprice);

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
			// ����ڰ� ������ü�� �����Ͽ�����
		} else if (va.equals("ge")) {

			String query = "insert into tinfor(tplace, tname, tvehicle, tpersonnel, tprice, tstart, tend, id, name, email, tel, questions, bank, banknumber, bankpass, bankidnumber, bankmaster) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			template.update(query, new PreparedStatementSetter() {

				@Override
				public void setValues(PreparedStatement ps) throws SQLException {
					// TODO Auto-generated method stub
					ps.setString(1, tplace);
					ps.setString(2, tname);
					ps.setString(3, tvehicle);
					ps.setString(4, tpersonnel);
					ps.setInt(5, Integer.parseInt(tprice));
					ps.setString(6, tstart);
					ps.setString(7, tend);
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
				bankmoney1 = bankmoney1 - Integer.parseInt(tprice);

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

	// ����ڰ� ����� ���̸��� Ŭ���Ͽ����� �˾�â�� �����ش�
	// �˾�â���� ����ڰ� Ŭ���� ���� ���ݰ� �̸��� ������ش�
	public booking_travelDTO tpopup(String tplace1) {
		booking_travelDTO dto = null;

		try {
			// ��ü�� ����� DB���� ���̸��� �˻��ϴ� query
			String query = "select * from travel where tplace = '" + tplace1 + "'";
			SqlRowSet srs = template.queryForRowSet(query);

			if (srs.next()) {

				int tprice1 = srs.getInt("tprice");
				tplace1 = srs.getString("tplace");
				String tvehicle1 = srs.getString("tplace");
				String tname1 = srs.getString("tname");
				String personnel1 = srs.getString("tpersonnel_max");
				String timg = srs.getString("timg");
				dto = new booking_travelDTO(tprice1, tplace1, tvehicle1, tname1, personnel1, timg);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	public void updateNow(final String tname, final String tstart,final String tend) {
		try {
			// ��ü�� ����� DB���� ���̸��� �˻��ϴ� query
			String query = "update travel set now = 1 where tname = ? AND (tstart = ? AND tend = ?)";
			template.update(query, new PreparedStatementSetter() {
				
				@Override
				public void setValues(PreparedStatement ps) throws SQLException {
					// TODO Auto-generated method stub
					ps.setString(1, tname);
					ps.setString(2, tstart);
					ps.setString(3, tend);
				}
			});
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}