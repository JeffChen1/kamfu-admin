# kamfu-admin后台接口文档 #
####**组织机构管理接口** ####

#####**1、**组织机构--新增 #####

- **请求URL**
>**/api/admin/group**

- **请求方式** 
>**POST**

- **请求参数示例**
```
{
	code:"wangstest"
	description:"wangstest"
	enabled:"0"
	levelId:"001"
	name:"wangstest"
	parentId:"2b06ea24a3cf40659c183da3242cc669"
	shortName:"wangstest"
	type:"0"
}
```

- **请求参数**



| 请求参数 | 参数类型 | 参数说明 |
| - | :-: | -: |
| data | [Group](#group) | 组织机构实体 |

- **返回示例**

```
{
"status":200,    
"data":{  
       "id":"cea11e692dbe4daf862218e6508932c6",  
       "name":"wangstest",  
       "code":"wangstest",  
       "type":"0",  
       "levelId":"001",  
       "crtUserName":"Mr.AG",  
       "crtUserId":"1",  
       "crtTime":"2018-09-19 11:44:20",  
       "updUserName":"Mr.AG",  
       "updUserId":"1",  
       "updTime":"2018-09-19 11:44:20",  
       "parentId":"2b06ea24a3cf40659c183da3242cc669",
       "tenantId":"c3a5b4fd3cad421bbb1430e07e6c0cdb",
       "shortName":"wangstest",
       "description":"test",
       }  
}
```
- **返回参数**

| 返回参数 | 参数类型 | 参数说明 |
| :-------- | :--------| :------ |
| status | int | 请求成功与否 |
| data | [Group](#group) | 组织机构实体 |

#####**2、**组织机构--修改 #####
- **请求URL**
> **/api/admin/group + {id}**

- **请求方式**
> **PUT**

- **请求参数示例**
```
{
	id: "cea11e692dbe4daf862218e6508932c6",
	code:"wangstest"
	crtTime:"2018-09-19 11:44:20"
	crtUserId:"1"
	crtUserName:"Mr.AG"
	description:"test"
	enabled:"1"
	groupName:"子节点2"
	levelId:"001"
	name:"wangstest"
	parentId:"2b06ea24a3cf40659c183da3242cc669"
	shortName:"wangstest"
	tenantId:"c3a5b4fd3cad421bbb1430e07e6c0cdb"
	type:"0"
	updTime:"2018-09-19 11:44:20"
	updUserId:"1"
	updUserName:"Mr.AG"
}
```

- **请求参数**

| 参数名称 | 参数类型 | 参数说明 |
| :-------- | :--------| :------ |
| id | String | 组织机构id |
| data | [Group](#group) | 组织机构实体 |


- **返回参数示例**

```
{
"status":200,    
"data":{  
       "id":"cea11e692dbe4daf862218e6508932c6",  
       "name":"wangstest",  
       "code":"wangstest",  
       "type":"0",  
       "levelId":"001",  
       "crtUserName":"Mr.AG",  
       "crtUserId":"1",  
       "crtTime":"2018-09-19 11:44:20",  
       "updUserName":"Mr.AG",  
       "updUserId":"1",  
       "updTime":"2018-09-19 11:44:20",  
       "parentId":"2b06ea24a3cf40659c183da3242cc669",
       "tenantId":"c3a5b4fd3cad421bbb1430e07e6c0cdb",
       "shortName":"wangstest",
       "description":"test",
       }  
}
```

- **返回参数**

| 返回参数 | 参数类型 | 参数说明 |
| :-------- | :--------| :------ |
| status | int | 请求成功与否 |
| data | [Group](#group) | 组织机构实体 |

#####**3、**组织机构--删除 #####

- **请求的URL**
> '/api/admin/group/' + id

- **请求方式**
> **DELETE**


- **请求参数示例**

```
{
 "id":"cea11e692dbe4daf862218e6508932c6"
}
```

- **请求参数**

| 参数名称 | 参数类型 | 参数说明 |
| --- | --- | --- |
| id | String | 组织机构id |



- **返回参数示例**

```
{
"status":200
}
```
- **返回参数**

| 返回参数 | 参数类型 | 参数说明 |
| :-------- | :--------| :------ |
| status | int | 请求成功与否 |

#####**4、**组织机构--查询 #####

- **请求的URL**
> /api/admin/group/groupNode

- **请求方式**
> **GET**

- **请求参数示例**

```
/api/admin/group/groupNode?limit=20&page=1&id=d8bb&name=wangs&code=wangs&type=0&levelId=002&enabled=1
```

- **请求参数**

| 参数名称 | 参数类型 | 参数说明 | 备注 |
| --- | --- | --- | --- |
| limit | int | 每页消息条数 | 分页查询时需传此参数 |
| page | int | 页数 | 分页查询时需传此参数 |
| id | String | 组织机构ID | 此参数非必填项 |
| name | String | 机构名称 | 此参数非必填项 |
| code | String | 机构代码 | 此参数非必填项 |
| type | String | 类型 | 此参数非必填项 |
| levelId | String | 机构级次ID | 此参数非必填项 |
| enabled | String | 是否启用 | 此参数非必填项 |

- **返回示例**

```
{
"status":200,
"data":
	{
	"total":1,
	"rows":[{
			"id":"6ccef6298e6b4128b05d4cd55fe2bb3f",
			"name":"wangss",
			"code":"dsdsfsdfsd",
			"type":"0",
			"levelId":"001",
			"crtUserName":"Mr.AG",
			"crtUserId":"1",
			"crtTime":"2018-09-10 18:21:15",
			"updUserName":"Mr.AG",
			"updUserId":"1",
			"updTime":"2018-09-11 18:25:42",
			"parentId":"2b06ea24a3cf40659c183da3242cc669",
			"tenantId":"ac88ceb386aa4231b09bf472cb937c24",
			"shortName":"wangssss",
			"enabled":"1",
			}]
	}
}
```
- **返回参数**

| 参数名称 | 参数类型 | 参数说明 |
| --- | --- | --- |--- |
| status | int | 请求成功与否 |  |
| data | String | 返回的数据集 |  |
| message | String | 返回错误信息(当正确返回时该属性不会出现) |  |
| total | String | 返回数据的总条数 |  |
| rows | [Group](#group)[] | 数据数组，数组中每条数据类型为[Group](#group) |  |

#####**5、**获取组织机构树 #####

- **请求URL**
>**/api/admin/group/tree**

- **请求方式** 
>**GET**

- **请求参数**
> **无**

- **返回示例**

```
    {
        "id": "d8bb",
        "parentId": "-1",
        "children": [
            {
                "id": "2b06ea24a3cf40659c183da3242cc669",
                "parentId": "d8bb",
                "children": [
                    {
                        "id": "6ccef6298e6b4128b05d4cd55fe2bb3f",
                        "parentId": "2b06ea24a3cf40659c183da3242cc669",
                        "children": [],
                        "label": "wangss",
                        "code": "dsdsfsdfsd"
                    }
                ],
                "label": "子节点2",
                "code": "1518502802626_tmp"
            }
    }
```

- **返回参数**

| 返回参数 | 参数类型 | 参数说明 |
| - | :-: | -: |
| status | int | 请求成功与否 |
| data | [Group](#group) | 组织机构实体 |
| message | String | 返回错误信息(当正确返回时该属性不会出现) |


#####**6、**获取机构级次列表 #####

- **请求URL**
>**/api/admin/groupLevel/all**

- **请求方式** 
>**GET**

- **请求参数**
>**无**

- **返回示例**
```
{
    "status": 200,
    "data": [
        {
            "levelId": "001",
            "name": "省级",
            "orderCode": "1",
        },
        {
            "levelId": "002",
            "name": "地市级",
            "orderCode": "2",
        },
        {
            "levelId": "003",
            "name": "县区级",
            "orderCode": "3",
        },
        {
            "levelId": "004",
            "name": "乡镇级",
            "orderCode": "4",
        },
        {
            "levelId": "005",
            "name": "片/小组",
            "orderCode": "5",
        }
    ]
}
```

- **返回参数**

| 返回参数 | 参数类型 | 参数说明 |
| - | :-: | -: |
| status | int | 请求成功与否 |
| data | [GroupLevel](#groupLevel)[] | 机构级次实体数组 |
| message | String | 返回错误信息（当正确返回时该属性不会出现) |

#####**7、**验证组织机构信息插入数据库时字段值是否重复 #####

- **请求URL**
>**/api/admin/group/checkRepeat**

- **请求方式** 
>**GET**
>
- **请求参数示例**

```
/api/admin/group/checkRepeat?id=6ccef6298e6b4128b05d4cd55fe2bb3f&shortName=wangss 
```

- **请求参数**

| 参数名称 | 参数类型 | 参数说明 | 备注 |
| --- | --- | --- | --- |
| id | String | 组织机构ID | 当为修改操作时此参数为必填项 |
| code | String | 机构代码 | 此参数非必填项 |
| name | String | 机构名称 | 此参数非必填项 |
| shortName | String | 机构简称 | 此参数非必填项 |

- **返回示例**
```
{
"status":200,    
"data":{  
       "id":"cea11e692dbe4daf862218e6508932c6",  
       "name":"wangstest",  
       "code":"wangstest",  
       "type":"0",  
       "levelId":"001",  
       "crtUserName":"Mr.AG",  
       "crtUserId":"1",  
       "crtTime":"2018-09-19 11:44:20",  
       "updUserName":"Mr.AG",  
       "updUserId":"1",  
       "updTime":"2018-09-19 11:44:20",  
       "parentId":"2b06ea24a3cf40659c183da3242cc669",
       "tenantId":"c3a5b4fd3cad421bbb1430e07e6c0cdb",
       "shortName":"wangstest",
       "description":"test",
       }  
}
```

- **返回参数**

| 返回参数 | 参数类型 | 参数说明 |
| - | :-: | -: |
| status | int | 请求成功与否 |
| data | [Group](#group)[] | 组织机构实体数组 |
| message | String | 返回错误信息（当正确返回时该属性不会出现) |


####**菜单管理接口** ####

#####**1、**菜单管理--新增 #####

- **请求URL**
>**/api/admin/menu**

- **请求方式** 
>**POST**

- **请求参数示例**
```
{
	code:"wangstest"
	description:"wangstest"	
	href:"wangstest"
	icon:"wangstest"
	id:null
	parentId:"7a0a75752c7d422abd2e30b7aad744d7"
	path:"wangstest"
	title:"wangstest"
}
```
- **请求参数**

| 请求参数 | 参数类型 | 参数说明 |
| - | :-: | -: |
| data | [Menu](#menu) | 菜单管理实体 |


- **返回示例**

```
{
	"status":200,	
	"data"{	
			"code":"wangstest",
			"title":"wangstest",
			"parentId":"7a0a75752c7d422abd2e30b7aad744d7",
			"href":"wangstest",
			"icon":"wangstest",
			"description":"wangstest",
			"crtTime":"2018-09-20 13:55:48",
			"crtUser":"1",
			"crtName":"Mr.AG",
			"updTime":"2018-09-20 13:55:48",
			"updUser":"1",
			"updName":"Mr.AG",
			"path":"/adminSys/orgManager/wangstest",
			"tenantId":"c3a5b4fd3cad421bbb1430e07e6c0cdb"
			}
}
```
- **返回参数**

| 返回参数 | 参数类型 | 参数说明 |
| :-------- | :--------| :------ |
| status | int | 请求成功与否 |
| data | [Menu](#menu) | 菜单管理实体 |



#####**2、**菜单管理--修改 #####

- **请求URL**
>**/api/admin/menu/ + ｛id｝**

- **请求方式** 
>**PUT**

- **请求参数示例**
```
{	
	id:"72c4f6b5cc0b4c738c9c6a3a92885aa2"
	code:"wangstest"
	description:"wangstest"
	enabled:"0"
	levelId:"001"
	name:"wangstest"
	parentId:"2b06ea24a3cf40659c183da3242cc669"
	shortName:"wangstest"
	type:"0"
}
```
- **请求参数**

| 请求参数 | 参数类型 | 参数说明 |
| - | :-: | -: |
| id | String | 菜单ID |
| data | [Menu](#menu) | 菜单管理实体 |


- **返回示例**
```
{
	"status":200,	
	"data"{	
			"id":"72c4f6b5cc0b4c738c9c6a3a92885aa2",
			"code":"wangstest",
			"title":"wangstest",
			"parentId":"7a0a75752c7d422abd2e30b7aad744d7",
			"href":"wangstest",
			"icon":"wangstest",
			"description":"wangstest",
			"crtTime":"2018-09-20 13:55:48",
			"crtUser":"1",
			"crtName":"Mr.AG",
			"updTime":"2018-09-20 13:55:48",
			"updUser":"1",
			"updName":"Mr.AG",
			"path":"/adminSys/orgManager/wangstest",
			"tenantId":"c3a5b4fd3cad421bbb1430e07e6c0cdb"
			}
}
```

- **返回参数**

| 返回参数 | 参数类型 | 参数说明 |
| :-------- | :--------| :------ |
| status | int | 请求成功与否 |
| data | [Menu](#menu) | 菜单管理实体 |


#####**3、**菜单管理--删除 #####

- **请求URL**
>**/api/admin/menu/ + ｛id｝**

- **请求方式** 
>**DELETE**


- **请求参数示例**

```
{
 "id":"cea11e692dbe4daf862218e6508932c6"
}
```
- **请求参数**

| 请求参数 | 参数类型 | 参数说明 |
| - | :-: | -: |
| id | String | 菜单ID |


- **返回示例**
```
{
	"status":200
}
```
- **返回参数**

| 返回参数 | 参数类型 | 参数说明 |
| :-------- | :--------| :------ |
| status | int | 请求成功与否 |


##### **4、**获取菜单管理树 #####
- **请求URL**
> **/api/admin/menu/tree**
- **请求方式**
> **GET**
- **请求参数**
> **无**

- **返回示例**
```
{
    "status": 200,
    "data": [
        {
            "id": "13",
            "parentId": "-1",
            "children": [
                {
                    "id": "5",
                    "parentId": "13",
                    "children": [
                        {
                            "id": "1",
                            "parentId": "5",
                            "children": [],
                            "icon": "user",
                            "title": "用户管理",
                            "href": "/admin/user",
                            "spread": false,
                            "path": "/adminSys/baseManager/userManager",
                            "code": "userManager",
                            "orderNum": 1,
                            "label": "用户管理"
                        },
                        {
                            "id": "6",
                            "parentId": "5",
                            "children": [],
                            "icon": "category",
                            "title": "菜单管理",
                            "href": "/admin/menu",
                            "spread": false,
                            "path": "/adminSys/baseManager/menuManager",
                            "code": "menuManager",
                            "orderNum": 2,
                            "label": "菜单管理"
                        },
                        {
                            "id": "7",
                            "parentId": "5",
                            "children": [],
                            "icon": "group_fill",
                            "title": "角色权限管理",
                            "href": "/admin/group",
                            "spread": false,
                            "path": "/adminSys/baseManager/groupManager",
                            "code": "groupManager",
                            "orderNum": 3,
                            "label": "角色权限管理"
                        },
                        {
                            "id": "8",
                            "parentId": "5",
                            "children": [],
                            "icon": "group",
                            "title": "角色类型管理",
                            "href": "/admin/groupType",
                            "spread": false,
                            "path": "/adminSys/baseManager/groupTypeManager",
                            "code": "groupTypeManager",
                            "orderNum": 4,
                            "label": "角色类型管理"
                        },
                        {
                            "id": "21",
                            "parentId": "5",
                            "children": [],
                            "icon": "documentation",
                            "title": "数据字典",
                            "href": "",
                            "spread": false,
                            "path": "/adminSys/baseManager/dictManager",
                            "code": "dictManager",
                            "orderNum": 5,
                            "label": "数据字典"
                        },
                        {
                            "id": "27",
                            "parentId": "5",
                            "children": [],
                            "icon": "log",
                            "title": "操作日志",
                            "href": "/admin/gateLog",
                            "spread": false,
                            "path": "/adminSys/baseManager/gateLogManager",
                            "code": "gateLogManager",
                            "orderNum": 6,
                            "label": "操作日志"
                        },
                	{
                    "id": "7a0a75752c7d422abd2e30b7aad744d7",
                    "parentId": "13",
                    "children": [
                        {
                            "id": "b5211cc69d234b28a97f27e63edc9a58",
                            "parentId": "7a0a75752c7d422abd2e30b7aad744d7",
                            "children": [],
                            "icon": "depart",
                            "title": "部门管理",
                            "href": "/org/depart",
                            "spread": false,
                            "path": "/adminSys/orgManager/departManager",
                            "code": "departManager",
                            "orderNum": 1,
                            "label": "部门管理"
                        }
                    ],
                    "icon": "org",
                    "title": "组织部门管理",
                    "href": "/org",
                    "spread": false,
                    "path": "/adminSys/orgManager",
                    "code": "orgManager",
                    "orderNum": 2,
                    "label": "组织部门管理"
                }
    ]
}
```
- **返回参数**

| 返回参数 | 参数类型 | 参数说明 |
| :-------- | :--------| :------ |
| status | int | 请求成功与否 |
| data | [Menu](#menu) | 菜单树 |

#####**5、**根据父ID查询其下所有子菜单信息 #####

- **请求URL**
>**/api/admin/menu/page**

- **请求方式** 
>**get**

- **请求参数示例**
```
{
	page: 1
	limit: 10
	parentId: 5
}
```
- **请求参数**

| 参数名称 | 参数类型 | 参数说明 | 备注 |
| --- | --- | --- | --- |
| limit | int | 每页消息条数 | 分页查询时需传此参数 |
| page | int | 页数 | 分页查询时需传此参数 |
| parentId | String | 菜单功能ID | 此参数为必填项 |


- **返回示例**

```
{
    "status": 200,
    "data": {
        "total": 7,
        "rows": [
            {
                "id": "09a76a3eee28468d84b34c1654014bed",
                "code": "dddddddddd",
                "title": "testFunction",
                "parentId": "7574b969c9fa4e5895d6cc9c2b8a9a62",
                "href": "",
                "icon": "",
                "description": "ccccccccc",
                "orderNum": 0,
                "crtTime": "2018-08-25 14:37:22",
                "crtUser": "1",
                "crtName": "Mr.AG",
                "updTime": "2018-08-25 17:07:03",
                "updUser": "1",
                "updName": "Mr.AG",
                "path": "/adminSys/baseManager/tenantManager/dddddddddd",
                "tenantId": "c3a5b4fd3cad421bbb1430e07e6c0cdb",
                "displayString": "kf.plt.admin.sysmgnt.entity.Menu@29b443d5"
            },
            {
                "id": "35eca712f7cf40fe8dd6261995dd158a",
                "code": "wangss",
                "title": "wangss",
                "parentId": "7574b969c9fa4e5895d6cc9c2b8a9a62",
                "type": "menu",
                "orderNum": 0,
                "crtTime": "2018-08-25 11:21:52",
                "crtUser": "1",
                "crtName": "Mr.AG",
                "updTime": "2018-08-25 11:21:52",
                "updUser": "1",
                "updName": "Mr.AG",
                "path": "/adminSys/baseManager/tenantManager/wangss",
                "tenantId": "c3a5b4fd3cad421bbb1430e07e6c0cdb",
                "displayString": "kf.plt.admin.sysmgnt.entity.Menu@2489a4ed"
            },
            {
                "id": "5ad8f8e8df3b493c8d0a32dbb2d0e151",
                "code": "dddd",
                "title": "testFun",
                "parentId": "7574b969c9fa4e5895d6cc9c2b8a9a62",
                "href": "",
                "icon": "",
                "description": "",
                "orderNum": 0,
                "crtTime": "2018-08-25 14:24:03",
                "crtUser": "1",
                "crtName": "Mr.AG",
                "updTime": "2018-08-25 14:24:03",
                "updUser": "1",
                "updName": "Mr.AG",
                "path": "/adminSys/baseManager/tenantManager/dddd",
                "tenantId": "c3a5b4fd3cad421bbb1430e07e6c0cdb",
                "displayString": "kf.plt.admin.sysmgnt.entity.Menu@7663a3bd"
            },
            {
                "id": "8aba4126dc7746e38f58ebe70794cfac",
                "code": "wangs",
                "title": "wangs",
                "parentId": "7574b969c9fa4e5895d6cc9c2b8a9a62",
                "href": "/wangs",
                "icon": "wangs",
                "orderNum": 0,
                "crtTime": "2018-08-21 17:12:41",
                "crtUser": "1",
                "crtName": "Mr.AG",
                "updTime": "2018-08-21 17:12:41",
                "updUser": "1",
                "updName": "Mr.AG",
                "path": "/adminSys/baseManager/tenantManager/wangs",
                "tenantId": "c3a5b4fd3cad421bbb1430e07e6c0cdb",
                "displayString": "kf.plt.admin.sysmgnt.entity.Menu@69005fb4"
            },
            {
                "id": "96e1e3f97f07413c947aaaf8c8ae7d1f",
                "code": "wang",
                "title": "wang",
                "parentId": "7574b969c9fa4e5895d6cc9c2b8a9a62",
                "type": "menu",
                "orderNum": 0,
                "crtTime": "2018-08-25 11:59:22",
                "crtUser": "1",
                "crtName": "Mr.AG",
                "updTime": "2018-08-25 11:59:22",
                "updUser": "1",
                "updName": "Mr.AG",
                "path": "/adminSys/baseManager/tenantManager/wang",
                "tenantId": "c3a5b4fd3cad421bbb1430e07e6c0cdb",
                "displayString": "kf.plt.admin.sysmgnt.entity.Menu@622103aa"
            },
            {
                "id": "bda07b99a71147d69145ff6fba795a1e",
                "code": "ddddddd",
                "title": "test",
                "parentId": "7574b969c9fa4e5895d6cc9c2b8a9a62",
                "href": "",
                "icon": "",
                "description": "",
                "orderNum": 0,
                "crtTime": "2018-08-25 14:36:27",
                "crtUser": "1",
                "crtName": "Mr.AG",
                "updTime": "2018-08-25 14:36:27",
                "updUser": "1",
                "updName": "Mr.AG",
                "path": "/adminSys/baseManager/tenantManager/ddddddd",
                "tenantId": "c3a5b4fd3cad421bbb1430e07e6c0cdb",
                "displayString": "kf.plt.admin.sysmgnt.entity.Menu@be66dcf"
            },
            {
                "id": "wangs",
                "code": "wangwang",
                "title": "wangswang",
                "parentId": "7574b969c9fa4e5895d6cc9c2b8a9a62",
                "type": "menu",
                "orderNum": 0,
                "crtTime": "2018-08-25 12:30:32",
                "crtUser": "1",
                "crtName": "Mr.AG",
                "updTime": "2018-08-25 12:30:32",
                "updUser": "1",
                "updName": "Mr.AG",
                "path": "/adminSys/baseManager/tenantManager/wangwang",
                "tenantId": "c3a5b4fd3cad421bbb1430e07e6c0cdb",
                "displayString": "kf.plt.admin.sysmgnt.entity.Menu@60735945"
            }
        ]
    }
}
```
- **返回参数**

| 参数名称 | 参数类型 | 参数说明 |
| --- | --- | --- |--- |
| status | int | 请求成功与否 |  |
| data | String | 返回的数据集 |  |
| message | String | 返回错误信息(当正确返回时该属性不会出现) |  |
| total | String | 返回数据的总条数 |  |
| rows | [Menu](#menu)[] | 数据数组，数组中每条数据类型为[Menu](#menu) |  |


####**角色管理接口** ####
#####**1、**角色管理--新增 #####

- **请求URL**
>**/api/admin/role/roleName**

- **请求方式** 
>**POST**

- **请求参数示例**
```
{
     name: "wangshuntest",
	 roleType: "role",
	 parentId: -1
}
```

- **请求参数**



| 请求参数 | 参数类型 | 参数说明 |
| - | :-: | -: |
| data | [Role](#role) | 角色管理实体 |

- **返回示例**

```
{
"status":200,    
"data":{  
       "id":"cea11e692dbe4daf862218e6508932c6",  
       "name":"wangstest",  
       "code":"wangstest",  
       "type":"0",  
       "levelId":"001",  
       "crtUserName":"Mr.AG",  
       "crtUserId":"1",  
       "crtTime":"2018-09-19 11:44:20",  
       "updUserName":"Mr.AG",  
       "updUserId":"1",  
       "updTime":"2018-09-19 11:44:20",  
       "parentId":"2b06ea24a3cf40659c183da3242cc669",
       "tenantId":"c3a5b4fd3cad421bbb1430e07e6c0cdb",
       "shortName":"wangstest",
       "description":"test",
       }  
}
```
- **返回参数**

| 返回参数 | 参数类型 | 参数说明 |
| :-------- | :--------| :------ |
| status | int | 请求成功与否 |
| data | [Role](#role) | 角色管理实体 |

#####**2、**角色管理--修改 #####

- **请求URL**
>**/api/admin/role/updateById/ + ｛id｝**

- **请求方式** 
>**put**

- **请求参数示例**
```
{
	crtTime:"2018-08-30 16:19:30"
	crtUserId:"1"
	crtUserName:"Mr.AG"
	description:"tttttadadasfadsfsdfsdaas12213ss"
	id:"1ae202a71faf41a4a4c052b2e3bd75b3"
	name:"tttt45t5ddd"
	parentId:"-1"
	path:"/null"
	roleType:"role"
	tenantId:"c3a5b4fd3cad421bbb1430e07e6c0cdb"
	updTime:"2018-11-07 11:20:56"
	updUserId:"1"
	updUserName:"Mr.AG"
}
```

- **请求参数**



| 请求参数 | 参数类型 | 参数说明 |
| - | :-: | -: |
| data | [Role](#role) | 角色管理实体 |

- **返回示例**

```
{
"status":200,    
"data":{  
       "id":"cea11e692dbe4daf862218e6508932c6",  
       "name":"wangstest",  
       "code":"wangstest",  
       "type":"0",  
       "levelId":"001",  
       "crtUserName":"Mr.AG",  
       "crtUserId":"1",  
       "crtTime":"2018-09-19 11:44:20",  
       "updUserName":"Mr.AG",  
       "updUserId":"1",  
       "updTime":"2018-09-19 11:44:20",  
       "parentId":"2b06ea24a3cf40659c183da3242cc669",
       "tenantId":"c3a5b4fd3cad421bbb1430e07e6c0cdb",
       "shortName":"wangstest",
       "description":"test",
       }  
}
```
- **返回参数**

| 返回参数 | 参数类型 | 参数说明 |
| :-------- | :--------| :------ |
| status | int | 请求成功与否 |
| data | [Role](#role) | 角色管理实体 |

#####**3、**角色管理--删除 #####

- **请求URL**
>**/api/admin/role/ + ｛id｝**

- **请求方式** 
>**DELETE**

- **请求参数示例**
```
{
 "id":"cea11e692dbe4daf862218e6508932c6"
}
```

- **请求参数**


| 请求参数 | 参数类型 | 参数说明 |
| - | :-: | -: |
| id | String | 角色ID |

- **返回示例**

```
{
"status":200,      
}
```
- **返回参数**

| 返回参数 | 参数类型 | 参数说明 |
| :-------- | :--------| :------ |
| status | int | 请求成功与否 |


#####**4、**角色管理--查询 #####

- **请求的URL**
> /api/admin/role/

- **请求方式**
> **GET**

- **请求参数示例**

```
/api/admin/role/?limit=20&page=1&id=d8bb
```

- **请求参数**

| 参数名称 | 参数类型 | 参数说明 | 备注 |
| --- | --- | --- | --- |
| limit | int | 每页消息条数 | 分页查询时需传此参数 |
| page | int | 页数 | 分页查询时需传此参数 |
| id | String | 角色ID | 此参数非必填项 |
| name | String | 角色名称 | 此参数非必填项 |
- **返回示例**

```
{
"status":200,
"data":
	{
	"total":1,
	"rows":	[{
                "id": "1ae202a71faf41a4a4c052b2e3bd75b3",
                "name": "tttt45t5ddd",
                "parentId": "-1",
                "path": "/null",
                "roleType": "role",
                "description": "tttttadadasfadsfsdfsdaas12213ss",
                "crtUserName": "Mr.AG",
                "crtUserId": "1",
                "crtTime": "2018-08-30 16:19:30",
                "updUserName": "Mr.AG",
                "updUserId": "1",
                "updTime": "2018-11-13 10:04:27",
                "tenantId": "c3a5b4fd3cad421bbb1430e07e6c0cdb",
                "displayString": "kf.plt.admin.sysmgnt.entity.Role@25e9b916"
			}]
	}
}
```
- **返回参数**

| 参数名称 | 参数类型 | 参数说明 |
| --- | --- | --- |--- |
| status | int | 请求成功与否 |  |
| data | String | 返回的数据集 |  |
| message | String | 返回错误信息(当正确返回时该属性不会出现) |  |
| total | String | 返回数据的总条数 |  |
| rows | [Role](#role)[] | 数据数组，数组中每条数据类型为[Role](#role) |  |



#####**4、**角色管理--权限分配 #####

- **请求的URL**
> /api/admin/role/authority/saveRoleAuthority

- **请求方式**
> **POST**

- **请求参数示例**

```
{
requestRoleMenu:{
		requestMenuElement:[
							{menuId: "6", elementIdArray: ["12"]}
							]		
					}
		requestRoleMenu:[
						{
						menuIdArray:["1","6","b5211cc69d234b28a97f27e63edc9a58"]
						roleId:"366af0a7fd79453fbe54c0d24917ec4b"
						}
						]
}
```

- **请求参数**

| 参数名称 | 参数类型 | 参数说明 |
| --- | --- | --- | --- |
| RequestRoleAuthority | RequestRoleAuthority | 角色权限属性对象 |
| requestMenuElement | [RequestMenuElement](#requestMenuElement) | 菜单资源权限请求实体数组 |
| requestRoleMenu | [RequestRoleMenu](#requestRoleMenu) | 角色菜单权限请求实体 |
- **返回示例**

```
{
"status":200,
}
```
- **返回参数**

| 参数名称 | 参数类型 | 参数说明 |
| --- | --- | --- |--- |
| status | int | 请求成功与否 |


####**用户管理接口** ####

#####**1、**用户管理--新增 #####

- **请求URL**
>**/api/admin/user**

- **请求方式** 
>**POST**

- **请求参数示例**
```
{
	groupId:"33319268fc8b4fcdb4dbfc4e026825de"
	name:"zhangnian"
	password:"qaz123"
	username:"zhangnian"
}
```

- **请求参数**



| 请求参数 | 参数类型 | 参数说明 |
| - | :-: | -: |
| data | [User](#user) | 用户管理实体 |

- **返回示例**

```
{
"status":200,    
"data"{
	"id":"1aacc1e4f00a40e6bb702977dab20ba7",
	"username":"zhangnian",
	"password":"$2a$15$J13RcoNVe2AQgd3gKR2tseBFXXYn6zEeeSWFkadKeGKtZa4aFe8mu",
	"name":"zhangnian",
	"crtUserName":"Mr.AG",
	"crtUserId":"1",
	"crtTime":"2018-11-13 11:11:28",
	"updUserName":"Mr.AG",
	"updUserId":"1",
	"updTime":"2018-11-13 11:11:28",
	"isDeleted":"0",
	"isDisabled":"0",
	"groupId":"33319268fc8b4fcdb4dbfc4e026825de",
	"isSuperAdmin":"0",
	"tenantId":"c3a5b4fd3cad421bbb1430e07e6c0cdb",
     }  
}
```
- **返回参数**

| 返回参数 | 参数类型 | 参数说明 |
| :-------- | :--------| :------ |
| status | int | 请求成功与否 |
| data | [User](#user) | 用户管理实体 |




#####**2、**用户管理--修改 #####
- **请求URL**
> **/api/admin/user + {id}**

- **请求方式**
> **PUT**

- **请求参数示例**
```
{
	description:"asdasda"
	groupId:"33319268fc8b4fcdb4dbfc4e026825de"
	id:"1aacc1e4f00a40e6bb702977dab20ba7"
	name:"zhangnian"
	username:"zhangnian"
}
```

- **请求参数**

| 参数名称 | 参数类型 | 参数说明 |
| :-------- | :--------| :------ |
| id | String | 用户id |
| data | [User](#user) | 用户管理实体 |


- **返回参数示例**

```
{
"status":200,    
"data":{  
	"id":"1aacc1e4f00a40e6bb702977dab20ba7",
	"username":"zhangnian",
	"name":"zhangnian",
	"crtUserName":"Mr.AG",
	"crtUserId":"1",
	"crtTime":"2018-11-13 11:11:28",
	"updUserName":"Mr.AG",
	"updUserId":"1",
	"updTime":"2018-11-13 11:11:28",
	"isDeleted":"0",
	"isDisabled":"0",
	"groupId":"33319268fc8b4fcdb4dbfc4e026825de",
	"isSuperAdmin":"0",
	"tenantId":"c3a5b4fd3cad421bbb1430e07e6c0cdb",
     }   
}
```

- **返回参数**

| 返回参数 | 参数类型 | 参数说明 |
| :-------- | :--------| :------ |
| status | int | 请求成功与否 |
| data | [User](#user) | 用户管理实体 |


#####**3、**用户管理--删除 #####

- **请求的URL**
> '/api/admin/user/' + id

- **请求方式**
> **DELETE**


- **请求参数示例**

```
{
 "id":"1aacc1e4f00a40e6bb702977dab20ba7"
}
```

- **请求参数**

| 参数名称 | 参数类型 | 参数说明 |
| --- | --- | --- |
| id | String | 用户id |



- **返回参数示例**

```
{
"status":200
}
```
- **返回参数**

| 返回参数 | 参数类型 | 参数说明 |
| :-------- | :--------| :------ |
| status | int | 请求成功与否 |


#####**4、**用户管理--查询 #####

- **请求的URL**
> /api/admin/user/queryByGroup

- **请求方式**
> **GET**

- **请求参数示例**

```
/api/admin/user/queryByGroup?page=1&limit=20&name=shun&groupId=root
```

- **请求参数**

| 参数名称 | 参数类型 | 参数说明 | 备注 |
| --- | --- | --- | --- |
| limit | int | 每页消息条数 | 分页查询时需传此参数 |
| page | int | 页数 | 分页查询时需传此参数 |
| name | String | 用户名称 | 此参数非必填项 |
| groupId | String | 组织机构id | 此参数非必填项 |

- **返回示例**

```
{
"status":200,
"data":
	{
	"total":1,
	"rows":[{
			"id":"50eb89de305245d58e14f833cd34d8f9",
			"username":"lzk123shun",
			"password":"$2a$15$N7Bi06Ac1abmLAw9svlhC.xSl8LMQZ3kcVS62AgKUZlcWl9NxZbku",
			"name":"lzk",
			"crtUserName":"Mr.AG",
			"crtUserId":"1",
			"crtTime":"2018-11-02 14:38:57",
			"updUserName":"Mr.AG",
			"updUserId":"1"，
			"updTime":"2018-11-02 14:38:57","
			isDeleted":"0",
			"isDisabled":"0",
			"groupId":"root",
			"isSuperAdmin":"0",
			"tenantId":"c3a5b4fd3cad421bbb1430e07e6c0cdb",
			"roleName":[]
			]}
}
```
- **返回参数**

| 参数名称 | 参数类型 | 参数说明 |
| --- | --- | --- |--- |
| status | int | 请求成功与否 |  |
| data | String | 返回的数据集 |  |
| message | String | 返回错误信息(当正确返回时该属性不会出现) |  |
| total | String | 返回数据的总条数 |  |
| rows | [User](#user)[] | 数据数组，数组中每条数据类型为[User](#user) |  |


#####**5、**用户管理--分配角色 #####

- **请求的URL**
> /api/admin/roleUser/update

- **请求方式**
> **POST**

- **请求参数示例**

```
{
RequestRoleUser:{
		userId:"50eb89de305245d58e14f833cd34d8f9"，
		roleIdArray:["366af0a7fd79453fbe54c0d24917ec4b"]
}
```

- **请求参数**

| 参数名称 | 参数类型 | 参数说明 |
| --- | --- | --- | --- |
| RequestRoleUser | [RequestRoleUser](#requestRoleUser) | 用户角色权限实体 |
- **返回示例**

```
{
"status":200,
}
```
- **返回参数**

| 参数名称 | 参数类型 | 参数说明 |
| --- | --- | --- |--- |
| status | int | 请求成功与否 |




#####**6、**用户管理--查询选择的用户所拥有的角色 #####

- **请求的URL**
> /api/admin/role/roleByUser

- **请求方式**
> **GET**

- **请求参数示例**

```
{
/api/admin/role/roleByUser?userId=50eb89de305245d58e14f833cd34d8f9
```

- **请求参数**

| 参数名称 | 参数类型 | 参数说明 |
| --- | --- | --- | --- |
| userId | String | 用户id |
- **返回示例**

```
{
"status":200,
"data":[
	   {
		"id":"366af0a7fd79453fbe54c0d24917ec4b",
		"code":"dongshiz",
		"name":"董事长",
		"parentId":"-1",
		"path":"/dongshiz",
		"roleType":"org",
		"crtUserName":"测试租户",
		"crtUserId":"a1a2cb17b4f24e50bbde2f1b8a233bcb",
		"crtTime":"2018-02-13 00:04:27",
		"updUserName":"测试租户",
		"updUserId":"a1a2cb17b4f24e50bbde2f1b8a233bcb",
		"updTime":"2018-02-13 00:04:27",
		"tenantId":"c3a5b4fd3cad421bbb1430e07e6c0cdb"
		}
		]  
}
```
- **返回参数**

| 参数名称 | 参数类型 | 参数说明 |
| --- | --- | --- |--- |
| status | int | 请求成功与否 |
| rows | [Role](#role)[] | 数据数组，数组中每条数据类型为[Role](#role) |
**===========================================================================================================**
## <span id="group">组织机构实体(Group)</span>
| 参数名称 | 参数类型 | 参数说明 |
| --- | --- | --- |
| id | String | 组织机构id |
| name | String | 组织名称 |
| code | String | 编码 |
| path | String | 路径 |
| type | String | 部门类型 |
| levelId | String | 机构级次 |
| crtUserName | String | 创建人 |
| crtUserId | String | 创建人ID |
| crtTime | Date | 创建时间 |
| updUserName | String | 最后更新人 |
| updUserId | String | 最后更新人ID |
| updTime | Date | 最后更新时间 |
| parentId | String | 父ID |
| attr1 | String | 扩展1 |
| attr2 | String | 扩展2 |
| attr3 | String | 扩展3 |
| attr4 | String | 扩展4 |
| tenantId | String | 租户ID |
| extgroupId | String |  外部系统机构ID 例如：地税系统、国税系统等 |
| shortName | String | 机构简称 |
| enabled | String | 启用标记 |
| hisId | String | 历史ID |
| description | String | 描述 |

## <span id="groupLevel">机构级次实体(GroupLevel)</span>

| 参数名称 | 参数类型 | 参数说明 |
| --- | --- | --- |
| levelId | String | 机构级次id |
| name | String | 级次名称 |
| orderCode | String | 排序码 |

## <span id="menu">菜单管理实体(Menu)</span>

| 参数名称 | 参数类型 | 参数说明 |
| --- | --- | --- |
| id | String | 菜单ID |
| title | String | 菜单名称名称 |
| code | String | 路径编码 |
| herf | String | 资源路径 |
| parentId | String | 上级菜单ID |
| icon | String | 图标 |
| type | String | 类型 |
| crtUser | String | 创建人ID |
| crtTime | Date | 创建时间 |
| crtName | String | 创建用户名 |
| crtHost | String | 创建用户IP |
| updTime | Date | 更新时间 |
| orderNum | Integer | 排序 |
| updUser | String | 更新用户ID |
| updName | String | 更新用户名称 |
| updHost | String | 更新用户IP |
| path | String | 菜单路径 |
| tenantId | String | 租户ID |
| image | String | 图片 |
| hisId | String | 历史ID |
| description | String | 描述 |


## <span id="role">角色管理实体(Role)</span>

| 参数名称 | 参数类型 | 参数说明 |
| --- | --- | --- |
| id | String | 角色ID |
| code | String | 角色编码 |
| name | String | 角色名称 |
| parentId | String | 上级角色ID节点 |
| path | String | 路径 |
| type | String | 机关：“0”、部门：”1“ 默认：空 |
| roleType | String | 角色类型 |
| crtUserName | String | 创建用户名 |
| crtUserId | String | 创建用户ID |
| crtTime | Data | 创建时间 |
| updUserName | String | 更新用户名称 |
| updTime | Date | 更新时间 |
| updUserId | String | 更新用户ID |
| tenantId | String | 租户ID |
| enabled | String | 可用状态 |
| hisId | String | 历史ID |
| description | String | 描述 |

## <span id="requestMenuElement">菜单资源权限请求实体(RequestMenuElement)</span>

| 参数名称 | 参数类型 | 参数说明 |
| --- | --- | --- |
| menuId | String | 菜单ID |
| elementIdArray | String[] | 资源id数组 |


## <span id="requestRoleMenu">角色菜单权限请求实体(RequestRoleMenu)</span>

| 参数名称 | 参数类型 | 参数说明 |
| --- | --- | --- |
| roleId | String | 角色ID |
| menuIdArray | String[] | 菜单id数组 |

## <span id="user">用户管理实体(User)</span>

| 参数名称 | 参数类型 | 参数说明 |
| --- | --- | --- |
| id | String | 用户ID |
| username | String | 帐号 |
| password | String | 密码 |
| name | String | 用户名称 |
| birthday | String | 生日 |
| address | String | 地址 |
| mobilePhone | String | 移动电话 |
| telPhone | String | 固定电话 |
| email | String | 邮件 |
| sex | String | 性别 |
| type | String | 类型 |
| description | String | 描述 |
| crtUserName | String | 创建者名称 |
| crtUserId | String | 创建者ID |
| crtTime | Date | 创建时间 |
| updUserName | String | 更新用户名称 |
| updUserId | String | 更新用户ID |
| updTime | Date | 更新时间 |
| isDeleted | String | 是否删除 |
| isDisabled | String | 是否启用 |
| groupId | String | 组织机构ID |
| isSuperAdmin | String | 是否是超级管理员 |
| tenantId | String | 租户ID |

## <span id="requestRoleUser">用户角色权限请求实体(RequestRoleUser)</span>

| 参数名称 | 参数类型 | 参数说明 |
| --- | --- | --- |
| userId | String | 用户ID |
| roleIdArray | String[] | 角色id数组 |


## 文档编写

| 版本号      |    说明 |   修改人   |  
| :-------- | :--------| :------ |
| v1.0.0 | 创建文档 | wangs|