package com.boot.security.server.service;

import com.boot.security.server.model.IpsInfoEntity;

public interface IpsInfoService {
	IpsInfoEntity getBySysname(String sysname);
}
