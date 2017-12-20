package com.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.RecoverableDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import com.project.dto.ContentDto;
import com.project.dto.ContentDto2;
import com.project.util.Constant;
import com.project.util.IDao;

public class ContentDao implements IDao {

	JdbcTemplate template;

	public ContentDao() {
		this.template = Constant.template;
	}

	// input - 펜션 입력 테스트 1 / 기존 게시판 입력 변경
	@Override
	public ArrayList<ContentDto> listDao() {
		System.out.println("listdao");
		String query = "select * from pension order by  num asc, ponday asc";

		System.out.println(query);

		ArrayList<ContentDto> dtos2 = (ArrayList<ContentDto>) template.query(query,
				new BeanPropertyRowMapper<ContentDto>(ContentDto.class));

		return dtos2;

	}

	@Override
	public ArrayList<ContentDto> writeDao(final String pplace, final String pname, final String proom,
			final String pprice, final String ppersonnel_min, final String ppersonnel_max, final String pstart,
			final String pend, final String pm, final String pimg, final String now) {
		System.out.println("writeDao()");

		this.template.update(new PreparedStatementCreator() {

			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				String query = "insert into pension(num,pplace, pname, proom, pprice,ppersonnel_min,ppersonnel_max,pstart,pend,ponday,pm,pimg) values(pension_seq.nextval,?,?,?,?,?,?,?,?,?,?,?)";
				PreparedStatement pstmt = con.prepareStatement(query);
				String query2 = "Delete from pension where num in (select num from pension k1 where num not in (select MIN(num) from pension k2 where k1.ponday = k2.ponday and k1.proom =k2.proom ))";
				PreparedStatement pstmt2 = con.prepareStatement(query2);
				int ponday = Integer.parseInt(pend) - Integer.parseInt(pstart);
				

				try {
					for (int i = 0; i <= ponday; ++i) {
						
						int a = Integer.parseInt(pstart) + i;
						
						pstmt.setString(1, pplace);
						pstmt.setString(2, pname);
						pstmt.setString(3, proom);
						pstmt.setString(4, pprice);
						pstmt.setString(5, ppersonnel_min);
						pstmt.setString(6, ppersonnel_max);
						pstmt.setString(7, pstart);
						pstmt.setString(8, pend);
						pstmt.setString(9, String.valueOf(a));
						pstmt.setString(10, pm);
						pstmt.setString(11, pimg);

						pstmt.executeQuery();
						pstmt2.executeQuery();

					}

				} catch (RecoverableDataAccessException e) {

				} finally {
					

				}
				return pstmt2;
			}
		});

