package com.boot.security.server.model;

import lombok.Data;

/**
* @author HF
* @version 创建时间：2019年11月11日 下午5:42:53
* 类说明
*/
@Data
public class IpsInfoEntity extends IpsEntity {

	private String sysname;
	private Integer state;
}
