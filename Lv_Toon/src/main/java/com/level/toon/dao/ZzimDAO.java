package com.level.toon.dao;

import java.util.ArrayList;

import com.level.toon.dto.ZzimDTO;

public interface ZzimDAO {
	public void add_zzim(ZzimDTO dto);
	public int ck_zzim(ZzimDTO dto);
	public void remove_zzim(ZzimDTO dto);
	public ArrayList<ZzimDTO> zzim_list(int member_num);
}
