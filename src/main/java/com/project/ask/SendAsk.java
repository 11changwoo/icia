package com.project.ask;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.project.dao.AskDAO;
import com.project.dto.AskVO;

public class SendAsk implements ACommand {
	
	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String content = request.getParameter("message");
		String category = request.getParameter("select_category");
		
		AskVO aVo = new AskVO();
		aVo.setName(name);
		aVo.setEmail(email);
		aVo.setContent(content);
		aVo.setCategory(category);
		
		AskDAO adao = new AskDAO();
		int result = adao.insertAsk(aVo);
		if(result == 1) {
			model.addAttribute("user_ask",name);
			System.out.println("문의 저장 완료");
		} else {
			System.out.println("문의 저장 실패");
		}
	}

}
