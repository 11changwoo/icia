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

public class Twrite implements Command {

	@Override
	public void execute(Model model) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");

		MultipartHttpServletRequest mphsr = (MultipartHttpServletRequest) request;

		MultipartFile mfile = mphsr.getFile("timg"); // ���Ϲ޾ƿ�
		String filename = mfile.getOriginalFilename(); // ���� �̸� �޾ƿ�
		String newfilename = filename; // ����� �����̸�
		String img = newfilename; // db�� �����̸� ���� ����
		String filepath = "C:\\iotwebservice\\workspace-sts\\project\\src\\main\\webapp\\cimg\\" + newfilename;// ���� �����+���

		File f = new File(filepath);
		mfile.transferTo(f);

		String tname = request.getParameter("tname");
		String tplace = request.getParameter("tplace");
		String tvehicle = request.getParameter("tvehicle");
		String tprice = request.getParameter("tprice");
		String tpersonnel_min = request.getParameter("tpersonnel_min");
		String tpersonnel_max = request.getParameter("tpersonnel_max");
		String tstart = request.getParameter("tstart");
		String tend = request.getParameter("tend");
		String tm = request.getParameter("tm");
		// String timg = request.getParameter("timg");
		String now = request.getParameter("now");

		ContentDto dto = new ContentDto();
		// dto �� set - get ���� ����
		dto.setTimg(img);
		String dbimg = dto.getTimg();

		ContentDao dao = new ContentDao();
		dao.twriteDao(tname, tplace, tvehicle, tprice, tpersonnel_min, tpersonnel_max, tstart, tend, tm, dbimg, now);
	}

}
