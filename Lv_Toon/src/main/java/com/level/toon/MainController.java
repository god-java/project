package com.level.toon;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletResponse;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.level.toon.dao.DayDAO;
import com.level.toon.dao.EpisodeDAO;
import com.level.toon.dao.StarScoreDAO;
import com.level.toon.dao.ToonDAO;
import com.level.toon.dto.DayDTO;
import com.level.toon.dto.EpisodeDTO;
import com.level.toon.dto.ObjectDTO;
import com.level.toon.dto.ToonDTO;

@Controller
public class MainController {

	@Autowired
	private SqlSessionTemplate sst;
	private ToonDAO tdao;
	private EpisodeDAO edao;
	private StarScoreDAO ssdao;
	
	@RequestMapping(value="/main")
	public String main(Model m) {
		tdao = sst.getMapper(ToonDAO.class);
		ArrayList<ToonDTO> tlist = tdao.toon_list();
		
		edao = sst.getMapper(EpisodeDAO.class);
		ArrayList<ObjectDTO> rlist = tdao.recent_list(); 
		for(int i = 0;  i < rlist.size(); i++) {
			for (int j = 0; j < rlist.size(); j++) {
				if(i!=j) {
					if(rlist.get(i).getToon_num() == rlist.get(j).getToon_num()) {
						rlist.remove(j);
						i=0;
					}
				}            
	         }
		}
		
		for(int i = 0; i < rlist.size(); i++) {
			int ep_count = edao.total_ep_count(rlist.get(i).getToon_num());
			rlist.get(i).setEp_count(ep_count);
		}
		
		ArrayList<ObjectDTO> mlist = tdao.monthly_list();
		ArrayList<ObjectDTO> nlist = tdao.new_list();
		for(int i = 0; i < nlist.size(); i++) {
			String reg_date1 = nlist.get(i).getReg_date();
			String reg_date2 = reg_date1.substring(6, 10);
			String reg_date = reg_date2.replace('-', '/');
			nlist.get(i).setReg_date(reg_date);
		}
		
		ssdao = sst.getMapper(StarScoreDAO.class);
		SimpleDateFormat sdf = new SimpleDateFormat("E",Locale.KOREAN);
		Date date = new Date();
		String upload_day = sdf.format(date);
		ArrayList<ObjectDTO> drlist = tdao.day_rank(upload_day); // 요일 랭킹, 임시
		for(int i = 0; i < drlist.size(); i++) {
			int toon_num = drlist.get(i).getToon_num();
			if(ssdao.exist_star_score(toon_num) > 0) {
				float toon_star_rating = ssdao.avg_star_score(toon_num);
				drlist.get(i).setToon_star_rating(toon_star_rating);				
			} else {
				drlist.get(i).setToon_star_rating(0);
			}
		}
		
		Collections.sort(drlist, new CompareSeqDesc());		
		ObjectDTO odto = new ObjectDTO();
		if(drlist.size() > 0) { // 1위
			odto = drlist.get(0);
		}		
		
		ArrayList<ObjectDTO> trlist = tdao.tr_list();
		for(int i = 0; i < trlist.size(); i++) {
			String reg_date1 = trlist.get(i).getReg_date();
			String reg_date2 = reg_date1.substring(6, 10);
			String reg_date = reg_date2.replace('-', '/');
			trlist.get(i).setReg_date(reg_date);
		}
		
		ArrayList<ObjectDTO> tflist = tdao.tf_list();
		for(int i = 0; i < tflist.size(); i++) {
			String reg_date1 = tflist.get(i).getReg_date();
			String reg_date2 = reg_date1.substring(6, 10);
			String reg_date = reg_date2.replace('-', '/');
			tflist.get(i).setReg_date(reg_date);
		}
		
		ArrayList<ObjectDTO> talist = tdao.ta_list();
		for(int i = 0; i < talist.size(); i++) {
			String reg_date1 = talist.get(i).getReg_date();
			String reg_date2 = reg_date1.substring(6, 10);
			String reg_date = reg_date2.replace('-', '/');
			talist.get(i).setReg_date(reg_date);
		}
		
		m.addAttribute("tlist", tlist);
		m.addAttribute("rlist", rlist);
		m.addAttribute("mlist", mlist);
		m.addAttribute("nlist", nlist);
		m.addAttribute("drlist", drlist);
		m.addAttribute("trlist", trlist);
		m.addAttribute("talist", talist);
		m.addAttribute("tflist", tflist);
		m.addAttribute("odto", odto);
		m.addAttribute("center", "center.jsp");
		return "main";
	}
	
	@RequestMapping(value="/today_info")							
	public void today_info(HttpServletResponse resp) {
		SimpleDateFormat sdf = new SimpleDateFormat("E",Locale.KOREAN);
		Date date = new Date();
		String today = sdf.format(date);
		try {
			resp.getWriter().print(today);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	static class CompareSeqDesc implements Comparator<ObjectDTO>{
		@Override
		public int compare(ObjectDTO o1, ObjectDTO o2) {
			return o1.getToon_star_rating() > o2.getToon_star_rating() ? -1 : o1.getToon_star_rating() < o2.getToon_star_rating() ? 1:0;
		}        
    }
}
