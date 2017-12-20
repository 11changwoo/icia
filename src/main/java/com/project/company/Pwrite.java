package com.project.company;

import java.io.File;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.project.dao.ContentDao;
import com.project.dto.ContentDto;
import com.project.util.Command;

public class Pwrite implements Command {

	@Override
	public void execute(Model model) throws Exception {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");

		MultipartHttpServletRequest mphsr = (MultipartHttpServletRequest) request;

		MultipartFile mfile = mphsr.getFile("pimg"); // 파일받아옴
		String filename = mfile.getOriginalFilename(); // 파일 이름 받아옴
		String newfilename = filename; // 저장될 파일이름
		String img = newfilename; // db에 파일이름 저장 위해
		String filepath = "C:\\iotwebservice\\workspace-sts\\project\\src\\main\\webapp\\cimg\\" + newfilename;// 파일 저장될 경로 + 파일이름
		
		File f = new File(filepath);
		mfile.transferTo(f);

		String pplace = request.getParameter("pplace");
		String pname = request.getParameter("pname");
		String proom = request.getParameter("proom");
		String pprice = request.getParameter("pprice");
		String ppersonnel_min = request.getParameter("ppersonnel_min");
		String ppersonnel_max = request.getParameter("ppersonnel_max");
		String pstart = request.getParameter("pstart");
		String pend = request.getParameter("pend");
		String pm = request.getParameter("pm");
//		String pimg = request.getParameter("pimg");
		String now = request.getParameter("now");
		
		 ContentDto dto =new ContentDto();
	      //dto 에 set - get 으로 보냄
	      dto.setPimg(img);
	      String dbimg = dto.getPimg();

		ContentDao dao = new ContentDao();
		dao.writeDao(pplace, pname, proom, pprice, ppersonnel_min, ppersonnel_max, pstart, pend, pm, dbimg, now);
	}

}
