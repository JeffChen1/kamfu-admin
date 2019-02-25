#  Kamfu-Admin

## 开发准备

### 准备软件

- jdk1.8 以上
- redis 
- rabbitmq 
- idea 2017.3
- maven 3.0 以上

### 配置修改

#### 修改maven的配置文件

- 方法 1 修改镜像配置  
请修改 maven 目录下的 setting 配置文件的镜像配置,在 mirrors 标签下增加
以下标签.

```
<mirror>
   <id>kamfu-admin</id>     
   <name>kamfu maven</name>
   <url>http://192.168.3.208:8081/repository/maven-public/</url> 
</mirror>

```

- 方法2 修改profiles 节点
在 profiles 节点下修改或者增加以下代码

```
<profile>
      <id>kamfu-admin</id>
      <repositories><!--仓库配置-->
        <repository>
          <id>kamfu-admin</id>
          <name>Nexus3</name>
          <url>http://192.168.3.208:8081/repository/maven-public/</url>
          <releases><enabled>true</enabled></releases>
          <snapshots><enabled>true</enabled></snapshots>
        </repository>
      </repositories>
 <pluginRepositories><!--插件仓库配置-->
        <pluginRepository>
          <id>kamfu-admin</id>
          <name>Nexus3</name>
          <url>http://192.168.3.208:8081/repository/maven-public/</url>
          <releases><enabled>true</enabled></releases>
          <snapshots><enabled>true</enabled></snapshots>
        </pluginRepository>
      </pluginRepositories>
</profile>

```

## Rest接口的调整概述

###主要调整

~~~
原工程关系群概念 group 转为 5.0角色关系概念role；原工程组织部门概念 depart 转为 5.0组织概念 group 
~~~

### rest接口的变动概述

~~~
原路径				新路径						请求参数或结果集变更

"/dataDepart"	"/dataGroup"       

"/groupType"	"/roleType"

"/group"	  	"/role"				"/list" get："groupType"->"roleType"					
								"/{id}/user" get："GroupUsers"->"RoleUsers"
								"/tree" get："groupType"->"roleType" "GroupTree"->"RoleTree"

"/position"		"/position"			"/{id}/group"->"/{id}/role" put: "groups"->"roles"
								"/{id}/group"->"/{id}/role" get: "GroupTree"->"RoleTree"
								"/{id}/depart"->"/{id}/group" put: "departs"->"groups"
								"/{id}/depart"->"/{id}/group" put: "DepartTree"->"GroupTree"
																	
"/depart"		"/group"		"/tree" get："DepartTree"->"GroupTree"
                                  "/user" get："departId"->"GroupId"		
                                  "/user" post："departId"->"GroupId"		
                                  "/user" delete："departId"->"GroupId"			
~~~

#项目目录结构说明

~~~
kamfu-admin-java  //后台根目录
  |
  |-- kf-plt-admin-auth   //鉴权中心
  |       |
  |       |-- kf-plt-admin-auth-client  //鉴权中心客户服
  |       |-- kf-plt-admin-auth-server  //鉴权中心主服
  |       |
  | -- kf-plt-admin-center   //eruka中心服
  |       |
  | -- kf-plt-admin-common  //公共模块
  |       |
  | -- kf-plt-admin-control //控制中心
  |       |
  |       |-- kf-plt-admin-monitor //镜像
  |       |-- kf-plt-admin-trace  //控制链路
  |       |                  
  | -- kf-plt-admin-dict //字典服务
  |       |
  | -- kf-plt-admin-gate //网关中心
  |       |
  |       |-- kf-plt-admin-gate-ratelimit //网关流量控制
  |       |-- kf-plt-admin-gate-server  //网关服务器
  |       |
  | -- kf-plt-admin-generator  //快速代码生成
  |       |
  | -- kf-plt-admin-intf //接口服务
  |       |
  | -- kf-plt-admin-sysmgnt //系统管理
  |       |
  | -- kf-plt-admin-kf-plt-admin-transaction  //翻译交互服务
  |       |
  |       |-- kf-plt-admin-transaction-core //交互服务核心
  |       |-- kf-plt-admin-transaction-demo  //交互服务测试
  |       |
  |-- docs   //项目文档
  |-- DB    //数据库脚本 包含了一个mysql的结构和数据文件，一个单inser数据文件
  |-- lib   //本地引用库
~~~

## 子服务的目录结构说明

~~~
kamfu-admin-sysmgnt  //系统管理
  |
  |-- src/main   //代码
  |       |
  |       |-- docker //docker打包发布脚本
  |       |-- java //java源代码
  |       |		 |-- kf\plt\admin\sysmgnt  //包路径
  |       |		 |       |-- biz       //业务代码层
  |       |		 |       |-- config   //配置文件层
  |       |		 |       |-- constant  //常量层
  |       |		 |       |-- entity    //mybatis实体层
  |       |		 |       |-- feign       //调用外部服务层
  |       |		 |       |-- mapper   //mybatis的接口映射层
  |       |		 |       |-- rest       //服务rest接口层
  |       |		 |       |-- rpc     //角色认证模块（业务module）
  |       |		 |       |-- service       //数据加工服务层
  |       |		 |       |-- vo   //valueobject 非实体的数据对象
  |       |-- resource  //资源配置
  |       |		 |       |-- builder  //代码生成器配置xml
  |       |		 |       |-- mapper  //mybatis数据实体映射配置xml
~~~

## 数据库目前配置说明

~~~
开发测试数据库mysql5.7
ip: 192.168.5.33   端口:3306
用户名密码:  root/password
~~~

##后台服务启动顺序

~~~
1.center
2.auth
3.dict
4.sysmgnt
5.gate
~~~

