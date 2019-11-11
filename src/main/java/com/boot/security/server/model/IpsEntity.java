package com.boot.security.server.model;

import lombok.Data;

/**
* @author HF
* @version 创建时间：2019年11月11日 下午5:44:12
* 类说明
*/
@Data
public class IpsEntity extends BaseEntity<Integer> {

	private String ip;
	private Integer port;
}
