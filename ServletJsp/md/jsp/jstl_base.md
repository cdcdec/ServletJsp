### JSP 标准标签库(JSTL)

* JSP标准标签库（JSTL）是一个JSP标签集合，它封装了JSP应用的通用核心功能。

   JSTL支持通用的、结构化的任务，比如迭代，条件判断，XML文档操作，国际化标签，SQL标签。 除了这些，它还提供了一个框架来使用集成JSTL的自定义标签。



* 使用任何库，你必须在每个JSP文件中的头部包含/<taglib/>标签。

* 核心标签:核心标签是最常用的JSTL标签

  ```
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  ```

  | 标签            | 描述                                       |
  | ------------- | ---------------------------------------- |
  | <c:out>       | 用于在JSP中显示数据，就像<%= ... >                  |
  | <c:set>       | 用于保存数据                                   |
  | <c:remove>    | 用于删除数据                                   |
  | <c:catch>     | 用来处理产生错误的异常状况，并且将错误信息储存起来                |
  | <c:if>        | 与我们在一般程序中用的if一样                          |
  | <c:choose>    | 本身只当做<c:when>和<c:otherwise>的父标签          |
  | <c:when>      | <c:choose>的子标签，用来判断条件是否成立                |
  | <c:otherwise> | <c:choose>的子标签，接在<c:when>标签后，当<c:when>标签判断为false时被执行 |
  | <c:import>    | 检索一个绝对或相对 URL，然后将其内容暴露给页面                |
  | <c:forEach>   | 基础迭代标签，接受多种集合类型                          |
  | <c:forTokens> | 根据指定的分隔符来分隔内容并迭代输出                       |
  | <c:param>     | 用来给包含或重定向的页面传递参数                         |
  | <c:redirect>  | 重定向至一个新的URL.                             |
  | <c:url>       | 使用可选的查询参数来创造一个URL                        |

* 格式化标签,JSTL格式化标签用来格式化并输出文本、日期、时间、数字。

  ```
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  ```
  | 标签                    | 描述                   |
  | --------------------- | -------------------- |
  | <fmt:formatNumber>    | 使用指定的格式或精度格式化数字      |
  | <fmt:parseNumber>     | 解析一个代表着数字，货币或百分比的字符串 |
  | <fmt:formatDate>      | 使用指定的风格或模式格式化日期和时间   |
  | <fmt:parseDate>       | 解析一个代表着日期或时间的字符串     |
  | <fmt:bundle>          | 绑定资源                 |
  | <fmt:setLocale>       | 指定地区                 |
  | <fmt:setBundle>       | 绑定资源                 |
  | <fmt:timeZone>        | 指定时区                 |
  | <fmt:setTimeZone>     | 指定时区                 |
  | <fmt:message>         | 显示资源配置文件信息           |
  | <fmt:requestEncoding> | 设置request的字符编码       |

* SQL标签:JSTL SQL标签库提供了与关系型数据库（Oracle，MySQL，SQL Server等等）进行交互的标签

  ```
  <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
  ```
  | 标签                  | 描述                                     |
  | ------------------- | -------------------------------------- |
  | <sql:setDataSource> | 指定数据源                                  |
  | <sql:query>         | 运行SQL查询语句                              |
  | <sql:update>        | 运行SQL更新语句                              |
  | <sql:param>         | 将SQL语句中的参数设为指定值                        |
  | <sql:dateParam>     | 将SQL语句中的日期参数设为指定的java.util.Date 对象值    |
  | <sql:transaction>   | 在共享数据库连接中提供嵌套的数据库行为元素，将所有语句以一个事务的形式来运行 |
* XML 标签:提供了创建和操作XML文档的标签

  ```
  <%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
  ```
  | 标签            | 描述                                   |
  | ------------- | ------------------------------------ |
  | <x:out>       | 与<%= ... >,类似，不过只用于XPath表达式          |
  | <x:parse>     | 解析 XML 数据                            |
  | <x:set>       | 设置XPath表达式                           |
  | <x:if>        | 判断XPath表达式，若为真，则执行本体中的内容，否则跳过本体      |
  | <x:forEach>   | 迭代XML文档中的节点                          |
  | <x:choose>    | <x:when>和<x:otherwise>的父标签           |
  | <x:when>      | <x:choose>的子标签，用来进行条件判断              |
  | <x:otherwise> | <x:choose>的子标签，当<x:when>判断为false时被执行 |
  | <x:transform> | 将XSL转换应用在XML文档中                      |
  | <x:param>     | 与<x:transform>共同使用，用于设置XSL样式表        |
* JSTL函数:JSTL包含一系列标准函数，大部分是通用的字符串处理函数

  ```
  <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
  ```
  | 标签                      | 描述                           |
  | ----------------------- | ---------------------------- |
  | fn:contains()           | 测试输入的字符串是否包含指定的子串            |
  | fn:containsIgnoreCase() | 测试输入的字符串是否包含指定的子串，大小写不敏感     |
  | fn:endsWith()           | 测试输入的字符串是否以指定的后缀结尾           |
  | fn:escapeXml()          | 跳过可以作为XML标记的字符               |
  | fn:indexOf()            | 返回指定字符串在输入字符串中出现的位置          |
  | fn:join()               | 将数组中的元素合成一个字符串然后输出           |
  | fn:length()             | 返回字符串长度                      |
  | fn:replace()            | 将输入字符串中指定的位置替换为指定的字符串然后返回    |
  | fn:split()              | 将字符串用指定的分隔符分隔然后组成一个子字符串数组并返回 |
  | fn:startsWith()         | 测试输入字符串是否以指定的前缀开始            |
  | fn:substring()          | 返回字符串的子集                     |
  | fn:substringAfter()     | 返回字符串在指定子串之后的子集              |
  | fn:substringBefore()    | 返回字符串在指定子串之前的子集              |
  | fn:toLowerCase()        | 将字符串中的字符转为小写                 |
  | fn:toUpperCase()        | 将字符串中的字符转为大写                 |
  | fn:trim()               | 移除首位的空白符                     |

  ​

  ​

  ​

  ​