		return null;
	}

	@Override
	public ContentDto viewDao(String strID) {
		System.out.println("viewDao()");

		String query = "select * from pension where proom=" + strID;
		return template.queryForObject(query, new BeanPropertyRowMapper<ContentDto>(ContentDto.class));
	}

	// 방이름을 기준으로 삭제
	@Override
	public void deleteDao(final String num) {
		System.out.println("deleteDao()");

		String query = "delete from pension where num= ?";

		this.template.update(query, new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, num);
			}
		});
	}
	// 펜션 끝 여행
	// 시작==================================================================================================

	@Override
	public ArrayList<ContentDto> tlistDao() {
		String query = "select * from travel ";
		ArrayList<ContentDto> dtos = (ArrayList<ContentDto>) template.query(query,
				new BeanPropertyRowMapper<ContentDto>(ContentDto.class));
		return dtos;
	}

	@Override
	public void twriteDao(final String tname, final String tplace, final String tvehicle, final String tprice,
			final String tpersonnel_min, final String tpersonnel_max, final String tstart, final String tend,
			final String tm, final String timg, final String now) {
		System.out.println("twriteDao()");

		this.template.update(new PreparedStatementCreator() {

			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				String query = "insert into travel(num, tname, tplace, tvehicle, tprice,tpersonnel_min,tpersonnel_max,tstart,tend,tm,timg) values(travel_seq.nextval,?,?,?,?,?,?,?,?,?,?)";
				PreparedStatement pstmt = con.prepareStatement(query);
				pstmt.setString(1, tname);
				pstmt.setString(2, tplace);
				pstmt.setString(3, tvehicle);
				pstmt.setString(4, tprice);
				pstmt.setString(5, tpersonnel_min);
				pstmt.setString(6, tpersonnel_max);
				pstmt.setString(7, tstart);
				pstmt.setString(8, tend);
				pstmt.setString(9, tm);
				pstmt.setString(10, timg);

				return pstmt;
			}
		});

	}

	@Override
	public ContentDto tviewDao(String strID) {
		System.out.println("tviewDao()");
		// 여행이름 기준
		String query = "select * from travel where tname=" + strID;
		return template.queryForObject(query, new BeanPropertyRowMapper<ContentDto>(ContentDto.class));
	}

	@Override
	public void tdeleteDao(final String num) {
		System.out.println("tdeleteDao()");

		String query = "delete from travel where num= ?";

		this.template.update(query, new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, num);
			}
		});
	}
	// 여행 끝 영화
	// 시작==================================================================================================

	@Override
	public ArrayList<ContentDto> mlistDao() {
		System.out.println("mlistdao");
		String query = "select * from movie order by num asc, monday asc";

		System.out.println(query);

		ArrayList<ContentDto> dtos2 = (ArrayList<ContentDto>) template.query(query,
				new BeanPropertyRowMapper<ContentDto>(ContentDto.class));

		return dtos2;

	}

	@Override
	public ArrayList<ContentDto> mwriteDao(final String mplace, final String mname, final String theater,
			final String mpersonnel, final String mstart, final String mend, final String mm, final String mimg,
			final String now) {
		System.out.println("mwriteDao()");

		this.template.update(new PreparedStatementCreator() {

			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				String query = "insert into movie(num,mplace, mname, theater, mpersonnel ,mstart,mend,monday,mm,mimg) values(movie_seq.nextval,?,?,?,?,?,?,?,?,?)";
				PreparedStatement pstmt = con.prepareStatement(query);
				String query2 = "Delete from movie where num in (select num from movie k1 where num not in (select MIN(num) from movie k2 where k1.monday = k2.monday and k1.mname =k2.mname and k1.theater =k2.theater ))";
				PreparedStatement pstmt2 = con.prepareStatement(query2);
				int monday = Integer.parseInt(mend) - Integer.parseInt(mstart);
				System.out.println(monday);
				System.out.println(mstart);
				System.out.println(mend);

				try {
					for (int i = 0; i <= monday; ++i) {
						
						// System.out.println(Integer.parseInt(pstart));
						int a = Integer.parseInt(mstart) + i;
						
						pstmt.setString(1, mplace);
						pstmt.setString(2, mname);
						pstmt.setString(3, theater);
						pstmt.setString(4, mpersonnel);
						pstmt.setString(5, mstart);
						pstmt.setString(6, mend);
						pstmt.setString(7, String.valueOf(a));
						pstmt.setString(8, mm);
						pstmt.setString(9, mimg);

						pstmt.executeQuery();
						pstmt2.executeQuery();

					}

				} catch (RecoverableDataAccessException e) {

				} finally {

				}
				return pstmt2;
			}
		});

		return null;
	}

	@Override
	public ContentDto mviewDao(String strID) {
		System.out.println("mviewDao()");

		String query = "select * from movie where mname=" + strID;
		return template.queryForObject(query, new BeanPropertyRowMapper<ContentDto>(ContentDto.class));
	}

	// 방이름을 기준으로 삭제
	@Override
	public void mdeleteDao(final String num) {
		System.out.println("mdeleteDao()");

		String query = "delete from movie where num= ?";

		this.template.update(query, new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, num);
			}
		});
	}

	// ==============================================================
	@Override
	public ArrayList<ContentDto2> mypage(final String strID) {
		System.out.println("mypage");
		
		String query = "select * from member_user where id='" + strID + "'";

		ArrayList<ContentDto2> dtos = (ArrayList<ContentDto2>) template.query(query,
				new BeanPropertyRowMapper<ContentDto2>(ContentDto2.class));

		return dtos;

	}

	@Override
	   public ArrayList<ContentDto2> booklist(final String strID) {
	      System.out.println("booklist");
	      String a = null;
	      String a2 = null; //null 값 처리 위한 변수
	      try {
	      String sql = "select id from infor where id='" + strID + "'";
	      SqlRowSet srs = template.queryForRowSet(sql);
	      if (srs.next()) {
	         a = srs.getString("id");
	      }
	      if (a.equals(strID)) {
	         String query = "select user2.name name, infor.name cname, infor.place place, infor.proom proom, infor.pprice, infor.personnel personnel,  infor.checkin checkin,"
	               + "infor.checkout checkout, infor.pname pname, infor.email email, infor.tel tel, infor.questions "
	               + "FROM (  SELECT * FROM member_user where id='" + strID
	               + "' ) user2 INNER JOIN infor infor ON infor.id= user2.id";
	         ArrayList<ContentDto2> dtos = (ArrayList<ContentDto2>) template.query(query,
	               new BeanPropertyRowMapper<ContentDto2>(ContentDto2.class));
	         return dtos;
	      }
	      }catch(NullPointerException e) {
	         //null 값 처리 위한 쿼리 나의 정보(member_user) 테이블 id 
	         String sql1_2 = "select id from member_user where id='" + strID + "'";
	         SqlRowSet srs1_2 = template.queryForRowSet(sql1_2);
	         if (srs1_2.next()) {
	            a2 = srs1_2.getString("id");            
	         }
	         if(a2.equals(strID)){
	            String query = "select * from member_user where id='" + strID + "'";
	            ArrayList<ContentDto2> dtos = (ArrayList<ContentDto2>) template.query(query,
	                  new BeanPropertyRowMapper<ContentDto2>(ContentDto2.class));
	            return dtos;
	         }
	      }
	      return null;
	   }

	   @Override
	   public ArrayList<ContentDto2> booklist2(final String strID) {
	      System.out.println("booklist");

	      String b = null;
	      String b2 =null;
	      try {
	      String sql2 = "select id from tinfor where id='" + strID + "'";
	      SqlRowSet srs2 = template.queryForRowSet(sql2);
	      if (srs2.next()) {
	         b = srs2.getString("id");
	      }
	      if (b.equals(strID)) {
	         String query2 = "select user2.name name,"
	               + " tinfor.tvehicle vehicle, tinfor.tpersonnel personnel, tinfor.tplace place, tinfor.tname pname, "
	               + " tinfor.tstart checkin, tinfor.tend checkout FROM ( SELECT * FROM member_user "
	               + "where id='" + strID + "' ) user2 INNER JOIN tinfor tinfor  ON tinfor.id  = user2.id";
	         ArrayList<ContentDto2> dtos2 = (ArrayList<ContentDto2>) template.query(query2,
	               new BeanPropertyRowMapper<ContentDto2>(ContentDto2.class));
	         return dtos2;
	      }
	      }catch(NullPointerException e){
	         String sql2_2 = "select id from member_user where id='" + strID + "'";
	         SqlRowSet srs2_2 = template.queryForRowSet(sql2_2);
	         if (srs2_2.next()) {
	            b2 = srs2_2.getString("id");            
	         }
	         if(b2.equals(strID)){
	            String query = "select * from member_user where id='" + strID + "'";
	            ArrayList<ContentDto2> dtos = (ArrayList<ContentDto2>) template.query(query,
	                  new BeanPropertyRowMapper<ContentDto2>(ContentDto2.class));
	            return dtos;
	         }
	      }
	      return null;
	   }

	   @Override
	   public ArrayList<ContentDto2> booklist3(final String strID) {
	      String c = null;
	      String c2 = null;
	      try {
	         String sql3 = "select id from minfor where id='" + strID + "'";
	         SqlRowSet srs3 = template.queryForRowSet(sql3);
	         if (srs3.next()) {
	            c = srs3.getString("id");
	         }
	         if (c.equals(strID)) {
	            String query3 ="SELECT user2.name, minfor.mplace place, minfor.mname pname,"
	               +"   minfor.mroom proom, minfor.mpersonnel personnel, minfor.mday checkin,"
	               +"   minfor.seat seat, minfor.name cname, minfor.email, minfor.tel,"
	               +"   minfor.questions FROM (  SELECT * FROM member_user where id='"+strID+"' ) user2"     
	               +"   INNER JOIN minfor minfor ON minfor.id = user2.id"; 
	           
	            ArrayList<ContentDto2> dtos3 = (ArrayList<ContentDto2>) template.query(query3,
	                  new BeanPropertyRowMapper<ContentDto2>(ContentDto2.class));
	            return dtos3;
	         }
	      }catch(NullPointerException e) {
	         String sql3_2 = "select id from member_user where id='" + strID + "'";
	         SqlRowSet srs3_2 = template.queryForRowSet(sql3_2);
	         if (srs3_2.next()) {
	            c2 = srs3_2.getString("id");            
	         }
	         if(c2.equals(strID)){
	            String query = "select * from member_user where id='" + strID + "'";
	            ArrayList<ContentDto2> dtos = (ArrayList<ContentDto2>) template.query(query,
	                  new BeanPropertyRowMapper<ContentDto2>(ContentDto2.class));
	            return dtos;
	         }
	      }      
	      return null;
	   }
}
