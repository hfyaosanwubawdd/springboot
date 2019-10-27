2019-10-26 12:39:39,122 [http-nio-8080-exec-9] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-10-26 12:39:39,134 [http-nio-8080-exec-9] ==> Parameters: admin(String)
2019-10-26 12:39:39,237 [http-nio-8080-exec-9] <==      Total: 1
2019-10-26 12:39:39,295 [http-nio-8080-exec-9] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-10-26 12:39:39,298 [http-nio-8080-exec-9] ==> Parameters: 1(Long)
2019-10-26 12:39:39,366 [http-nio-8080-exec-9] <==      Total: 39
2019-10-26 12:39:39,603 [taskExecutor-1] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-10-26 12:39:39,614 [taskExecutor-1] ==> Parameters: 1(Long), 登陆(String), true(Boolean), null
2019-10-26 12:39:39,806 [taskExecutor-1] <==    Updates: 1
2019-10-26 12:39:39,974 [http-nio-8080-exec-2] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2019-10-26 12:39:39,976 [http-nio-8080-exec-2] ==> Parameters: 1(Long)
2019-10-26 12:39:40,027 [http-nio-8080-exec-2] <==      Total: 1
2019-10-26 12:39:44,131 [http-nio-8080-exec-5] ==>  Preparing: select * from t_dict t where t.type = ? 
2019-10-26 12:39:44,132 [http-nio-8080-exec-5] ==> Parameters: userStatus(String)
2019-10-26 12:39:44,195 [http-nio-8080-exec-5] <==      Total: 3
2019-10-26 12:39:44,427 [http-nio-8080-exec-2] ==>  Preparing: select count(1) from sys_user t 
2019-10-26 12:39:44,428 [http-nio-8080-exec-2] ==> Parameters: 
2019-10-26 12:39:44,478 [http-nio-8080-exec-2] <==      Total: 1
2019-10-26 12:39:44,559 [http-nio-8080-exec-2] ==>  Preparing: select * from sys_user t order by username desc, nickname asc limit ?, ? 
2019-10-26 12:39:44,561 [http-nio-8080-exec-2] ==> Parameters: 0(Integer), 10(Integer)
2019-10-26 12:39:44,611 [http-nio-8080-exec-2] <==      Total: 2
2019-10-26 12:39:47,470 [http-nio-8080-exec-4] ==>  Preparing: select * from sys_permission t order by t.sort 
2019-10-26 12:39:47,472 [http-nio-8080-exec-4] ==> Parameters: 
2019-10-26 12:39:47,526 [http-nio-8080-exec-4] <==      Total: 39
2019-10-26 12:39:49,269 [http-nio-8080-exec-9] ==>  Preparing: select count(1) from sys_role t 
2019-10-26 12:39:49,271 [http-nio-8080-exec-9] ==> Parameters: 
2019-10-26 12:39:49,318 [http-nio-8080-exec-9] <==      Total: 1
2019-10-26 12:39:49,366 [http-nio-8080-exec-9] ==>  Preparing: select * from sys_role t order by updateTime desc limit ?, ? 
2019-10-26 12:39:49,367 [http-nio-8080-exec-9] ==> Parameters: 0(Integer), 10(Integer)
2019-10-26 12:39:49,416 [http-nio-8080-exec-9] <==      Total: 2
2019-10-26 12:39:50,823 [http-nio-8080-exec-8] ==>  Preparing: select count(1) from file_info t 
2019-10-26 12:39:50,824 [http-nio-8080-exec-8] ==> Parameters: 
2019-10-26 12:39:50,879 [http-nio-8080-exec-8] <==      Total: 1
2019-10-26 12:40:00,537 [taskExecutor-2] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-10-26 12:40:00,538 [taskExecutor-2] ==> Parameters: 1(Long), 退出(String), true(Boolean), null
2019-10-26 12:40:00,660 [taskExecutor-2] <==    Updates: 1
2019-10-26 12:40:06,561 [http-nio-8080-exec-6] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-10-26 12:40:06,562 [http-nio-8080-exec-6] ==> Parameters: user(String)
2019-10-26 12:40:06,615 [http-nio-8080-exec-6] <==      Total: 1
2019-10-26 12:40:06,662 [http-nio-8080-exec-6] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-10-26 12:40:06,663 [http-nio-8080-exec-6] ==> Parameters: 2(Long)
2019-10-26 12:40:06,716 [http-nio-8080-exec-6] <==      Total: 28
2019-10-26 12:40:06,910 [taskExecutor-3] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-10-26 12:40:06,911 [taskExecutor-3] ==> Parameters: 2(Long), 登陆(String), true(Boolean), null
2019-10-26 12:40:07,108 [taskExecutor-3] <==    Updates: 1
2019-10-26 12:40:07,141 [http-nio-8080-exec-8] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2019-10-26 12:40:07,142 [http-nio-8080-exec-8] ==> Parameters: 2(Long)
2019-10-26 12:40:07,189 [http-nio-8080-exec-8] <==      Total: 1
2019-10-26 12:40:17,181 [http-nio-8080-exec-1] ==>  Preparing: select count(1) from sys_role t 
2019-10-26 12:40:17,182 [http-nio-8080-exec-1] ==> Parameters: 
2019-10-26 12:40:17,284 [http-nio-8080-exec-1] <==      Total: 1
2019-10-26 12:40:17,330 [http-nio-8080-exec-1] ==>  Preparing: select * from sys_role t order by updateTime desc limit ?, ? 
2019-10-26 12:40:17,331 [http-nio-8080-exec-1] ==> Parameters: 0(Integer), 10(Integer)
2019-10-26 12:40:17,378 [http-nio-8080-exec-1] <==      Total: 2
2019-10-26 12:40:22,230 [http-nio-8080-exec-9] ==>  Preparing: select * from sys_permission t order by t.sort 
2019-10-26 12:40:22,230 [http-nio-8080-exec-9] ==> Parameters: 
2019-10-26 12:40:22,448 [http-nio-8080-exec-9] <==      Total: 39
2019-10-26 12:40:22,564 [http-nio-8080-exec-3] ==>  Preparing: select * from sys_role t where t.id = ? 
2019-10-26 12:40:22,565 [http-nio-8080-exec-3] ==> Parameters: 2(Long)
2019-10-26 12:40:22,612 [http-nio-8080-exec-3] <==      Total: 1
2019-10-26 12:40:22,701 [http-nio-8080-exec-6] ==>  Preparing: select p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId where rp.roleId = ? order by p.sort 
2019-10-26 12:40:22,702 [http-nio-8080-exec-6] ==> Parameters: 2(Long)
2019-10-26 12:40:22,757 [http-nio-8080-exec-6] <==      Total: 28
2019-10-26 12:40:36,390 [taskExecutor-4] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-10-26 12:40:36,391 [taskExecutor-4] ==> Parameters: 2(Long), 退出(String), true(Boolean), null
2019-10-26 12:40:36,488 [taskExecutor-4] <==    Updates: 1
2019-10-26 12:40:39,216 [http-nio-8080-exec-5] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-10-26 12:40:39,217 [http-nio-8080-exec-5] ==> Parameters: admin(String)
2019-10-26 12:40:39,265 [http-nio-8080-exec-5] <==      Total: 1
2019-10-26 12:40:39,313 [http-nio-8080-exec-5] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-10-26 12:40:39,314 [http-nio-8080-exec-5] ==> Parameters: 1(Long)
2019-10-26 12:40:39,367 [http-nio-8080-exec-5] <==      Total: 39
2019-10-26 12:40:39,556 [taskExecutor-5] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-10-26 12:40:39,557 [taskExecutor-5] ==> Parameters: 1(Long), 登陆(String), true(Boolean), null
2019-10-26 12:40:39,678 [taskExecutor-5] <==    Updates: 1
2019-10-26 12:40:39,798 [http-nio-8080-exec-1] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2019-10-26 12:40:39,799 [http-nio-8080-exec-1] ==> Parameters: 1(Long)
2019-10-26 12:40:39,845 [http-nio-8080-exec-1] <==      Total: 1
2019-10-26 12:40:46,184 [http-nio-8080-exec-4] ==>  Preparing: select count(1) from sys_role t 
2019-10-26 12:40:46,185 [http-nio-8080-exec-4] ==> Parameters: 
2019-10-26 12:40:46,278 [http-nio-8080-exec-4] <==      Total: 1
2019-10-26 12:40:46,325 [http-nio-8080-exec-4] ==>  Preparing: select * from sys_role t order by updateTime desc limit ?, ? 
2019-10-26 12:40:46,326 [http-nio-8080-exec-4] ==> Parameters: 0(Integer), 10(Integer)
2019-10-26 12:40:46,374 [http-nio-8080-exec-4] <==      Total: 2
2019-10-26 12:40:48,411 [http-nio-8080-exec-5] ==>  Preparing: select * from sys_permission t order by t.sort 
2019-10-26 12:40:48,412 [http-nio-8080-exec-5] ==> Parameters: 
2019-10-26 12:40:48,461 [http-nio-8080-exec-5] <==      Total: 39
2019-10-26 12:40:48,566 [http-nio-8080-exec-7] ==>  Preparing: select * from sys_role t where t.id = ? 
2019-10-26 12:40:48,567 [http-nio-8080-exec-7] ==> Parameters: 2(Long)
2019-10-26 12:40:48,616 [http-nio-8080-exec-7] <==      Total: 1
2019-10-26 12:40:48,707 [http-nio-8080-exec-8] ==>  Preparing: select p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId where rp.roleId = ? order by p.sort 
2019-10-26 12:40:48,708 [http-nio-8080-exec-8] ==> Parameters: 2(Long)
2019-10-26 12:40:48,756 [http-nio-8080-exec-8] <==      Total: 28
2019-10-26 12:41:20,306 [http-nio-8080-exec-9] ==>  Preparing: select * from sys_role t where t.name = ? 
2019-10-26 12:41:20,307 [http-nio-8080-exec-9] ==> Parameters: USER(String)
2019-10-26 12:41:20,354 [http-nio-8080-exec-9] <==      Total: 1
2019-10-26 12:41:20,355 [http-nio-8080-exec-9] ==>  Preparing: update sys_role t set t.name = ?, t.description = ?, updateTime = now() where t.id = ? 
2019-10-26 12:41:20,357 [http-nio-8080-exec-9] ==> Parameters: USER(String), (String), 2(Long)
2019-10-26 12:41:20,467 [http-nio-8080-exec-9] <==    Updates: 1
2019-10-26 12:41:20,467 [http-nio-8080-exec-9] ==>  Preparing: delete from sys_role_permission where roleId = ? 
2019-10-26 12:41:20,469 [http-nio-8080-exec-9] ==> Parameters: 2(Long)
2019-10-26 12:41:20,598 [http-nio-8080-exec-9] <==    Updates: 28
2019-10-26 12:41:20,602 [http-nio-8080-exec-9] ==>  Preparing: insert into sys_role_permission(roleId, permissionId) values (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) 
2019-10-26 12:41:20,603 [http-nio-8080-exec-9] ==> Parameters: 2(Long), 1(Long), 2(Long), 2(Long), 2(Long), 3(Long), 2(Long), 7(Long), 2(Long), 8(Long), 2(Long), 9(Long), 2(Long), 12(Long), 2(Long), 13(Long), 2(Long), 16(Long), 2(Long), 17(Long), 2(Long), 19(Long), 2(Long), 20(Long), 2(Long), 22(Long), 2(Long), 23(Long), 2(Long), 30(Long), 2(Long), 31(Long), 2(Long), 34(Long), 2(Long), 36(Long), 2(Long), 37(Long), 2(Long), 38(Long)
2019-10-26 12:41:20,712 [http-nio-8080-exec-9] <==    Updates: 20
2019-10-26 12:41:20,917 [taskExecutor-6] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-10-26 12:41:20,919 [taskExecutor-6] ==> Parameters: 1(Long), 保存角色(String), true(Boolean), null
2019-10-26 12:41:21,156 [taskExecutor-6] <==    Updates: 1
2019-10-26 12:41:22,384 [http-nio-8080-exec-3] ==>  Preparing: select count(1) from sys_role t 
2019-10-26 12:41:22,385 [http-nio-8080-exec-3] ==> Parameters: 
2019-10-26 12:41:22,431 [http-nio-8080-exec-3] <==      Total: 1
2019-10-26 12:41:22,479 [http-nio-8080-exec-3] ==>  Preparing: select * from sys_role t order by updateTime desc limit ?, ? 
2019-10-26 12:41:22,480 [http-nio-8080-exec-3] ==> Parameters: 0(Integer), 10(Integer)
2019-10-26 12:41:22,527 [http-nio-8080-exec-3] <==      Total: 2
2019-10-26 12:41:31,224 [taskExecutor-7] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-10-26 12:41:31,225 [taskExecutor-7] ==> Parameters: 1(Long), 退出(String), true(Boolean), null
2019-10-26 12:41:31,336 [taskExecutor-7] <==    Updates: 1
2019-10-26 12:41:33,929 [http-nio-8080-exec-5] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-10-26 12:41:33,929 [http-nio-8080-exec-5] ==> Parameters: user(String)
2019-10-26 12:41:34,023 [http-nio-8080-exec-5] <==      Total: 1
2019-10-26 12:41:34,071 [http-nio-8080-exec-5] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-10-26 12:41:34,071 [http-nio-8080-exec-5] ==> Parameters: 2(Long)
2019-10-26 12:41:34,121 [http-nio-8080-exec-5] <==      Total: 20
2019-10-26 12:41:34,305 [taskExecutor-8] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-10-26 12:41:34,306 [taskExecutor-8] ==> Parameters: 2(Long), 登陆(String), true(Boolean), null
2019-10-26 12:41:34,405 [taskExecutor-8] <==    Updates: 1
2019-10-26 12:41:34,548 [http-nio-8080-exec-7] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2019-10-26 12:41:34,549 [http-nio-8080-exec-7] ==> Parameters: 2(Long)
2019-10-26 12:41:34,597 [http-nio-8080-exec-7] <==      Total: 1
2019-10-26 12:41:38,925 [http-nio-8080-exec-4] ==>  Preparing: select * from sys_permission t order by t.sort 
2019-10-26 12:41:38,925 [http-nio-8080-exec-4] ==> Parameters: 
2019-10-26 12:41:38,973 [http-nio-8080-exec-4] <==      Total: 39
2019-10-26 12:41:41,695 [http-nio-8080-exec-3] ==>  Preparing: select count(1) from sys_role t 
2019-10-26 12:41:41,696 [http-nio-8080-exec-3] ==> Parameters: 
2019-10-26 12:41:41,744 [http-nio-8080-exec-3] <==      Total: 1
2019-10-26 12:41:41,791 [http-nio-8080-exec-3] ==>  Preparing: select * from sys_role t order by updateTime desc limit ?, ? 
2019-10-26 12:41:41,791 [http-nio-8080-exec-3] ==> Parameters: 0(Integer), 10(Integer)
2019-10-26 12:41:41,843 [http-nio-8080-exec-3] <==      Total: 2
2019-10-26 12:41:43,412 [http-nio-8080-exec-3] ==>  Preparing: select count(1) from file_info t 
2019-10-26 12:41:43,413 [http-nio-8080-exec-3] ==> Parameters: 
2019-10-26 12:41:43,459 [http-nio-8080-exec-3] <==      Total: 1
2019-10-26 12:41:48,533 [http-nio-8080-exec-7] ==>  Preparing: select * from file_info t where t.id = ? 
2019-10-26 12:41:48,535 [http-nio-8080-exec-7] ==> Parameters: 32563353ccfea9ef4ef302b9e3655687(String)
2019-10-26 12:41:48,581 [http-nio-8080-exec-7] <==      Total: 0
2019-10-26 12:41:48,642 [http-nio-8080-exec-7] ==>  Preparing: insert into file_info(id, contentType, size, path, url, type, createTime, updateTime) values(?, ?, ?, ?, ?, ?, now(), now()) 
2019-10-26 12:41:48,644 [http-nio-8080-exec-7] ==> Parameters: 32563353ccfea9ef4ef302b9e3655687(String), application/octet-stream(String), 104446(Long), d:/files/2019/10/26/32563353ccfea9ef4ef302b9e3655687.sql(String), /2019/10/26/32563353ccfea9ef4ef302b9e3655687.sql(String), 0(Integer)
2019-10-26 12:41:48,756 [http-nio-8080-exec-7] <==    Updates: 1
2019-10-26 12:41:48,803 [taskExecutor-9] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-10-26 12:41:48,804 [taskExecutor-9] ==> Parameters: 2(Long), 文件上传(String), true(Boolean), null
2019-10-26 12:41:48,878 [http-nio-8080-exec-5] ==>  Preparing: select count(1) from file_info t 
2019-10-26 12:41:48,879 [http-nio-8080-exec-5] ==> Parameters: 
2019-10-26 12:41:48,908 [taskExecutor-9] <==    Updates: 1
2019-10-26 12:41:48,925 [http-nio-8080-exec-5] <==      Total: 1
2019-10-26 12:41:48,974 [http-nio-8080-exec-5] ==>  Preparing: select * from file_info t order by updateTime desc limit ?, ? 
2019-10-26 12:41:48,975 [http-nio-8080-exec-5] ==> Parameters: 0(Integer), 10(Integer)
2019-10-26 12:41:49,023 [http-nio-8080-exec-5] <==      Total: 1
2019-10-26 12:42:23,720 [http-nio-8080-exec-9] ==>  Preparing: select * from t_dict t where t.type = ? 
2019-10-26 12:42:23,721 [http-nio-8080-exec-9] ==> Parameters: noticeStatus(String)
2019-10-26 12:42:23,818 [http-nio-8080-exec-9] <==      Total: 2
2019-10-26 12:42:23,977 [http-nio-8080-exec-4] ==>  Preparing: select count(1) from t_notice t 
2019-10-26 12:42:23,978 [http-nio-8080-exec-4] ==> Parameters: 
2019-10-26 12:42:24,026 [http-nio-8080-exec-4] <==      Total: 1
2019-10-26 12:42:27,502 [http-nio-8080-exec-2] ==>  Preparing: select count(1) from t_job t 
2019-10-26 12:42:27,503 [http-nio-8080-exec-2] ==> Parameters: 
2019-10-26 12:42:27,554 [http-nio-8080-exec-2] <==      Total: 1
2019-10-26 12:42:33,028 [taskExecutor-10] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-10-26 12:42:33,028 [taskExecutor-10] ==> Parameters: 2(Long), 根据sql在页面显示结果(String), true(Boolean), null
2019-10-26 12:42:33,134 [taskExecutor-10] <==    Updates: 1
2019-10-26 12:42:40,852 [http-nio-8080-exec-1] ==>  Preparing: select count(1) from t_dict t 
2019-10-26 12:42:40,853 [http-nio-8080-exec-1] ==> Parameters: 
2019-10-26 12:42:40,899 [http-nio-8080-exec-1] <==      Total: 1
2019-10-26 12:42:40,947 [http-nio-8080-exec-1] ==>  Preparing: select * from t_dict t order by id asc limit ?, ? 
2019-10-26 12:42:40,949 [http-nio-8080-exec-1] ==> Parameters: 0(Integer), 10(Integer)
2019-10-26 12:42:40,997 [http-nio-8080-exec-1] <==      Total: 9
2019-10-26 12:42:50,854 [http-nio-8080-exec-4] ==>  Preparing: select count(1) from file_info t 
2019-10-26 12:42:50,854 [http-nio-8080-exec-4] ==> Parameters: 
2019-10-26 12:42:50,948 [http-nio-8080-exec-4] <==      Total: 1
2019-10-26 12:42:50,996 [http-nio-8080-exec-4] ==>  Preparing: select * from file_info t order by path asc limit ?, ? 
2019-10-26 12:42:50,997 [http-nio-8080-exec-4] ==> Parameters: 0(Integer), 10(Integer)
2019-10-26 12:42:51,045 [http-nio-8080-exec-4] <==      Total: 1
2019-10-26 12:42:51,844 [http-nio-8080-exec-8] ==>  Preparing: select count(1) from file_info t 
2019-10-26 12:42:51,845 [http-nio-8080-exec-8] ==> Parameters: 
2019-10-26 12:42:51,892 [http-nio-8080-exec-8] <==      Total: 1
2019-10-26 12:42:51,940 [http-nio-8080-exec-8] ==>  Preparing: select * from file_info t order by path desc limit ?, ? 
2019-10-26 12:42:51,941 [http-nio-8080-exec-8] ==> Parameters: 0(Integer), 10(Integer)
2019-10-26 12:42:51,989 [http-nio-8080-exec-8] <==      Total: 1
2019-10-26 12:42:54,682 [taskExecutor-11] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-10-26 12:42:54,682 [taskExecutor-11] ==> Parameters: 2(Long), 退出(String), true(Boolean), null
2019-10-26 12:42:54,784 [taskExecutor-11] <==    Updates: 1
2019-10-26 12:42:58,919 [http-nio-8080-exec-10] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-10-26 12:42:58,920 [http-nio-8080-exec-10] ==> Parameters: admin(String)
2019-10-26 12:42:58,969 [http-nio-8080-exec-10] <==      Total: 1
2019-10-26 12:42:59,015 [http-nio-8080-exec-10] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-10-26 12:42:59,016 [http-nio-8080-exec-10] ==> Parameters: 1(Long)
2019-10-26 12:42:59,067 [http-nio-8080-exec-10] <==      Total: 39
2019-10-26 12:42:59,257 [taskExecutor-12] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-10-26 12:42:59,258 [taskExecutor-12] ==> Parameters: 1(Long), 登陆(String), true(Boolean), null
2019-10-26 12:42:59,354 [taskExecutor-12] <==    Updates: 1
2019-10-26 12:42:59,504 [http-nio-8080-exec-8] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2019-10-26 12:42:59,504 [http-nio-8080-exec-8] ==> Parameters: 1(Long)
2019-10-26 12:42:59,553 [http-nio-8080-exec-8] <==      Total: 1
2019-10-26 12:43:03,524 [http-nio-8080-exec-3] ==>  Preparing: select count(1) from sys_role t 
2019-10-26 12:43:03,525 [http-nio-8080-exec-3] ==> Parameters: 
2019-10-26 12:43:03,573 [http-nio-8080-exec-3] <==      Total: 1
2019-10-26 12:43:03,622 [http-nio-8080-exec-3] ==>  Preparing: select * from sys_role t order by updateTime desc limit ?, ? 
2019-10-26 12:43:03,623 [http-nio-8080-exec-3] ==> Parameters: 0(Integer), 10(Integer)
2019-10-26 12:43:03,674 [http-nio-8080-exec-3] <==      Total: 2
2019-10-26 12:43:05,611 [http-nio-8080-exec-9] ==>  Preparing: select * from sys_permission t order by t.sort 
2019-10-26 12:43:05,612 [http-nio-8080-exec-9] ==> Parameters: 
2019-10-26 12:43:05,662 [http-nio-8080-exec-9] <==      Total: 39
2019-10-26 12:43:05,762 [http-nio-8080-exec-10] ==>  Preparing: select * from sys_role t where t.id = ? 
2019-10-26 12:43:05,763 [http-nio-8080-exec-10] ==> Parameters: 2(Long)
2019-10-26 12:43:05,810 [http-nio-8080-exec-10] <==      Total: 1
2019-10-26 12:43:05,901 [http-nio-8080-exec-7] ==>  Preparing: select p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId where rp.roleId = ? order by p.sort 
2019-10-26 12:43:05,902 [http-nio-8080-exec-7] ==> Parameters: 2(Long)
2019-10-26 12:43:05,951 [http-nio-8080-exec-7] <==      Total: 20
2019-10-26 12:43:13,523 [http-nio-8080-exec-5] ==>  Preparing: select * from sys_role t where t.name = ? 
2019-10-26 12:43:13,524 [http-nio-8080-exec-5] ==> Parameters: USER(String)
2019-10-26 12:43:13,576 [http-nio-8080-exec-5] <==      Total: 1
2019-10-26 12:43:13,577 [http-nio-8080-exec-5] ==>  Preparing: update sys_role t set t.name = ?, t.description = ?, updateTime = now() where t.id = ? 
2019-10-26 12:43:13,578 [http-nio-8080-exec-5] ==> Parameters: USER(String), (String), 2(Long)
2019-10-26 12:43:13,677 [http-nio-8080-exec-5] <==    Updates: 1
2019-10-26 12:43:13,677 [http-nio-8080-exec-5] ==>  Preparing: delete from sys_role_permission where roleId = ? 
2019-10-26 12:43:13,678 [http-nio-8080-exec-5] ==> Parameters: 2(Long)
2019-10-26 12:43:13,775 [http-nio-8080-exec-5] <==    Updates: 20
2019-10-26 12:43:13,777 [http-nio-8080-exec-5] ==>  Preparing: insert into sys_role_permission(roleId, permissionId) values (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) , (?, ?) 
2019-10-26 12:43:13,778 [http-nio-8080-exec-5] ==> Parameters: 2(Long), 1(Long), 2(Long), 2(Long), 2(Long), 3(Long), 2(Long), 7(Long), 2(Long), 8(Long), 2(Long), 9(Long), 2(Long), 12(Long), 2(Long), 13(Long), 2(Long), 19(Long), 2(Long), 20(Long), 2(Long), 22(Long), 2(Long), 23(Long), 2(Long), 30(Long), 2(Long), 31(Long), 2(Long), 34(Long), 2(Long), 36(Long), 2(Long), 37(Long), 2(Long), 38(Long)
2019-10-26 12:43:13,878 [http-nio-8080-exec-5] <==    Updates: 18
2019-10-26 12:43:14,078 [taskExecutor-13] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-10-26 12:43:14,079 [taskExecutor-13] ==> Parameters: 1(Long), 保存角色(String), true(Boolean), null
2019-10-26 12:43:14,182 [taskExecutor-13] <==    Updates: 1
2019-10-26 12:43:15,527 [http-nio-8080-exec-5] ==>  Preparing: select count(1) from sys_role t 
2019-10-26 12:43:15,528 [http-nio-8080-exec-5] ==> Parameters: 
2019-10-26 12:43:15,576 [http-nio-8080-exec-5] <==      Total: 1
2019-10-26 12:43:15,624 [http-nio-8080-exec-5] ==>  Preparing: select * from sys_role t order by updateTime desc limit ?, ? 
2019-10-26 12:43:15,625 [http-nio-8080-exec-5] ==> Parameters: 0(Integer), 10(Integer)
2019-10-26 12:43:15,674 [http-nio-8080-exec-5] <==      Total: 2
2019-10-26 12:43:16,463 [taskExecutor-14] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-10-26 12:43:16,463 [taskExecutor-14] ==> Parameters: 1(Long), 退出(String), true(Boolean), null
2019-10-26 12:43:16,612 [taskExecutor-14] <==    Updates: 1
2019-10-26 12:43:18,906 [http-nio-8080-exec-10] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-10-26 12:43:18,906 [http-nio-8080-exec-10] ==> Parameters: user(String)
2019-10-26 12:43:18,955 [http-nio-8080-exec-10] <==      Total: 1
2019-10-26 12:43:19,003 [http-nio-8080-exec-10] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-10-26 12:43:19,004 [http-nio-8080-exec-10] ==> Parameters: 2(Long)
2019-10-26 12:43:19,055 [http-nio-8080-exec-10] <==      Total: 18
2019-10-26 12:43:19,262 [taskExecutor-15] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-10-26 12:43:19,263 [taskExecutor-15] ==> Parameters: 2(Long), 登陆(String), true(Boolean), null
2019-10-26 12:43:19,367 [taskExecutor-15] <==    Updates: 1
2019-10-26 12:43:19,512 [http-nio-8080-exec-2] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2019-10-26 12:43:19,513 [http-nio-8080-exec-2] ==> Parameters: 2(Long)
2019-10-26 12:43:19,560 [http-nio-8080-exec-2] <==      Total: 1
2019-10-26 12:43:24,557 [http-nio-8080-exec-2] ==>  Preparing: select count(1) from t_notice t 
2019-10-26 12:43:24,558 [http-nio-8080-exec-2] ==> Parameters: 
2019-10-26 12:43:24,609 [http-nio-8080-exec-2] <==      Total: 1
2019-10-26 12:43:26,022 [http-nio-8080-exec-6] ==>  Preparing: select count(1) from t_job t 
2019-10-26 12:43:26,023 [http-nio-8080-exec-6] ==> Parameters: 
2019-10-26 12:43:26,090 [http-nio-8080-exec-6] <==      Total: 1
2019-10-26 12:43:28,229 [http-nio-8080-exec-4] ==>  Preparing: select count(1) from sys_user t 
2019-10-26 12:43:28,230 [http-nio-8080-exec-4] ==> Parameters: 
2019-10-26 12:43:28,277 [http-nio-8080-exec-4] <==      Total: 1
2019-10-26 12:43:28,323 [http-nio-8080-exec-4] ==>  Preparing: select * from sys_user t order by username desc, nickname asc limit ?, ? 
2019-10-26 12:43:28,324 [http-nio-8080-exec-4] ==> Parameters: 0(Integer), 10(Integer)
2019-10-26 12:43:28,371 [http-nio-8080-exec-4] <==      Total: 2
