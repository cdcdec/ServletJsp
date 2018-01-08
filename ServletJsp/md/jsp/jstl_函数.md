### JSTL sql

#### sql:setDataSource

#####语法格式

```
<sql:setDataSource>标签用来配置数据源或者将数据源信息存储在某作用域的变量中，用来作为其它JSTL数据库操作的数据源。
<sql:setDataSource
  var="<string>"
  scope="<string>"
  dataSource="<string>"
  driver="<string>"
  url="<string>"
  user="<string>"
  password="<string>"/>
```

##### 属性

| 属性         | 描述             | 是否必要 | 默认值  |
| ---------- | -------------- | ---- | ---- |
| driver     | 要注册的JDBC驱动     | 否    | 无    |
| url        | 数据库连接的JDBC URL | 否    | 无    |
| user       | 数据库用户名         | 否    | 无    |
| password   | 数据库密码          | 否    | 无    |
| dataSource | 事先准备好的数据库      | 否    | 无    |
| var        | 代表数据库的变量       | 否    | 默认设置 |
| scope      | var属性的作用域      | 否    | Page |
#### sql:query

#####语法格式

```
<sql:query>标签用来运行SQL SELECT语句，还有就是将结果存储在作用域变量中。
<sql:query
  var="<string>"
  scope="<string>"
  sql="<string>"
  dataSource="<string>"
  startRow="<string>"
  maxRows="<string>"/>
```

##### 属性

| 属性         | 描述                          | 是否必要 | 默认值   |
| ---------- | --------------------------- | ---- | ----- |
| sql        | 需要执行的SQL命令（返回一个ResultSet对象) | 否    | Body  |
| dataSource | 所使用的数据库连接（覆盖默认值）            | 否    | 默认数据库 |
| maxRows    | 存储在变量中的最大结果数                | 否    | 无穷大   |
| startRow   | 开始记录的结果的行数                  | 否    | 0     |
| var        | 代表数据库的变量                    | 否    | 默认设置  |
| scope      | var属性的作用域                   | 否    | Page  |
#### sql:update

#####语法格式

```
<sql:update>标签用来执行一个没有返回值的SQL语句，比如SQL INSERT，UPDATE，DELETE语句
<sql:update var="<string>" scope="<string>" sql="<string>" dataSource="<string>"/>
```

##### 属性

| 属性         | 描述                         | 是否必要 | 默认值   |
| ---------- | -------------------------- | ---- | ----- |
| sql        | 需要执行的SQL命令（不返回ResultSet对象） | 否    | Body  |
| dataSource | 所使用的数据库连接（覆盖默认值）           | 否    | 默认数据库 |
| var        | 用来存储所影响行数的变量               | 否    | 无     |
| scope      | var属性的作用域                  | 否    | Page  |


#### sql:param

#####语法格式

```
<sql:param>标签与<sql:query>标签和<sql:update>标签嵌套使用，用来提供一个值占位符。如果是一个null值，则将占位符设为SQL NULL。
<sql:param value="<string>"/>
```

##### 属性

| 属性   | 描述       | 是否必要 | 默认值  |
| ---- | -------- | ---- | ---- |
| var  | 需要设置的参数值 | 否    | Body |
#### sql:dateParam

#####语法格式

```
<sql:dateParam>标签与<sql:query>标签和<sql:update>标签嵌套使用，用来提供日期和时间的占位符。如果是一个null值，则将占位符设为SQL NULL。
<sql:dateParam value="<string>" type="<string>"/>
```

##### 属性

| 属性    | 描述                                       | 是否必要 | 默认值       |
| ----- | ---------------------------------------- | ---- | --------- |
| value | 需要设置的日期参数（java.util.Date）                | 否    | Body      |
| type  | DATE （只有日期），TIME（只有时间）， TIMESTAMP （日期和时间） | 否    | TIMESTAMP |


#### sql:transaction

#####语法格式

```
<sql:transaction>标签用来将<sql:query>标签和<sql:update>标签封装至事务中。可以将大量的<sql:query>和<sql:update>操作装入<sql:transaction>中，使它们成为单一的事务。它确保对数据库的修改不是被提交就是被回滚。
<sql:transaction dataSource="<string>" isolation="<string>"/>
```

##### 属性

| 属性   | 描述   | 是否必要 | 默认值  |
| ---- | ---- | ---- | ---- |
| dataSource | 所使用的数据库（覆盖默认值）   | 否    | 默认数据库    |
| isolation | 事务隔离等级 （READ_COMMITTED,，READ_UNCOMMITTED， REPEATABLE_READ或 SERIALIZABLE）   | 否    | 数据库默认    |
