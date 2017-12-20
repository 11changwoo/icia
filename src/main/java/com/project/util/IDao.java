package com.project.util;

import java.util.ArrayList;

import com.project.dto.ContentDto;
import com.project.dto.ContentDto2;

public interface IDao {
	public ArrayList<ContentDto> listDao();
	public ContentDto viewDao(String strID);
	public void deleteDao(String num);
	ArrayList<ContentDto> writeDao(String pplace, String pname, String proom, String pprice, String ppersonnel_min,
			String ppersonnel_max, String pstart, String pend, String pm, String pimg, String now);

	//==================================================
	public ArrayList<ContentDto> tlistDao();	
	public ContentDto tviewDao(String strID);
	public void tdeleteDao(String tname);	
	void twriteDao(String tname, String tplace, String tvehicle, String tprice, String tpersonnel_min,
			String tpersonnel_max, String tstart, String tend, String tm, String timg, String now);
	//==================================================
	public ArrayList<ContentDto> mlistDao();	
	public ContentDto mviewDao(String strID);
	public void mdeleteDao(String mname);	
	ArrayList<ContentDto> mwriteDao(String mplace, String mname, String theater, String mpersonnel, String mstart,
			String mend, String mm, String mimg, String now);
	//==================================================
	ArrayList<ContentDto2> mypage(String strID);
	ArrayList<ContentDto2> booklist(String strID);
	ArrayList<ContentDto2> booklist2(String strID);
	ArrayList<ContentDto2> booklist3(String strID);
	
}