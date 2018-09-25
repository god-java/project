package com.level.toon.dao;

import java.util.ArrayList;

import com.level.toon.dto.UseDTO;

public interface UseDAO {
	
	public int use_count(UseDTO udto);
	public int add_use(UseDTO udto);
	public ArrayList<UseDTO> use_list(int member_num);

}
