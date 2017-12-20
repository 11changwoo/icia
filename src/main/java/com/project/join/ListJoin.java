package com.project.join;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.project.dao.MemberDAO;
import com.project.dto.MemberVO;
import com.project.util.Command;

public class ListJoin implements Command {

	@Override
	public void execute(Model model) {
		ArrayList<MemberVO> joinList = new ArrayList<MemberVO>();
		MemberDAO mdao = new MemberDAO();
		
		joinList = mdao.selectJoin();
		
		model.addAttribute("joinList",joinList);
	}

}
