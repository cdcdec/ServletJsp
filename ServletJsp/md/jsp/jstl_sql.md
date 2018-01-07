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


#### c:catch

#####语法格式

```
用来处理产生错误的异常状况，并且将错误信息储存起来
<c:catch var="<string>">
...
</c:catch>
```

##### 属性

| 属性   | 描述          | 是否必要 | 默认值  |
| ---- | ----------- | ---- | ---- |
| var  | 用来储存错误信息的变量 | 否    | None |
#### c:if

#####语法格式

```
判断表达式的值，如果表达式的值为 true 则执行其主体内容
<c:if test="<boolean>" var="<string>" scope="<string>">
   ...
</c:if>
```

##### 属性

| 属性    | 描述          | 是否必要 | 默认值  |
| ----- | ----------- | ---- | ---- |
| test  | 条件          | 是    | 无    |
| var   | 用于存储条件结果的变量 | 否    | 无    |
| scope | var属性的作用域   | 否    | page |

#### c:choose

#####语法格式

```
<c:choose>
    <c:when test="<boolean>">
        ...
    </c:when>
    <c:when test="<boolean>">
        ...
    </c:when>
    ...
    ...
    <c:otherwise>
        ...
    </c:otherwise>
</c:choose>
```

##### 属性

```
<c:choose>标签没有属性。
<c:when>标签只有一个属性，在下表中有给出。
<c:otherwise>标签没有属性。
```


| 属性   | 描述   | 是否必要 | 默认值  |
| ---- | ---- | ---- | ---- |
| test | 条件   | 是    | 无    |

#### c:import

#####语法格式

```
<c:import>标签提供了所有<jsp:include>行为标签所具有的功能，同时也允许包含绝对URL
<c:import
   url="<string>"
   var="<string>"
   scope="<string>"
   varRender="<string>"
   context="<string>"
   charEncoding="<string>"/>
```

##### 属性

| 属性           | 描述                                      | 是否必要 | 默认值        |
| ------------ | --------------------------------------- | ---- | ---------- |
| url          | 待导入资源的URL ，可以是相对路径和绝对路径，并且可以导入其他主机资源    | 是    | 无          |
| context      | 当使用相对路径访问外部context资源时，context指定了这个资源的名字 | 否    | 当前应用程序     |
| charEncoding | 所引入的数据的字符编码集                            | 否    | ISO-8859-1 |
| var          | 用于存储所引入的文本的变量                           | 否    | 无          |
| scope        | var属性的作用域                               | 否    | page       |
| varReader    | 可选的用于提供java.io.Reader对象的变量              | 否    | 无          |

#### c:forEach

#####语法格式

```
迭代一个集合中的对象
<c:forEach
    items="<object>"
    begin="<int>"
    end="<int>"
    step="<int>"
    var="<string>"
    varStatus="<string>">
    
    ...
 </c:forEach>
```

##### 属性

| 属性        | 描述                      | 是否必要 | 默认值          |
| --------- | ----------------------- | ---- | ------------ |
| items     | 要被循环的信息                 | 否    | 无            |
| begin     | 开始的元素（0=第一个元素，1=第二个元素）  | 否    | 0            |
| end       | 最后一个元素（0=第一个元素，1=第二个元素） | 否    | Last element |
| step      | 每一次迭代的步长                | 否    | 1            |
| var       | 代表当前条目的变量名称             | 否    | 无            |
| varStatus | 代表循环状态的变量名称             | 否    | 无            |



#### c:forTokens

#####语法格式

```
通过指定分隔符将字符串分隔为一个数组然后迭代它们
<c:forTokens
    items="<string>"
    delims="<string>"
    begin="<int>"
    end="<int>"
    step="<int>"
    var="<string>"
    varStatus="<string>">
    
    ...
    </c:forTokens>
```

##### 属性

| 属性        | 描述                      | 是否必要 | 默认值          |
| --------- | ----------------------- | ---- | ------------ |
| items     | 要被循环的信息                 | 否    | 无            |
| begin     | 开始的元素（0=第一个元素，1=第二个元素）  | 否    | 0            |
| end       | 最后一个元素（0=第一个元素，1=第二个元素） | 否    | Last element |
| step      | 每一次迭代的步长                | 否    | 1            |
| var       | 代表当前条目的变量名称             | 否    | 无            |
| varStatus | 代表循环状态的变量名称             | 否    | 无            |
| delims    | 分隔符                     | 是    | 无            |


#### c:param

#####语法格式

```
<c:param>标签用于在<c:url>标签中指定参数，而且与URL编码相关。
在<c:param>标签内，name属性表明参数的名称，value属性表明参数的值。
<c:param name="<string>" value="<string>"/>
```

##### 属性

| 属性    | 描述            | 是否必要 | 默认值  |
| ----- | ------------- | ---- | ---- |
| name  | URL中要设置的参数的名称 | 是    | 无    |
| value | 参数的值          | 否    | Body |

#### c:redirect

#####语法格式

```
<c:redirect>标签通过自动重写URL来将浏览器重定向至一个新的URL，它提供内容相关的URL，并且支持c:param标签
<c:redirect url="<string>" context="<string>"/>
```

##### 属性

| 属性      | 描述               | 是否必要 | 默认值    |
| ------- | ---------------- | ---- | ------ |
| url     | 目标URL            | 是    | 无      |
| context | 紧接着一个本地网络应用程序的名称 | 否    | 当前应用程序 |

​			

#### c:url

#####语法格式

```
<c:url>标签将URL格式化为一个字符串，然后存储在一个变量中。
这个标签在需要的时候会自动重写URL。
var属性用于存储格式化后的URL。
<c:url>标签只是用于调用response.encodeURL()方法的一种可选的方法。它真正的优势在于提供了合适的URL编码，包括<c:param>中指定的参数。
<c:url
  var="<string>"
  scope="<string>"
  value="<string>"
  context="<string>"/>
```

##### 属性

| 属性      | 描述          | 是否必要 | 默认值           |
| ------- | ----------- | ---- | ------------- |
| value   | 基础URL       | 是    | 无             |
| context | 本地网络应用程序的名称 | 否    | 当前应用程序        |
| var     | 代表URL的变量名   | 否    | Print to page |
| scope   | var属性的作用域   | 否    | page          |
