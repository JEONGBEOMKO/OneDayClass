package com.bit.mapper;

import org.apache.ibatis.annotations.Select;

public interface TimeMapper {

	@Select("SELECT now() FROM dual")
	public String getTime1();
	
	public String getTime2();
}
