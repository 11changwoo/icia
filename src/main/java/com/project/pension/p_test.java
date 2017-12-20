package com.project.pension;

import java.util.ArrayList;
import org.springframework.ui.Model;
import com.project.dao.test_DAO;
import com.project.dto.test_DTO;
import com.project.util.Command;


public class p_test implements Command{
	
	@Override
	public void execute(Model model) throws Exception {
		// TODO Auto-generated method stub
		test_DAO dao = new test_DAO();
		ArrayList<test_DTO> dtos = dao.list();
		ArrayList<test_DTO> dtos1 = dao.list_p();
		
		model.addAttribute("list", dtos);
		model.addAttribute("list1",dtos1);
	}
}