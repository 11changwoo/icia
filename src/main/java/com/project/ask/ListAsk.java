package com.project.ask;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.project.dao.AskDAO;
import com.project.dto.AskVO;
import com.project.util.Command;

public class ListAsk implements Command {

	@Override
	public void execute(Model model) {
		ArrayList<AskVO> askList = new ArrayList<AskVO>();
		AskDAO adao = new AskDAO();
		
		askList = adao.selectAsk();
		
		model.addAttribute("askList",askList);
	}

}
