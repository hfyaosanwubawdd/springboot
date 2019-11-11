package com.boot.security.server.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.security.server.dao.IpsInfoDao;
import com.boot.security.server.model.IpsInfoEntity;
import com.boot.security.server.service.IpsInfoService;
import com.boot.security.server.utils.SysUtils;

import jxl.common.Logger;

@Service
public class IpsInfoServiceImpl implements IpsInfoService {
	
	private Logger LOGGER = Logger.getLogger(IpsInfoServiceImpl.class);
	@Autowired
	private IpsInfoDao ipsInfoDao;
	@Override
	public List<IpsInfoEntity> getBySysname() {
		List<IpsInfoEntity> bySysname = ipsInfoDao.getBySysname(SysUtils.getInetAddress().getHostName());
		for (int i = 0; i < bySysname.size(); i++) {
			LOGGER.info(bySysname.get(i).toString());
		}
		return bySysname;
	}

}
