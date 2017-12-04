package com.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;

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
}
