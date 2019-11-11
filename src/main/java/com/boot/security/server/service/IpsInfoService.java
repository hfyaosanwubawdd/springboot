package com.boot.security.server.service;

import java.util.List;

import com.boot.security.server.model.IpsInfoEntity;

public interface IpsInfoService {
	List<IpsInfoEntity> getBySysname();
}
