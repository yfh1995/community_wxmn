## 文档

#### 目录结构

 | -  -  app  
 | -  - | -  - Admin                                                后台系统  
 | -  - | -  - | -  - Controllers                                   后台控制器  
 | -  - | -  - | -  - routes.php                                    后台路由配置  
 |  
 | -  - | -  - Common  
 | -  - | -  - | -  - Codes.php                                     统一错误码  
 | -  - | -  - | -  - Tool.php                                      工具方法（仅限于逻辑处理，请勿包含业务）  
 |  
 | -  - | -  - Console                                              定时任务  
 | -  - | -  - Exceptions                                           报错类  
 | -  - | -  - Helpers  
 | -  - | -  - | -  - functions.php                                 全局方法  
 |  
 | -  - | -  - Http    
 | -  - | -  - | -  - Controllers                                   控制器  
 | -  - | -  - | -  - Middleware                                    中间件  
 |  
 | -  - | -  - Providers                                            服务提供者（插件与自定义服务绑定）  
 | -  - | -  - Services                                             自定义服务实体（所有服务请带前缀C）  
 |  
 | -  -  bootstrap  
 | -  - | -  - cache  
 |      
 | -  -  config  
 | -  - | -  - admin.php                                            后台配置文件        
 | -  - | -  - app.php                                              网站基础及服务、门面注册配置        
 | -  - | -  - auth.php                                             认证相关配置      
 | -  - | -  - broadcasting.php           
 | -  - | -  - cache.php                                            数据缓存配置（file、redis、memcache等）  
 | -  - | -  - database.php                                         数据库配置      
 | -  - | -  - filesystems.php                                      文件系统配置      
 | -  - | -  - mail.php                                             邮件配置      
 | -  - | -  - queue.php                                            队列配置      
 | -  - | -  - services.php  
 | -  - | -  - session.php                                          session      
 | -  - | -  - view.php                                             视图配置   
 |       
 | -  -  database  
 | -  - | -  - factories   
 | -  - | -  - migrations                                           数据库迁移（未使用）  
 | -  - | -  - seeds                                                数据填充（未使用）  
 |   
 | -  -  public  
 | -  - | -  - index.php                                            入口文件   
 |  
 | -  -  resources  
 | -  - | -  - assets                                               前端资源文件夹  
 | -  - | -  - lang                                                 多语言文件  
 | -  - | -  - view                                                 前端视图文件  
 |  
 | -  -  routes                                                     路由配置  
 |  
 | -  -  storage                                                    日志、缓存文件  
 |  
 | -  -  tests  
 |  
 | -  -  vendor                                                     框架文件  
 |  
 | -  -  .env                                                       快速配置文件  
 | -  -  Community.postman_collection.json                          postman接口实例文件  
 | -  -  community.sql                                              数据库文件  