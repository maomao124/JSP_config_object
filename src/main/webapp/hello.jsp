<%--
  Created by IntelliJ IDEA.
  Project name(项目名称)：JSP_config_object
  Author(作者）: mao
  Author QQ：1296193245
  GitHub：https://github.com/maomao124/
  Date(创建日期)： 2021/12/27
  Time(创建时间)： 23:01
  Description(描述)：
  JSP config 是 javax.servlet.ServletConfig 的实例对象，一般用于获取页面和 Servlet 的初始化参数。
config 对象的常用方法如下：
config 对象的常用方法
方法	说明
String getInitParameter(String paramname) 	获取指定的初始化参数值
Enumeration getInitParameterNames()	获取当前页面所有的初始化参数值
ServletContext getServletContext()	获取当前执行 Servlet 的 servletContext（Servlet 上下文）的值
String getServletName() 	获取当前执行 Servlet 的名称
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String servlet_name = config.getServletName();
    String name = config.getInitParameter("name");
%>
<h3>
    servlet名称：
    <%=servlet_name%>
    <br/>
    参数：
    <%=name%>
</h3>
</body>
</html>
