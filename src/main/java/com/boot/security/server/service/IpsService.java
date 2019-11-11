package com.boot.security.server.service;

import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

import com.boot.security.server.model.FileInfo;
import com.boot.security.server.model.IpsEntity;

public interface IpsService {

	void save(IpsEntity ips);

}
