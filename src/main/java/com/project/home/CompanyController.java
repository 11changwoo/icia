package com.project.home;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.company.Mdelete;
import com.project.company.Mlist;
import com.project.company.Mwrite;
import com.project.company.Pdelete;
import com.project.company.Plist;
import com.project.company.Pwrite;
import com.project.company.Tdelete;
import com.project.company.Tlist;
import com.project.company.Twrite;
import com.project.util.Command;

@Controller
public class CompanyController {
	Command command;
	
	//업체 - 펜션 등록
	@RequestMapping("/plist")
	public String list(Model model) throws Exception {
		
		command = new Plist();
		command.execute(model);

		return "company/plist";
	}

	@RequestMapping("/pwriteForm")
	public String writeForm() {
		return "company/pwriteForm";
	}

	@RequestMapping("/pwrite")
	public String write(HttpServletRequest request, Model model) throws Exception {
		
		model.addAttribute("request",request);
		command = new Pwrite();
		command.execute(model);
		
		return "redirect:plist";
	}
	
	@RequestMapping("/pdelete")
	public String delete(HttpServletRequest request, Model model) throws Exception {
		
		model.addAttribute("request",request);
		command = new Pdelete();
		command.execute(model);
		
		return "redirect:plist";
	}
	
	//업체 - 여행 등록
	@RequestMapping("/tlist")
	public String tlist(Model model) throws Exception {
		
		command = new Tlist();
		command.execute(model);
		
		return "company/tlist";
	}

	@RequestMapping("/twriteForm")
	public String twriteForm() {
		return "company/twriteForm";
	}

	@RequestMapping("/twrite")
	public String twrite(HttpServletRequest request, Model model) throws Exception {
		
		model.addAttribute("request",request);
		command = new Twrite();
		command.execute(model);
		
		return "redirect:tlist";
	}

	@RequestMapping("/tdelete")
	public String tdelete(HttpServletRequest request, Model model) throws Exception {
		
		model.addAttribute("request",request);
		command = new Tdelete();
		command.execute(model);
		
		return "redirect: tlist";
	}
	
	//업체 - 영화 등록
	@RequestMapping("/mlist")
	public String mlist(Model model) throws Exception {
		
		command = new Mlist();
		command.execute(model);
		
		return "company/mlist";
	}

	@RequestMapping("/mwriteForm")
	public String mwriteForm() {
		return "company/mwriteForm";
	}

	@RequestMapping("/mwrite")
	public String mwrite(HttpServletRequest request, Model model) throws Exception {
		
		model.addAttribute("request",request);
		command = new Mwrite();
		command.execute(model);
		
		return "redirect:mlist";
	}

	@RequestMapping("/mdelete")
	public String mdelete(HttpServletRequest request, Model model) throws Exception {
		
		model.addAttribute("request",request);
		command = new Mdelete();
		command.execute(model);
		
		return "redirect: mlist";
	}
}
