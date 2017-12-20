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

public class Mwrite implements Command{

	@Override
	public void execute(Model model) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		MultipartHttpServletRequest mphsr = (MultipartHttpServletRequest) request;

		MultipartFile mfile = mphsr.getFile("mimg"); // ���Ϲ޾ƿ�
		String filename = mfile.getOriginalFilename(); // ���� �̸� �޾ƿ�
		String newfilename = filename; // ����� �����̸�
		String img = newfilename; // db�� �����̸� ���� ����
		String filepath = "C:\\iotwebservice\\workspace-sts\\project\\src\\main\\webapp\\cimg\\" + newfilename;// ���� �����+���

		File f = new File(filepath);
		mfile.transferTo(f);
		
		String mplace = request.getParameter("mplace");
		String mname = request.getParameter("mname");
		String theater = request.getParameter("theater");
		String mpersonnel = request.getParameter("mpersonnel");
		String mstart = request.getParameter("mstart");
		String mend = request.getParameter("mend");
		String mm = request.getParameter("mm");
//		String mimg = request.getParameter("mimg");
		String now = request.getParameter("now");
		
		ContentDto dto = new ContentDto();
		// dto �� set - get ���� ����
		dto.setMimg(img);
		String dbimg = dto.getMimg();
		
		ContentDao dao = new ContentDao();
		dao.mwriteDao(mplace,mname,theater,mpersonnel,mstart,mend,mm,dbimg,now);
	}

}
