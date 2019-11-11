package com.boot.security.server.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.boot.security.server.model.IpsInfoEntity;

/**
* @author HF
* @version 创建时间：2019年11月11日 下午5:39:16
* 类说明
*/
@Mapper
public interface IpsInfoDao {
	@Select("select * from s_properties where sysname = #{sysname}")
	IpsInfoEntity getBySysname(String sysname);
}
