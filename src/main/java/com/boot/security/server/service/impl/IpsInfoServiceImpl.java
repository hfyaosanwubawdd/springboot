package com.boot.security.server.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.security.server.dao.IpsInfoDao;
import com.boot.security.server.model.Constant;
import com.boot.security.server.model.IpsInfoEntity;
import com.boot.security.server.service.IpsInfoService;
import com.boot.security.server.utils.SysUtils;

import io.netty.util.internal.StringUtil;
import jxl.common.Logger;

@Service
public class IpsInfoServiceImpl implements IpsInfoService {
	
	private Logger LOGGER = Logger.getLogger(IpsInfoServiceImpl.class);
	@Autowired
	private IpsInfoDao ipsInfoDao;
	@Override
	public List<IpsInfoEntity> getBySysname() {
		if (Constant.IPS_SPIDER_STATE != 1) {
			return null;
		}
		String ip = "";
		String[] split;
		Constant.IPS_SPIDER_STATE = 2;
		List<IpsInfoEntity> bySysname = ipsInfoDao.getBySysname(SysUtils.getInetAddress().getHostName());
		for (int i = 0; i < bySysname.size(); i++) {
			ip = bySysname.get(i).getIp();
			if (!StringUtil.isNullOrEmpty(ip)) {
				split = ip.split(".");
				for (int j = 0; j < split.length; j++) {
					System.out.println(split[i]);
				}
			}
		}
		return bySysname;
	}

}
