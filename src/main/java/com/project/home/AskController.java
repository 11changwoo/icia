package com.project.home;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.ask.ACommand;
import com.project.ask.SendAsk;


@Controller
public class AskController {

	ACommand command;

	@RequestMapping("/ask")
	public String mail() {
		return "ask/ask";
	}

	@RequestMapping(method = RequestMethod.POST, value = "/askOk")
	public String sendMail(HttpServletRequest request, Model model) {
		
		 model.addAttribute("request",request);
		 
		 command = new SendAsk();
		 command.execute(model);

		return "ask/askOk";
	}
}
