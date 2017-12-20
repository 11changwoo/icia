package com.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import com.project.dto.AskVO;
import com.project.dto.MemberVO;
import com.project.util.Constant;

public class MemberDAO {

	JdbcTemplate template = null;

	// 생성자
	public MemberDAO() {
		template = Constant.template;
	}

	// 아이디로 회원 정보 가져오는 메소드
	public MemberVO getMember(String strID) {
		String sql = "select * from member_user where id = '" + strID + "'";
		return (MemberVO) template.queryForObject(sql, new BeanPropertyRowMapper<MemberVO>(MemberVO.class));

	}

	// 아이디 중복 확인
	public int confirmID(final String id) {
		String sql = "select id from member_user where id=?";
		int result = template.update(sql, new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				// TODO Auto-generated method stub
				ps.setString(1, id);
			}
		});
		if (result == 1)
			return 1;
		else
			return 0;
	}

	// 회원가입시 DB에 정보 입력
	public int insertMember(final MemberVO mVo) {
		int ps = template.update(new PreparedStatementCreator() {
			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				// TODO Auto-generated method stub
				String sql = "insert into member_user values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
				PreparedStatement pstmt = con.prepareStatement(sql);
				pstmt.setString(1, mVo.getId());
				pstmt.setString(2, mVo.getPw());
				pstmt.setString(3, mVo.getName());
				pstmt.setString(4, mVo.getGender());
				pstmt.setString(5, mVo.getAddress_f() + " " + mVo.getAddress_b());
				pstmt.setString(6, mVo.getEmail_id() + "@" + mVo.getEmail_addr());
				pstmt.setString(7, mVo.getTel());
				pstmt.setString(8, mVo.getIntro());
				pstmt.setTimestamp(9, mVo.getReg());
				pstmt.setString(10, mVo.getBusiness());
				pstmt.setString(11, mVo.getType());
				return pstmt;
			}
		});
		if (ps == 1)
			return 1;
		else
			return 0;
	}

	// 회원정보 수정
	public int updateMember(final String id, final String pw, final String addr, final String email, final String tel, final String intro) {
	 int ps = template.update(new PreparedStatementCreator() {

		@Override
		public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
			String sql = "update member_user set pw=?, address = ?, email=?, tel=?, intro=? where id=?";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, pw);
			pstmt.setString(2, addr);
			pstmt.setString(3, email);
			pstmt.setString(4, tel);
			pstmt.setString(5, intro);
			pstmt.setString(6, id);
			
			return pstmt;
		}
		 
	 });
	 
	 if(ps == 1) {
		 System.out.println("정보 수정 완료");
		 return ps;
	 } else {
		 System.out.println("정보 수정 실패");
		 return ps;
	 }
	}

	 public void removeMember(final String id) {
		 String sql = "delete from member_user where id = ?";
		 template.update(sql, new PreparedStatementSetter() {
			 
				@Override
				public void setValues(PreparedStatement ps) throws SQLException {
					// TODO Auto-generated method stub
					ps.setString(1, id);
				}
				 
			 });	
	 }

	public String searchId(final String name, final String email) {
		String sql = "select id from member_user where name= '" + name + "' AND email= '" + email + "'";
		String id = "";

		// java에서 DB연동시 ResultSet으로 값을 가져오는거로 생각하면 된다
		SqlRowSet srs = template.queryForRowSet(sql);
		if (srs.next()) {
			id = srs.getString("id");
		}
		return id;
	}

	public String searchPw(final String id, final String email) {
		String sql = "select pw from member_user where id='" + id + "' AND email='" + email + "'";
		String pw = "";

		// java에서 DB연동시 ResultSet으로 값을 가져오는거로 생각하면 된다
		SqlRowSet srs = template.queryForRowSet(sql);
		if (srs.next()) {
			pw = srs.getString("pw");
		}
		return pw;
	}

	public ArrayList<MemberVO> selectJoin() {
		String sql = "select * from member_user";
		ArrayList<MemberVO> joinList = new ArrayList<MemberVO>();
		MemberVO mVo = null;
		SqlRowSet srs = template.queryForRowSet(sql);
		while (srs.next()) {
			mVo = new MemberVO();
			mVo.setId(srs.getString("id"));
			mVo.setPw(srs.getString("pw"));
			mVo.setName(srs.getString("name"));
			mVo.setGender(srs.getString("gender"));
			mVo.setAddress(srs.getString("address"));
			mVo.setEmail(srs.getString("email"));
			mVo.setTel(srs.getString("tel"));
			mVo.setIntro(srs.getString("intro"));
			// mVo.setReg(srs.getTimestamp("reg"));
			mVo.setBusiness(srs.getString("business"));
			mVo.setType(srs.getString("type"));

			joinList.add(mVo);
		}
		return joinList;
	}
}
