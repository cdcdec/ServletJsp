## jstl_格式化标签

#### fmt:formatNumber﻿

#####  语法格式

```
<fmt:formatNumber>标签用于格式化数字，百分比，货币。
<fmt:formatNumber
  value="<string>"
  type="<string>"
  pattern="<string>"
  currencyCode="<string>"
  currencySymbol="<string>"
  groupingUsed="<string>"
  maxIntegerDigits="<string>"
  minIntegerDigits="<string>"
  maxFractionDigits="<string>"
  minFractionDigits="<string>"
  var="<string>"
  scope="<string>"/>
```

##### 属性

| 属性                | 描述                          | 是否必要 | 默认值           |
| ----------------- | --------------------------- | ---- | ------------- |
| value             | 要显示的数字                      | 是    | 无             |
| type              | NUMBER，CURRENCY，或 PERCENT类型 | 否    | Number        |
| pattern           | 指定一个自定义的格式化模式用与输出           | 否    | 无             |
| currencyCode      | 货币码（当type="currency"时）      | 否    | 取决于默认区域       |
| currencySymbol    | 货币符号 (当 type="currency"时)   | 否    | 取决于默认区域       |
| groupingUsed      | 是否对数字分组    (TRUE 或 FALSE)   | 否    | true          |
| maxIntegerDigits  | 整型数最大的位数                    | 否    | 无             |
| minIntegerDigits  | 整型数最小的位数                    | 否    | 无             |
| maxFractionDigits | 小数点后最大的位数                   | 否    | 无             |
| minFractionDigits | 小数点后最小的位数                   | 否    | 无             |
| var               | 存储格式化数字的变量                  | 否    | Print to page |
| scope             | var属性的作用域                   | 否    | page          |


#### fmt:parseNumber﻿

#####  语法格式

```
<fmt:parseNumber>标签用来解析数字，百分数，货币
<fmt:parseNumber
  value="<string>"
  type="<string>"
  pattern="<string>"
  parseLocale="<string>"
  integerOnly="<string>"
  var="<string>"
  scope="<string>"/>
```

##### 属性

| 属性             | 描述                         | 是否必要 | 默认值           |
| -------------- | -------------------------- | ---- | ------------- |
| value          | 要解析的数字                     | 否    | Body          |
| type           | NUMBER,，CURRENCY，或 PERCENT | 否    | Number        |
| parseLocale    | 解析数字时所用的区域                 | 否    | 默认区域          |
| integerOnly    | 是否只解析整型数（true）或浮点数（false）  | 否    | false         |
| currencySymbol | 货币符号 (当 type="currency"时)  | 否    | 取决于默认区域       |
| pattern        | 自定义解析模式                    | 否    | 无             |
| timeZone       | 要显示的日期的时区                  | 否    | 默认时区          |
| var            | 存储待解析数字的变量                 | 否    | Print to page |
| scope          | var属性的作用域                  | 否    | page          |

#### fmt:formatDate﻿

#####  语法格式

```
<fmt:formatDate>标签用于使用不同的方式格式化日期。
<fmt:formatDate
  value="<string>"
  type="<string>"
  dateStyle="<string>"
  timeStyle="<string>"
  pattern="<string>"
  timeZone="<string>"
  var="<string>"
  scope="<string>"/>
```

##### 属性

| 属性        | 描述                                   | 是否必要 | 默认值     |
| --------- | ------------------------------------ | ---- | ------- |
| value     | 要显示的日期                               | 是    | 无       |
| type      | ATE, TIME, 或 BOTH                    | 否    | date    |
| dateStyle | FULL, LONG, MEDIUM, SHORT, 或 DEFAULT | 否    | default |
| timeStyle | FULL, LONG, MEDIUM, SHORT, 或 DEFAULT | 否    | default |
| pattern   | 自定义格式模式                              | 否    | 无       |
| timeZone  | 显示日期的时区                              | 否    | 默认时区    |
| var       | 存储格式化日期的变量名                          | 否    | 显示在页面   |
| scope     | 存储格式化日志变量的范围                         | 否    | 页面      |

