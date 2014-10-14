<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>详细信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
   <div align="center"><b>详细信息</b></div>
  <body>
  	<%@taglib prefix="s" uri="/struts-tags" %>
  	<table align ="center" width="600" border="1">
  		<tr align ="center">
  			<td>ISBN:</td>
   			<td>Title:</td>
   			<td>AuthorID:</td>
   			<td>Publisher:</td>
   			<td>PubishDate:</td>
   			<td>Price</td>
  		</tr>
  		<tr>
	  		<td><s:property value="book.ISBN"/>  </td>
			<td><s:property value="book.Title"/>  </td>
	  		<td><s:property value="book.AuthorID"/>  </td>
			<td><s:property value="book.Publisher"/>  </td>
			<td><s:property value="book.PublishDate"/> </td>
			<td><s:property value="book.Price"/> </td>
  		</tr>
  		<tr/>
  		<tr>
  			 <td>ID</td>
   	   		 <td>作者</td>
   	   		 <td>年龄</td>
   	     	 <td>国家</td>
   	   		 <a href="index.jsp">返回主页</a>
  		</tr>
  		<tr>
  			<td><s:property value="author.AuthorID"/></td>
   			<td><s:property value="author.Name"/></td>
   			<td><s:property value="author.Age"/></td>
   			<td><s:property value="author.Country"/></td>
  		</tr>	
  	</table>
  </body>
</html>
