package com.level.toon.dao;

import java.util.ArrayList;

import com.level.toon.dto.ChargeDTO;

public interface ChargeDAO {
	
	public void add_charge(ChargeDTO cdto);
	public ArrayList<ChargeDTO> charge_list(int member_num);

}
