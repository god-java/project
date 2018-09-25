package com.level.toon;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.level.toon.dao.ChargeDAO;
import com.level.toon.dto.ChargeDTO;

@Controller
public class ChargeController {

	@Autowired
	private SqlSessionTemplate sst;
	private ChargeDAO chdao;
	
	@RequestMapping(value="/charge_list")
	public String charge_list(Model m, HttpSession s) {
		chdao = sst.getMapper(ChargeDAO.class);
		String s_member_num = s.getAttribute("member_num").toString();
		int member_num = Integer.parseInt(s_member_num);
		ArrayList<ChargeDTO> chlist = chdao.charge_list(member_num);
		m.addAttribute("chlist", chlist);
		m.addAttribute("center", "charge_list.jsp");
		return "main";
	}
}
