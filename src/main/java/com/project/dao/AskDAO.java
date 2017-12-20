package com.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import com.project.dto.AskVO;
import com.project.util.Constant;

public class AskDAO {
	JdbcTemplate template = null;

	// 생성자
	public AskDAO() {
		template = Constant.template;
	}
	
	//문의사항 DB에 저장
//	create table user_ask(
//		name varchar2(30),
//		email varchar2(50),
//		content varchar2(3000),
//		category varchar2(20)
//	);
	//DB에 데이터 삽입
	public int insertAsk(final AskVO aVo) {
		int ps = template.update(new PreparedStatementCreator() {
			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				// TODO Auto-generated method stub
				String sql = "insert into user_ask values(?, ?, ?, ?)";
				PreparedStatement pstmt = con.prepareStatement(sql);
				pstmt.setString(1, aVo.getName());
				pstmt.setString(2, aVo.getEmail());
				pstmt.setString(3, aVo.getContent());
				pstmt.setString(4, aVo.getCategory());
				
				return pstmt;
			}
		});
		
		if(ps == 1) {
			return 1;
		}
		else {
			return 0;
		}
	}
	
	public ArrayList<AskVO> selectAsk() {
		String sql = "select * from user_ask";
		ArrayList<AskVO> aVoList = new ArrayList<AskVO>();
		AskVO aVo = null;
		SqlRowSet srs = template.queryForRowSet(sql);
		while(srs.next()) {
			aVo = new AskVO();
			aVo.setName(srs.getString("name"));
			aVo.setEmail(srs.getString("email"));
			aVo.setContent(srs.getString("content"));
			aVo.setCategory(srs.getString("category"));
			
			aVoList.add(aVo);
		}
		return aVoList;
	}
}
