2019-11-25 15:37:35,635 [http-nio-8080-exec-9] ==>  Preparing: select * from sys_user t where t.username = ? 
2019-11-25 15:37:35,645 [http-nio-8080-exec-9] ==> Parameters: admin(String)
2019-11-25 15:37:35,801 [http-nio-8080-exec-9] <==      Total: 1
2019-11-25 15:37:35,859 [http-nio-8080-exec-9] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2019-11-25 15:37:35,873 [http-nio-8080-exec-9] ==> Parameters: 1(Long)
2019-11-25 15:37:36,156 [http-nio-8080-exec-9] <==      Total: 39
2019-11-25 15:37:36,942 [taskExecutor-1] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2019-11-25 15:37:36,948 [taskExecutor-1] ==> Parameters: 1(Long), 登陆(String), true(Boolean), null
2019-11-25 15:37:37,053 [taskExecutor-1] <==    Updates: 1
2019-11-25 15:37:37,456 [http-nio-8080-exec-4] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2019-11-25 15:37:37,458 [http-nio-8080-exec-4] ==> Parameters: 1(Long)
2019-11-25 15:37:37,501 [http-nio-8080-exec-4] <==      Total: 1
2019-11-25 15:37:41,508 [http-nio-8080-exec-10] ==>  Preparing: select count(1) from sys_role t 
2019-11-25 15:37:41,509 [http-nio-8080-exec-10] ==> Parameters: 
2019-11-25 15:37:41,555 [http-nio-8080-exec-10] <==      Total: 1
2019-11-25 15:37:41,588 [http-nio-8080-exec-10] ==>  Preparing: select * from sys_role t order by updateTime desc limit ?, ? 
2019-11-25 15:37:41,590 [http-nio-8080-exec-10] ==> Parameters: 0(Integer), 10(Integer)
2019-11-25 15:37:41,620 [http-nio-8080-exec-10] <==      Total: 2
2019-11-25 15:37:43,275 [http-nio-8080-exec-3] ==>  Preparing: select * from sys_permission t order by t.sort 
2019-11-25 15:37:43,277 [http-nio-8080-exec-3] ==> Parameters: 
2019-11-25 15:37:43,316 [http-nio-8080-exec-3] <==      Total: 39
