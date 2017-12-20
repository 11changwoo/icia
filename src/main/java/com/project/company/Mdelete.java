package com.project.company;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.project.dao.ContentDao;
import com.project.util.Command;

public class Mdelete implements Command{

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		String num = request.getParameter("num");
		
		ContentDao dao = new ContentDao();
		dao.mdeleteDao(num);
	}

}
