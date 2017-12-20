package com.project.company;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.project.dao.ContentDao;
import com.project.util.Command;

public class Pdelete implements Command{

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		String num = request.getParameter("num");
		
		ContentDao dao = new ContentDao();
		dao.deleteDao(num);
	}

}
