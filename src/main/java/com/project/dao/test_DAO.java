package com.project.dao;

import java.util.ArrayList;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import com.project.dto.test_2DTO;
import com.project.dto.test_DTO;
import com.project.util.Constant;

public class test_DAO {

	JdbcTemplate template;

	public test_DAO() {
		template = Constant.template;
	}

	// 업체가 등록한 펜션 정보를 예약페이지에 보여준다
	public ArrayList<test_DTO> list() {
		ArrayList<test_DTO> dtos = new ArrayList<test_DTO>();
		//String sql = "select * from test_t";
		String sql = "select distinct pplace,pname,proom,ppersonnel_max,pprice from pension where now = 0";
		
		SqlRowSet srs = template.queryForRowSet(sql);
		while(srs.next()) {
			String place1 = srs.getString("pplace");
			String pname1 = srs.getString("pname");
			String proom1 = srs.getString("proom");
			String personnel1 = srs.getString("ppersonnel_max");
			int pprice1 = srs.getInt("pprice");
			//String ponday = srs.getString("ponday");
			
			test_DTO dto = new test_DTO(place1, pname1, proom1, personnel1, pprice1);
			dtos.add(dto);
		}
		
		return dtos;
	}
	
	public ArrayList<test_DTO> list_p() {
		ArrayList<test_DTO> dtos = new ArrayList<test_DTO>();
		//String sql = "select * from test_t";
		String sql = "select ponday from pension where now = 0";
		
		SqlRowSet srs = template.queryForRowSet(sql);
		while(srs.next()) {
			
			String ponday = srs.getString("ponday");
			System.out.println(ponday);
			test_DTO dto = new test_DTO(ponday);
			dtos.add(dto);
		}
		
		return dtos;
	}

	// 업체가 등록한 영화 정보를 예약페이지에 보여준다
	public ArrayList<test_2DTO> list_m() {
		
		ArrayList<test_2DTO> dtos = new ArrayList<test_2DTO>();
		//String sql = "select * from test_mt";
		String sql = "select distinct mplace, mname, theater, mpersonnel, mprice from movie where now = 0";
		
		SqlRowSet srs = template.queryForRowSet(sql);
		while(srs.next()) {
			String mplace1 = srs.getString("mplace");
			String mname1 = srs.getString("mname");
			String mroom1 = srs.getString("theater");
			String mpersonnel1 = srs.getString("mpersonnel");
			int mprice1 = srs.getInt("mprice");
//			String mday1 = srs.getString("monday");

			test_2DTO dto = new test_2DTO(mplace1, mname1, mroom1, mpersonnel1, mprice1);
			dtos.add(dto);
		}
		
		return dtos;
	}
	
	public ArrayList<test_2DTO> list_mp() {
		
		ArrayList<test_2DTO> dtos = new ArrayList<test_2DTO>();
		//String sql = "select * from test_mt";
		String sql = "select monday from movie where now = 0";
		
		SqlRowSet srs = template.queryForRowSet(sql);
		while(srs.next()) {
			String mday1 = srs.getString("monday");
			System.out.println(mday1);
			test_2DTO dto = new test_2DTO(mday1);
			dtos.add(dto);
		}
		
		return dtos;
	}

}
