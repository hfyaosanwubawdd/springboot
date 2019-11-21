2019-11-12 09:21:24,755 [adminQuartzScheduler_Worker-1] ==>  Preparing: select * from s_properties where sysname = ? 
2019-11-12 09:21:24,764 [adminQuartzScheduler_Worker-1] ==> Parameters: SC-201903281920(String)
2019-11-12 09:21:24,835 [adminQuartzScheduler_Worker-1] <==      Total: 1
2019-11-12 09:21:25,385 [adminQuartzScheduler_Worker-2] ==>  Preparing: select * from s_properties where sysname = ? 
2019-11-12 09:21:25,385 [adminQuartzScheduler_Worker-2] ==> Parameters: SC-201903281920(String)
2019-11-12 09:21:25,417 [adminQuartzScheduler_Worker-2] <==      Total: 1
2019-11-12 09:21:26,085 [adminQuartzScheduler_Worker-3] ==>  Preparing: select * from s_properties where sysname = ? 
2019-11-12 09:21:26,085 [adminQuartzScheduler_Worker-3] ==> Parameters: SC-201903281920(String)
2019-11-12 09:21:26,116 [adminQuartzScheduler_Worker-3] <==      Total: 1
2019-11-12 09:21:26,851 [adminQuartzScheduler_Worker-4] ==>  Preparing: select * from s_properties where sysname = ? 
2019-11-12 09:21:26,851 [adminQuartzScheduler_Worker-4] ==> Parameters: SC-201903281920(String)
2019-11-12 09:21:26,882 [adminQuartzScheduler_Worker-4] <==      Total: 1
2019-11-12 09:21:27,529 [adminQuartzScheduler_Worker-5] ==>  Preparing: select * from s_properties where sysname = ? 
2019-11-12 09:21:27,530 [adminQuartzScheduler_Worker-5] ==> Parameters: SC-201903281920(String)
2019-11-12 09:21:27,564 [adminQuartzScheduler_Worker-5] <==      Total: 1
2019-11-12 09:21:28,369 [adminQuartzScheduler_Worker-6] ==>  Preparing: select * from s_properties where sysname = ? 
2019-11-12 09:21:28,370 [adminQuartzScheduler_Worker-6] ==> Parameters: SC-201903281920(String)
2019-11-12 09:21:28,405 [adminQuartzScheduler_Worker-6] <==      Total: 1
2019-11-12 09:21:29,372 [adminQuartzScheduler_Worker-7] ==>  Preparing: select * from s_properties where sysname = ? 
2019-11-12 09:21:29,372 [adminQuartzScheduler_Worker-7] ==> Parameters: SC-201903281920(String)
2019-11-12 09:21:29,411 [adminQuartzScheduler_Worker-7] <==      Total: 1
2019-11-12 09:21:30,356 [adminQuartzScheduler_Worker-8] ==>  Preparing: select * from s_properties where sysname = ? 
2019-11-12 09:21:30,357 [adminQuartzScheduler_Worker-8] ==> Parameters: SC-201903281920(String)
2019-11-12 09:21:30,388 [adminQuartzScheduler_Worker-8] <==      Total: 1
2019-11-12 09:21:30,665 [http-nio-8080-exec-8] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-11-12 09:21:30,667 [http-nio-8080-exec-8] ==> Parameters: admin(String)
2019-11-12 09:21:30,709 [http-nio-8080-exec-8] <==      Total: 1
2019-11-12 09:21:30,746 [http-nio-8080-exec-8] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-11-12 09:21:30,757 [http-nio-8080-exec-8] ==> Parameters: 1(Long)
2019-11-12 09:21:30,793 [http-nio-8080-exec-8] <==      Total: 39
2019-11-12 09:21:31,403 [adminQuartzScheduler_Worker-9] ==>  Preparing: select * from s_properties where sysname = ? 
2019-11-12 09:21:31,404 [adminQuartzScheduler_Worker-9] ==> Parameters: SC-201903281920(String)
2019-11-12 09:21:31,433 [adminQuartzScheduler_Worker-9] <==      Total: 1
2019-11-12 09:21:31,536 [taskExecutor-1] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-11-12 09:21:31,547 [taskExecutor-1] ==> Parameters: 1(Long), 登陆(String), true(Boolean), null
2019-11-12 09:21:31,622 [taskExecutor-1] <==    Updates: 1
2019-11-12 09:21:31,936 [http-nio-8080-exec-9] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2019-11-12 09:21:31,938 [http-nio-8080-exec-9] ==> Parameters: 1(Long)
2019-11-12 09:21:31,974 [http-nio-8080-exec-9] <==      Total: 1
2019-11-12 09:21:32,399 [adminQuartzScheduler_Worker-10] ==>  Preparing: select * from s_properties where sysname = ? 
2019-11-12 09:21:32,399 [adminQuartzScheduler_Worker-10] ==> Parameters: SC-201903281920(String)
2019-11-12 09:21:32,429 [adminQuartzScheduler_Worker-10] <==      Total: 1
2019-11-12 09:21:33,371 [adminQuartzScheduler_Worker-1] ==>  Preparing: select * from s_properties where sysname = ? 
2019-11-12 09:21:33,371 [adminQuartzScheduler_Worker-1] ==> Parameters: SC-201903281920(String)
2019-11-12 09:21:33,402 [adminQuartzScheduler_Worker-1] <==      Total: 1
2019-11-12 09:21:34,401 [adminQuartzScheduler_Worker-2] ==>  Preparing: select * from s_properties where sysname = ? 
2019-11-12 09:21:34,401 [adminQuartzScheduler_Worker-2] ==> Parameters: SC-201903281920(String)
2019-11-12 09:21:34,432 [adminQuartzScheduler_Worker-2] <==      Total: 1
2019-11-12 09:21:35,386 [adminQuartzScheduler_Worker-3] ==>  Preparing: select * from s_properties where sysname = ? 
2019-11-12 09:21:35,387 [adminQuartzScheduler_Worker-3] ==> Parameters: SC-201903281920(String)
2019-11-12 09:21:35,419 [adminQuartzScheduler_Worker-3] <==      Total: 1
2019-11-12 09:21:36,403 [adminQuartzScheduler_Worker-4] ==>  Preparing: select * from s_properties where sysname = ? 
2019-11-12 09:21:36,404 [adminQuartzScheduler_Worker-4] ==> Parameters: SC-201903281920(String)
2019-11-12 09:21:36,435 [adminQuartzScheduler_Worker-4] <==      Total: 1
2019-11-12 09:21:37,397 [adminQuartzScheduler_Worker-5] ==>  Preparing: select * from s_properties where sysname = ? 
2019-11-12 09:21:37,398 [adminQuartzScheduler_Worker-5] ==> Parameters: SC-201903281920(String)
2019-11-12 09:21:37,431 [adminQuartzScheduler_Worker-5] <==      Total: 1
2019-11-12 09:21:38,411 [adminQuartzScheduler_Worker-6] ==>  Preparing: select * from s_properties where sysname = ? 
2019-11-12 09:21:38,412 [adminQuartzScheduler_Worker-6] ==> Parameters: SC-201903281920(String)
2019-11-12 09:21:38,443 [adminQuartzScheduler_Worker-6] <==      Total: 1
2019-11-12 09:21:39,403 [adminQuartzScheduler_Worker-7] ==>  Preparing: select * from s_properties where sysname = ? 
2019-11-12 09:21:39,404 [adminQuartzScheduler_Worker-7] ==> Parameters: SC-201903281920(String)
2019-11-12 09:21:39,433 [adminQuartzScheduler_Worker-7] <==      Total: 1
2019-11-12 09:21:40,402 [adminQuartzScheduler_Worker-8] ==>  Preparing: select * from s_properties where sysname = ? 
2019-11-12 09:21:40,403 [adminQuartzScheduler_Worker-8] ==> Parameters: SC-201903281920(String)
2019-11-12 09:21:40,438 [adminQuartzScheduler_Worker-8] <==      Total: 1
2019-11-12 09:21:41,384 [adminQuartzScheduler_Worker-9] ==>  Preparing: select * from s_properties where sysname = ? 
2019-11-12 09:21:41,385 [adminQuartzScheduler_Worker-9] ==> Parameters: SC-201903281920(String)
2019-11-12 09:21:41,416 [adminQuartzScheduler_Worker-9] <==      Total: 1
2019-11-12 09:21:42,388 [adminQuartzScheduler_Worker-10] ==>  Preparing: select * from s_properties where sysname = ? 
2019-11-12 09:21:42,388 [adminQuartzScheduler_Worker-10] ==> Parameters: SC-201903281920(String)
2019-11-12 09:21:42,419 [adminQuartzScheduler_Worker-10] <==      Total: 1
2019-11-12 09:21:43,411 [adminQuartzScheduler_Worker-1] ==>  Preparing: select * from s_properties where sysname = ? 
2019-11-12 09:21:43,412 [adminQuartzScheduler_Worker-1] ==> Parameters: SC-201903281920(String)
2019-11-12 09:21:43,446 [adminQuartzScheduler_Worker-1] <==      Total: 1
2019-11-12 09:21:44,438 [http-nio-8080-exec-3] ==>  Preparing: select count(1) from t_job t 
2019-11-12 09:21:44,439 [http-nio-8080-exec-3] ==> Parameters: 
2019-11-12 09:21:44,447 [adminQuartzScheduler_Worker-2] ==>  Preparing: select * from s_properties where sysname = ? 
2019-11-12 09:21:44,447 [adminQuartzScheduler_Worker-2] ==> Parameters: SC-201903281920(String)
2019-11-12 09:21:44,470 [http-nio-8080-exec-3] <==      Total: 1
2019-11-12 09:21:44,496 [adminQuartzScheduler_Worker-2] <==      Total: 1
2019-11-12 09:21:44,528 [http-nio-8080-exec-3] ==>  Preparing: select * from t_job t order by status desc, updateTime desc limit ?, ? 
2019-11-12 09:21:44,531 [http-nio-8080-exec-3] ==> Parameters: 0(Integer), 10(Integer)
2019-11-12 09:21:44,562 [http-nio-8080-exec-3] <==      Total: 1
2019-11-12 09:21:45,404 [adminQuartzScheduler_Worker-3] ==>  Preparing: select * from s_properties where sysname = ? 
2019-11-12 09:21:45,404 [adminQuartzScheduler_Worker-3] ==> Parameters: SC-201903281920(String)
2019-11-12 09:21:45,433 [adminQuartzScheduler_Worker-3] <==      Total: 1
2019-11-12 09:21:46,380 [adminQuartzScheduler_Worker-4] ==>  Preparing: select * from s_properties where sysname = ? 
2019-11-12 09:21:46,380 [adminQuartzScheduler_Worker-4] ==> Parameters: SC-201903281920(String)
2019-11-12 09:21:46,409 [adminQuartzScheduler_Worker-4] <==      Total: 1
2019-11-12 09:21:47,420 [adminQuartzScheduler_Worker-5] ==>  Preparing: select * from s_properties where sysname = ? 
2019-11-12 09:21:47,420 [adminQuartzScheduler_Worker-5] ==> Parameters: SC-201903281920(String)
2019-11-12 09:21:47,451 [adminQuartzScheduler_Worker-5] <==      Total: 1
2019-11-12 09:21:48,390 [adminQuartzScheduler_Worker-6] ==>  Preparing: select * from s_properties where sysname = ? 
2019-11-12 09:21:48,390 [adminQuartzScheduler_Worker-6] ==> Parameters: SC-201903281920(String)
2019-11-12 09:21:48,421 [adminQuartzScheduler_Worker-6] <==      Total: 1
2019-11-12 09:21:49,391 [adminQuartzScheduler_Worker-7] ==>  Preparing: select * from s_properties where sysname = ? 
2019-11-12 09:21:49,392 [adminQuartzScheduler_Worker-7] ==> Parameters: SC-201903281920(String)
2019-11-12 09:21:49,424 [adminQuartzScheduler_Worker-7] <==      Total: 1
2019-11-12 09:21:49,454 [http-nio-8080-exec-9] ==>  Preparing: select * from t_job t where t.id = ? 
2019-11-12 09:21:49,455 [http-nio-8080-exec-9] ==> Parameters: 1(Long)
2019-11-12 09:21:49,486 [http-nio-8080-exec-9] <==      Total: 1
2019-11-12 09:21:50,227 [http-nio-8080-exec-9] ==>  Preparing: update t_job t SET description = ?, cron = ?, springBeanName = ?, methodName = ?, status = ?, updateTime = now() where t.jobName = ? 
2019-11-12 09:21:50,228 [http-nio-8080-exec-9] ==> Parameters: 123(String), 0/1 * * * * ? (String), ipsInfoServiceImpl(String), getBySysname(String), 0(Integer), 123(String)
2019-11-12 09:21:50,301 [http-nio-8080-exec-9] <==    Updates: 1
2019-11-12 09:21:50,333 [taskExecutor-2] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-11-12 09:21:50,334 [taskExecutor-2] ==> Parameters: 1(Long), 删除定时任务(String), true(Boolean), null
2019-11-12 09:21:50,372 [http-nio-8080-exec-5] ==>  Preparing: select count(1) from t_job t 
2019-11-12 09:21:50,373 [http-nio-8080-exec-5] ==> Parameters: 
2019-11-12 09:21:50,396 [taskExecutor-2] <==    Updates: 1
2019-11-12 09:21:50,399 [http-nio-8080-exec-5] <==      Total: 1
2019-11-12 09:21:50,456 [http-nio-8080-exec-5] ==>  Preparing: select * from t_job t order by status desc, updateTime desc limit ?, ? 
2019-11-12 09:21:50,456 [http-nio-8080-exec-5] ==> Parameters: 0(Integer), 10(Integer)
2019-11-12 09:21:50,487 [http-nio-8080-exec-5] <==      Total: 1
2019-11-12 09:21:55,528 [http-nio-8080-exec-4] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2019-11-12 09:21:55,529 [http-nio-8080-exec-4] ==> Parameters: 1(Long)
2019-11-12 09:21:55,558 [http-nio-8080-exec-4] <==      Total: 1
2019-11-12 09:21:57,226 [http-nio-8080-exec-8] ==>  Preparing: select count(1) from t_job t 
2019-11-12 09:21:57,227 [http-nio-8080-exec-8] ==> Parameters: 
2019-11-12 09:21:57,255 [http-nio-8080-exec-8] <==      Total: 1
2019-11-12 09:21:57,292 [http-nio-8080-exec-8] ==>  Preparing: select * from t_job t order by status desc, updateTime desc limit ?, ? 
2019-11-12 09:21:57,293 [http-nio-8080-exec-8] ==> Parameters: 0(Integer), 10(Integer)
2019-11-12 09:21:57,325 [http-nio-8080-exec-8] <==      Total: 1
2019-11-12 09:22:03,568 [http-nio-8080-exec-4] ==>  Preparing: select * from t_job t where t.id = ? 
2019-11-12 09:22:03,569 [http-nio-8080-exec-4] ==> Parameters: 1(Long)
2019-11-12 09:22:03,602 [http-nio-8080-exec-4] <==      Total: 1
2019-11-12 09:22:04,246 [http-nio-8080-exec-4] ==>  Preparing: update t_job t SET description = ?, cron = ?, springBeanName = ?, methodName = ?, status = ?, updateTime = now() where t.jobName = ? 
2019-11-12 09:22:04,247 [http-nio-8080-exec-4] ==> Parameters: 123(String), 0/1 * * * * ? (String), ipsInfoServiceImpl(String), getBySysname(String), 0(Integer), 123(String)
2019-11-12 09:22:04,304 [http-nio-8080-exec-4] <==    Updates: 1
2019-11-12 09:22:04,335 [taskExecutor-3] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-11-12 09:22:04,336 [taskExecutor-3] ==> Parameters: 1(Long), 删除定时任务(String), true(Boolean), null
2019-11-12 09:22:04,390 [http-nio-8080-exec-6] ==>  Preparing: select count(1) from t_job t 
2019-11-12 09:22:04,391 [http-nio-8080-exec-6] ==> Parameters: 
2019-11-12 09:22:04,401 [taskExecutor-3] <==    Updates: 1
2019-11-12 09:22:04,456 [http-nio-8080-exec-6] <==      Total: 1
2019-11-12 09:22:04,489 [http-nio-8080-exec-6] ==>  Preparing: select * from t_job t order by status desc, updateTime desc limit ?, ? 
2019-11-12 09:22:04,490 [http-nio-8080-exec-6] ==> Parameters: 0(Integer), 10(Integer)
2019-11-12 09:22:04,521 [http-nio-8080-exec-6] <==      Total: 1
2019-11-12 09:22:05,743 [http-nio-8080-exec-8] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2019-11-12 09:22:05,744 [http-nio-8080-exec-8] ==> Parameters: 1(Long)
2019-11-12 09:22:05,774 [http-nio-8080-exec-8] <==      Total: 1
2019-11-12 09:22:07,397 [http-nio-8080-exec-3] ==>  Preparing: select count(1) from t_job t 
2019-11-12 09:22:07,398 [http-nio-8080-exec-3] ==> Parameters: 
2019-11-12 09:22:07,448 [http-nio-8080-exec-3] <==      Total: 1
2019-11-12 09:22:07,480 [http-nio-8080-exec-3] ==>  Preparing: select * from t_job t order by status desc, updateTime desc limit ?, ? 
2019-11-12 09:22:07,481 [http-nio-8080-exec-3] ==> Parameters: 0(Integer), 10(Integer)
2019-11-12 09:22:07,536 [http-nio-8080-exec-3] <==      Total: 1
2019-11-12 09:22:12,761 [http-nio-8080-exec-4] ==>  Preparing: select * from t_job t where t.id = ? 
2019-11-12 09:22:12,762 [http-nio-8080-exec-4] ==> Parameters: 1(Long)
2019-11-12 09:22:12,795 [http-nio-8080-exec-4] <==      Total: 1
2019-11-12 09:22:49,456 [taskExecutor-4] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-11-12 09:22:49,457 [taskExecutor-4] ==> Parameters: 1(Long), 修改定时任务(String), true(Boolean), null
2019-11-12 09:22:49,515 [taskExecutor-4] <==    Updates: 1
2019-11-12 09:22:50,864 [http-nio-8080-exec-8] ==>  Preparing: select count(1) from t_job t 
2019-11-12 09:22:50,865 [http-nio-8080-exec-8] ==> Parameters: 
2019-11-12 09:22:50,894 [http-nio-8080-exec-8] <==      Total: 1
2019-11-12 09:22:50,924 [http-nio-8080-exec-8] ==>  Preparing: select * from t_job t order by status desc, updateTime desc limit ?, ? 
2019-11-12 09:22:50,925 [http-nio-8080-exec-8] ==> Parameters: 0(Integer), 10(Integer)
2019-11-12 09:22:50,954 [http-nio-8080-exec-8] <==      Total: 1
2019-11-12 09:22:56,149 [http-nio-8080-exec-9] ==>  Preparing: select * from t_job t where t.id = ? 
2019-11-12 09:22:56,150 [http-nio-8080-exec-9] ==> Parameters: 1(Long)
2019-11-12 09:22:56,195 [http-nio-8080-exec-9] <==      Total: 1
2019-11-12 09:23:27,164 [taskExecutor-5] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-11-12 09:23:27,165 [taskExecutor-5] ==> Parameters: 1(Long), 修改定时任务(String), true(Boolean), null
2019-11-12 09:23:27,224 [taskExecutor-5] <==    Updates: 1
2019-11-12 09:23:28,554 [http-nio-8080-exec-4] ==>  Preparing: select count(1) from t_job t 
2019-11-12 09:23:28,554 [http-nio-8080-exec-4] ==> Parameters: 
2019-11-12 09:23:28,584 [http-nio-8080-exec-4] <==      Total: 1
2019-11-12 09:23:28,621 [http-nio-8080-exec-4] ==>  Preparing: select * from t_job t order by status desc, updateTime desc limit ?, ? 
2019-11-12 09:23:28,622 [http-nio-8080-exec-4] ==> Parameters: 0(Integer), 10(Integer)
2019-11-12 09:23:28,652 [http-nio-8080-exec-4] <==      Total: 1
2019-11-12 09:23:29,896 [http-nio-8080-exec-6] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2019-11-12 09:23:29,896 [http-nio-8080-exec-6] ==> Parameters: 1(Long)
2019-11-12 09:23:29,928 [http-nio-8080-exec-6] <==      Total: 1
2019-11-12 09:23:31,571 [http-nio-8080-exec-1] ==>  Preparing: select count(1) from t_job t 
2019-11-12 09:23:31,571 [http-nio-8080-exec-1] ==> Parameters: 
2019-11-12 09:23:31,651 [http-nio-8080-exec-1] <==      Total: 1
2019-11-12 09:23:31,692 [http-nio-8080-exec-1] ==>  Preparing: select * from t_job t order by status desc, updateTime desc limit ?, ? 
2019-11-12 09:23:31,693 [http-nio-8080-exec-1] ==> Parameters: 0(Integer), 10(Integer)
2019-11-12 09:23:31,734 [http-nio-8080-exec-1] <==      Total: 1
2019-11-12 09:23:41,447 [http-nio-8080-exec-2] ==>  Preparing: select * from t_job t where t.id = ? 
2019-11-12 09:23:41,448 [http-nio-8080-exec-2] ==> Parameters: 1(Long)
2019-11-12 09:23:41,493 [http-nio-8080-exec-2] <==      Total: 1
2019-11-12 09:23:42,155 [http-nio-8080-exec-2] ==>  Preparing: update t_job t SET description = ?, cron = ?, springBeanName = ?, methodName = ?, status = ?, updateTime = now() where t.jobName = ? 
2019-11-12 09:23:42,157 [http-nio-8080-exec-2] ==> Parameters: 123(String), 0/1 * * * * ? (String), ipsInfoServiceImpl(String), getBySysname(String), 0(Integer), 123(String)
2019-11-12 09:23:42,222 [http-nio-8080-exec-2] <==    Updates: 1
2019-11-12 09:23:42,253 [taskExecutor-6] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-11-12 09:23:42,254 [taskExecutor-6] ==> Parameters: 1(Long), 删除定时任务(String), true(Boolean), null
2019-11-12 09:23:42,322 [http-nio-8080-exec-4] ==>  Preparing: select count(1) from t_job t 
2019-11-12 09:23:42,323 [http-nio-8080-exec-4] ==> Parameters: 
2019-11-12 09:23:42,328 [taskExecutor-6] <==    Updates: 1
2019-11-12 09:23:42,396 [http-nio-8080-exec-4] <==      Total: 1
2019-11-12 09:23:42,427 [http-nio-8080-exec-4] ==>  Preparing: select * from t_job t order by status desc, updateTime desc limit ?, ? 
2019-11-12 09:23:42,427 [http-nio-8080-exec-4] ==> Parameters: 0(Integer), 10(Integer)
2019-11-12 09:23:42,459 [http-nio-8080-exec-4] <==      Total: 1
2019-11-12 09:30:30,752 [http-nio-8080-exec-4] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2019-11-12 09:30:30,753 [http-nio-8080-exec-4] ==> Parameters: 1(Long)
2019-11-12 09:30:30,789 [http-nio-8080-exec-4] <==      Total: 1
2019-11-12 09:30:33,338 [http-nio-8080-exec-10] ==>  Preparing: select count(1) from t_job t 
2019-11-12 09:30:33,339 [http-nio-8080-exec-10] ==> Parameters: 
2019-11-12 09:30:33,383 [http-nio-8080-exec-10] <==      Total: 1
2019-11-12 09:30:33,416 [http-nio-8080-exec-10] ==>  Preparing: select * from t_job t order by status desc, updateTime desc limit ?, ? 
2019-11-12 09:30:33,417 [http-nio-8080-exec-10] ==> Parameters: 0(Integer), 10(Integer)
2019-11-12 09:30:33,450 [http-nio-8080-exec-10] <==      Total: 1
2019-11-12 09:30:35,921 [http-nio-8080-exec-3] ==>  Preparing: select * from t_job t where t.id = ? 
2019-11-12 09:30:35,921 [http-nio-8080-exec-3] ==> Parameters: 1(Long)
2019-11-12 09:30:35,958 [http-nio-8080-exec-3] <==      Total: 1
2019-11-12 09:30:47,957 [http-nio-8080-exec-7] ==>  Preparing: select * from t_job t where t.jobName = ? 
2019-11-12 09:30:47,959 [http-nio-8080-exec-7] ==> Parameters: 123(String)
2019-11-12 09:30:48,030 [http-nio-8080-exec-7] <==      Total: 1
2019-11-12 09:30:48,059 [http-nio-8080-exec-7] ==>  Preparing: update t_job t SET description = ?, cron = ?, springBeanName = ?, methodName = ?, status = ?, updateTime = now() where t.jobName = ? 
2019-11-12 09:30:48,059 [http-nio-8080-exec-7] ==> Parameters: 123(String), 0 0 0 1 * ? (String), ipsInfoServiceImpl(String), getBySysname(String), 1(Integer), 123(String)
2019-11-12 09:30:48,145 [http-nio-8080-exec-7] <==    Updates: 1
2019-11-12 09:30:48,178 [taskExecutor-7] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-11-12 09:30:48,178 [taskExecutor-7] ==> Parameters: 1(Long), 修改定时任务(String), true(Boolean), null
2019-11-12 09:30:48,248 [taskExecutor-7] <==    Updates: 1
2019-11-12 09:30:49,621 [http-nio-8080-exec-6] ==>  Preparing: select count(1) from t_job t 
2019-11-12 09:30:49,622 [http-nio-8080-exec-6] ==> Parameters: 
2019-11-12 09:30:49,674 [http-nio-8080-exec-6] <==      Total: 1
2019-11-12 09:30:49,710 [http-nio-8080-exec-6] ==>  Preparing: select * from t_job t order by status desc, updateTime desc limit ?, ? 
2019-11-12 09:30:49,710 [http-nio-8080-exec-6] ==> Parameters: 0(Integer), 10(Integer)
2019-11-12 09:30:49,742 [http-nio-8080-exec-6] <==      Total: 1
