### JSP EL表达式

#### 1.EL标签语法

```
${参数名}
例如:
${param.name}获得参数name的值,等同于<%=request.getParameter('name')%>
```

#### 2.EL标签的功能

###### 1.访问JSP中不同域的对象

```
1)通过  范围.参数名称 的形式访问,即通过EL隐含变量获取参数值
<td align="center">${pageScope.name}</td>
<td align="center">${requestScope.age}</td>
<td align="center">${sessionScope.address}</td>
<td align="center">${applicationScope.sex}</td>
2)通过直接写参数名称的形式访问,EL标签会依次从page,request,session,application范围查找变量.
<td align="center">${name}</td>
<td align="center">${age}</td>
<td align="center">${address}</td>
<td align="center">${sex}</td>
```

###### 2.访问Java Bean中的属性,访问集合元素,支持简单的运算符操作

#### 3.EL中的基础操作符,支持大部分Java所提供的算术和逻辑操作符

| 操作符                                | 描述                               |
| ---------------------------------- | -------------------------------- |
| .                                  | 访问一个Bean属性或者一个映射条目               |
| []                                 | 访问一个数组或者链表的元素                    |
| ()                                 | 组织一个子表达式以改变优先级                   |
| +                                  | 加                                |
| -                                  | 减或负                              |
| *                                  | *乘                               |
| / or div                           | 除                                |
| % or mod                           | 取模                               |
| == or eq                           | 测试是否相等                           |
| != or ne                           | 测试是否不等                           |
| < or lt                            | 测试是否小于                           |
| \>or gt                            | 测试是否大于                           |
| <= or le                           | 测试是否小于等于                         |
| /> = or ge                         | 测试是否大于等于                         |
| && or and                          | 测试逻辑与                            |
| \|\| or or                         | 测试逻辑或                            |
| !or not                            | 测试取反                             |
| empty                              | 测试是否空值                           |
| 表达式 true(false) ? true取值 : false取值 | ${postNum == null ? 0 : postNum} |

#### 4.JSP EL隐含对象

| 隐含对象             | 描述                 |
| ---------------- | ------------------ |
| pageScope        | page 作用域           |
| requestScope     | request 作用域        |
| sessionScope     | session 作用域        |
| applicationScope | application 作用域    |
| param            | Request 对象的参数，字符串  |
| paramValues      | Request对象的参数，字符串集合 |
| header           | HTTP 信息头，字符串       |
| headerValues     | HTTP 信息头，字符串集合     |
| initParam        | 上下文初始化参数           |
| cookie           | Cookie值            |
| pageContext      | 当前页面的pageContext   |

#### 5.在单个页面中禁用EL表达式

```
<%@page isELIgnored="true"%>
禁用部分EL表达式,在相应的表达式前加上一个反斜杠,"\$"
```


​	
​	
​	
​	
​	
​	