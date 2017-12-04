package com.project.join;

import java.sql.Timestamp;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.project.dao.MemberDAO;
import com.project.dto.MemberVO;

public class Joinup implements JCommand{

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String address = request.getParameter("addr"); 
		String address_f = request.getParameter("addr_f");
		String address_b = request.getParameter("addr_b");
		String email_id = request.getParameter("email_id");
		String email_addr = request.getParameter("email_select");
		String tel = request.getParameter("tel");
		String intro = request.getParameter("intro");
		Timestamp reg = new Timestamp(System.currentTimeMillis());
		String business = request.getParameter("categori_select");
		String check = request.getParameter("check");
		
		MemberVO mVo = new MemberVO();
		mVo.setId(id);
		mVo.setPw(pw);
		mVo.setName(name);
		mVo.setGender(gender);
		mVo.setAddress_f(address_f);
		mVo.setAddress_b(address_b);
		mVo.setEmail_id(email_id);
		mVo.setEmail_addr(email_addr);
		mVo.setTel(tel);
		mVo.setIntro(intro);
		mVo.setReg(reg);
		mVo.setBusiness(business);
		mVo.setType(check);
				
		MemberDAO mDao = new MemberDAO();
		int result = mDao.insertMember(mVo);
		
		System.out.println("insertMember result : "+result);
	}

}
