package com.boot.security.server.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.security.server.dao.IpsDao;
import com.boot.security.server.dao.IpsInfoDao;
import com.boot.security.server.model.IpsEntity;
import com.boot.security.server.model.IpsInfoEntity;
import com.boot.security.server.service.IpsInfoService;
import com.boot.security.server.service.IpsService;

@Service
public class IpsServiceImpl implements IpsService {
	@Autowired
	private IpsDao ipsDao;
	@Override
	public void save(IpsEntity ips) {
		ipsDao.save(ips);
	}

}
