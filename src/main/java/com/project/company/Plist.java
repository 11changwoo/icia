package com.project.company;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.project.dao.ContentDao;
import com.project.dto.ContentDto;
import com.project.util.Command;

public class Plist implements Command{

	@Override
	public void execute(Model model) {
		ContentDao dao = new ContentDao();
		ArrayList<ContentDto> dtos = dao.listDao();
		model.addAttribute("list", dtos);
	}

}
