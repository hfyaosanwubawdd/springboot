2019-11-07 10:08:42,094 [http-nio-8080-exec-9] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-11-07 10:08:42,104 [http-nio-8080-exec-9] ==> Parameters: admin(String)
2019-11-07 10:08:42,217 [http-nio-8080-exec-9] <==      Total: 1
2019-11-07 10:08:42,278 [http-nio-8080-exec-9] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-11-07 10:08:42,286 [http-nio-8080-exec-9] ==> Parameters: 1(Long)
2019-11-07 10:08:42,373 [http-nio-8080-exec-9] <==      Total: 39
2019-11-07 10:08:43,254 [taskExecutor-1] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-11-07 10:08:43,265 [taskExecutor-1] ==> Parameters: 1(Long), 登陆(String), true(Boolean), null
2019-11-07 10:08:43,416 [taskExecutor-1] <==    Updates: 1
2019-11-07 10:08:43,607 [http-nio-8080-exec-6] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2019-11-07 10:08:43,609 [http-nio-8080-exec-6] ==> Parameters: 1(Long)
2019-11-07 10:08:43,687 [http-nio-8080-exec-6] <==      Total: 1
