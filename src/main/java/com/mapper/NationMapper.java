package com.mapper;

import com.entity.Nation;
//用户接口

public interface NationMapper {
	public Nation queryNationByName(String Cname);
	public int insert1(Nation nationAdded);
	public int delete1(String name);
	public int update1(Nation nationDeleted);
}
 