<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加用户</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
   <script type="text/javascript">
  function tishi(){
  	alert('用户ID无效，请添加作者');
  }
  </script>
  <body  onload="tishi()">
  <div align="center"><b>添加用户信息</b></div>
  <%@taglib prefix="s" uri="/struts-tags" %>
  <s:form action="AuthorAction!Add" method="post">
  		<s:textfield name="author.AuthorID" value="%{book.AuthorID}"lable="ID" readonly="true"></s:textfield>
  		<s:textfield name="author.name" label="用户名"></s:textfield>
  		<s:textfield name="author.age" label="年龄"></s:textfield>
  		<s:textfield name="author.country" label="国籍"></s:textfield>
  		<s:submit value="提交"></s:submit>

  </s:form>
  </body>
</html>
