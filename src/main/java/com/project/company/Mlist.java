package com.project.company;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.project.dao.ContentDao;
import com.project.dto.ContentDto;
import com.project.util.Command;

public class Mlist implements Command{

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		ContentDao dao = new ContentDao();
		ArrayList<ContentDto> dtos = dao.mlistDao();
		model.addAttribute("mlist", dtos);
	}

}
