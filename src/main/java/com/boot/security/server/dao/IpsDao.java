package com.boot.security.server.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import com.boot.security.server.model.IpsEntity;

/**
* @author HF
* @version 创建时间：2019年11月11日 下午5:39:16
* 类说明
*/
@Mapper
public interface IpsDao {
	@Insert("insert into t_ips(ip,port) values(#{ip}, #{port})")
	void save(IpsEntity ips);
}
