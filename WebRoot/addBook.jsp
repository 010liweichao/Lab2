<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addBook.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
     <div align="center"> <strong>添加图书信息 </strong></div>
  <%@taglib prefix="s" uri="/struts-tags" %>
  <s:form action="BookAction!Add" method="post">
  		<s:textfield name="book.ISBN" label="书号"></s:textfield>
  		<s:textfield name="book.title" label="书名"></s:textfield>
  		<s:textfield name="book.authorID" label="作者ID"></s:textfield>
  		<s:textfield name="book.publisher" label="出版社"></s:textfield>
  		<s:textfield name="book.publishDate" label="出版日期"></s:textfield>
  		<s:textfield name="book.price" label="价格"></s:textfield>
  		<s:submit value="提交"></s:submit>

  </s:form>
  </body>
</html>
