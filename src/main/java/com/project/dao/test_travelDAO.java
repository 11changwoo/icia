package com.project.dao;

import java.util.ArrayList;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import com.project.dto.test_travelDTO;
import com.project.util.Constant;


public class test_travelDAO {

	JdbcTemplate template;

	public test_travelDAO() {
		template = Constant.template;
	}

	// 업체가 등록한 정보를 예약페이지의 보여준다
	public ArrayList<test_travelDTO> list() {
		ArrayList<test_travelDTO> dtos = new ArrayList<test_travelDTO>();

		try {
			String query = "select distinct tplace, tname, tvehicle, tprice, tpersonnel_max from travel where now = 0";
			SqlRowSet srs = template.queryForRowSet(query);

			while (srs.next()) {
				String tplace = srs.getString("tplace");
				String tname = srs.getString("tname");
				String tvehicle = srs.getString("tvehicle");
				int tprice = srs.getInt("tprice");
				String tpersonnel = srs.getString("tpersonnel_max"); 
//				String tstart = srs.getString("tstart");
//				String tend = srs.getString("tend");

				test_travelDTO dto = new test_travelDTO(tplace, tname, tvehicle, tprice, tpersonnel);
				dtos.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return dtos;
	}
	
	public ArrayList<test_travelDTO> list_p() {
		ArrayList<test_travelDTO> dtos = new ArrayList<test_travelDTO>();

		try {
			String query = "select tstart, tend from travel where now = 0";
			SqlRowSet srs = template.queryForRowSet(query);

			while (srs.next()) {
				String tstart = srs.getString("tstart");
				String tend = srs.getString("tend");

				test_travelDTO dto = new test_travelDTO(tstart, tend);
				dtos.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return dtos;
	}
}