##### fmt:formatDate 标签格式模式

| 代码   | 描述                                    | 实例              |
| ---- | ------------------------------------- | --------------- |
| G    | 时代标志                                  | AD              |
| y    | 不包含纪元的年份。如果不包含纪元的年份小于 10，则显示不具有前导零的年份 | 2002            |
| M    | 月份数字。一位数的月份没有前导零。                     | April & 04      |
| d    | 月中的某一天。一位数的日期没有前导零。                   | 20              |
| h    | 12 小时制的小时。一位数的小时数没有前导零。               | 12              |
| H    | 24 小时制的小时。一位数的小时数没有前导零。               | 0               |
| m    | 分钟。一位数的分钟数没有前导零。                      | 45              |
| s    | 秒。一位数的秒数没有前导零。                        | 52              |
| S    | 毫秒                                    | 570             |
| E    | 周几                                    | Tuesday         |
| D    | 一年中的第几天                               | 180             |
| F    | 一个月中的第几个周几                            | 2 (一个月中的第二个星期三) |
| w    | 一年中的第几周r                              | 27              |
| W    | 一个月中的第几周                              | 2               |
| a    | a.m./p.m. 指示符                         | PM              |
| k    | 小时(12 小时制的小时)                         | 24              |
| K    | 小时(24 小时制的小时)                         | 0               |
| z    | 时区                                    | 中部标准时间          |
| .    |                                       | 转义文本            |
| "    |                                       | 单引号             |

#### fmt:parseDate
#####  语法格式

```
<fmt:parseDate>标签用于使用不同的方式格式化日期。
<fmt:parseDate
   value="<string>"
   type="<string>"
   dateStyle="<string>"
   timeStyle="<string>"
   pattern="<string>"
   timeZone="<string>"
   parseLocale="<string>"
   var="<string>"
   scope="<string>"/>
```

##### 属性

| 属性        | 描述                                   | 是否必要 | 默认值     |
| --------- | ------------------------------------ | ---- | ------- |
| value     | 要显示的日期                               | 是    | 无       |
| type      | DATE, TIME, 或 BOTH                   | 否    | date    |
| dateStyle | FULL, LONG, MEDIUM, SHORT, 或 DEFAULT | 否    | default |
| timeStyle | FULL, LONG, MEDIUM, SHORT, 或 DEFAULT | 否    | default |
| pattern   | 自定义格式模式                              | 否    | 无       |
| timeZone  | 显示日期的时区                              | 否    | 默认时区    |
| var       | 存储格式化日期的变量名                          | 否    | 显示在页面   |
| scope     | 存储格式化日志变量的范围                         | 否    | 页面      |

#### fmt:requestEncoding
#####  语法格式

```
<fmt:requestEncoding>标签用来指定返回给Web应用程序的表单编码类型。
<fmt:requestEncoding value="<string>"/>

使用<fmt:requestEncoding>标签来指定字符集，用于解码来自表单的数据。在字符集不是ISO-8859-1时必须使用这个标签。由于大多数浏览器在它们的请求中不包含Content-Type头，所以需要这个标签。
<fmt:requestEncoding>标签的目的就是用来指定请求的Content-Type。您必须指定一个Content-Type，就算response是通过Page指令的contentType属性来编码。这是因为response的实际区域可能与Page指令所指定的不同。
如果页面包含 I18N-capable格式行为用于设置response的locale属性（通过调用ServletResponse.setLocale()方法），任何在页面中指定的编码集将会被覆盖。
```

##### 属性

| 属性        | 描述                                   | 是否必要 | 默认值     |
| --------- | ------------------------------------ | ---- | ------- |
| key     | 字符编码集的名称，用于解码request参数                               | 是    | 无       |