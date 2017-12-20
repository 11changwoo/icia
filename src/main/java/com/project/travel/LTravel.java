package com.project.travel;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.project.dao.test_travelDAO;
import com.project.dto.test_travelDTO;
import com.project.util.Command;

public class LTravel implements Command {

	@Override
	public void execute(Model model) throws Exception {
		// TODO Auto-generated method stub
		test_travelDAO dao = new test_travelDAO();
		 ArrayList<test_travelDTO> dtos = dao.list();
		 ArrayList<test_travelDTO> dtos1 = dao.list_p();
		 
		 model.addAttribute("list", dtos);
		 model.addAttribute("list1",dtos1);
	}

}
