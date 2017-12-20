package com.project.movie;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

import com.project.dao.test_DAO;
import com.project.dto.test_2DTO;
import com.project.dto.test_DTO;
import com.project.util.Command;

public class m_test  implements Command{

	@Override
	public void execute(Model model) throws Exception {
		// TODO Auto-generated method stub
		test_DAO dao = new test_DAO();
		ArrayList<test_2DTO> dtos = dao.list_m();
		ArrayList<test_2DTO> dtos1 = dao.list_mp();
		
		model.addAttribute("list", dtos);
		model.addAttribute("monday", dtos1);
	}
}