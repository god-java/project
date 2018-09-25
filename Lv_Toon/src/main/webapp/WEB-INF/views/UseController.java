package com.level.toon;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.level.toon.dao.UseDAO;
import com.level.toon.dto.UseDTO;

@Controller
public class UseController {

	@Autowired
	private SqlSessionTemplate sst;
	private UseDAO udao;
	
	
	@RequestMapping(value="/find_use")
	public void fine_use(UseDTO udto,HttpServletResponse resp) {
		udao = sst.getMapper(UseDAO.class);
		int count = udao.use_count(udto);
		try {
			resp.getWriter().print(count);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	@RequestMapping(value="/use_list")
	public String use_list(Model m, HttpSession s) {
		udao = sst.getMapper(UseDAO.class);
		String s_member_num = s.getAttribute("member_num").toString();
		int member_num = Integer.parseInt(s_member_num);
		ArrayList<UseDTO> ulist = udao.use_list(member_num);
		m.addAttribute("ulist", ulist);
		m.addAttribute("center", "use_list.jsp");
		return "main";
	}
}
