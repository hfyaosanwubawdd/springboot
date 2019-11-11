package com.boot.security.server.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.security.server.dao.IpsInfoDao;
import com.boot.security.server.model.IpsInfoEntity;
import com.boot.security.server.service.IpsInfoService;

@Service
public class IpsInfoServiceImpl implements IpsInfoService {
	@Autowired
	private IpsInfoDao ipsInfoDao;
	@Override
	public IpsInfoEntity getBySysname(String sysname) {
		return ipsInfoDao.getBySysname(sysname);
	}

}
