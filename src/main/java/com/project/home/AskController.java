package com.project.home;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.ask.ListAsk;
import com.project.ask.SendAsk;
import com.project.util.Command;


@Controller
public class AskController {

	Command command;

	@RequestMapping("/ask")
	public String mail() {
		return "ask/ask";
	}

	@RequestMapping(method = RequestMethod.POST, value = "/askOk")
	public String sendMail(HttpServletRequest request, Model model) {
		
		 model.addAttribute("request",request);
		 
		 command = new SendAsk();
		 try {
			command.execute(model);
			
			return "ask/askOk";
		} catch (Exception e) {
			return "ask";
		}

		
	}
	
	@RequestMapping("/askList")
	public String askList(Model model) throws Exception {
		
		command = new ListAsk();
		command.execute(model);
		
		return "ask/askList";
	}
}
