package com.level.toon;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.level.toon.dao.CategoryDAO;
import com.level.toon.dao.ZzimDAO;
import com.level.toon.dto.LibraryDTO;
import com.level.toon.dto.ZzimDTO;

@Controller
public class ZzimController {
	@Autowired
	private SqlSessionTemplate sst;
	private ZzimDAO zdao;
	private CategoryDAO cdao;
	
	@RequestMapping(value="add_zzim")
	public @ResponseBody String Add_zzim(ZzimDTO zdto) {
		zdao = sst.getMapper(ZzimDAO.class);
		zdao.add_zzim(zdto);
		return "y";
	}
	
	@RequestMapping(value="remove_zzim")
	public @ResponseBody String Remove_zzim(ZzimDTO zdto) {
		zdao = sst.getMapper(ZzimDAO.class);
		zdao.remove_zzim(zdto);
		return "y";
	}
	
	@RequestMapping(value="/zzim")
	public String zzim(Model m, HttpSession s) {
		zdao = sst.getMapper(ZzimDAO.class);
		cdao = sst.getMapper(CategoryDAO.class);
		String member_num_str = s.getAttribute("member_num").toString();
		int member_num = Integer.parseInt(member_num_str);
		ArrayList<ZzimDTO> zlist = zdao.zzim_list(member_num);
		for(ZzimDTO zdto : zlist) {
			int cate_num = zdto.getCate_num();
			String cate_name = cdao.cate_name(cate_num);
			zdto.setCate_name(cate_name);
		}
		m.addAttribute("zlist", zlist);
		m.addAttribute("center", "zzim.jsp");
		return "main";
	}
}
