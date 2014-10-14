<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>查询图书</title>
    
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
  <%@taglib prefix="s" uri="/struts-tags" %>
   <table align="center" width="600" border="1">
   <tr>
   	   <td align="center" colspan="8">
   	   	<h4>作者信息</h4>
   	   	</td>
   </tr>
   <tr align="center">
   	   <td>ID</td>
   	   <td>作者</td>
   	   <td>年龄</td>
   	   <td>国家</td>
   	   <td>查询图书</td>
   </tr>
	<s:if test="ID.size()==0">
   		<th><b>无</b></th>
   	   <th><b>无</b></th>
   	   <th><b>无</b></th>
   	   <th><b>无</b></th>
   	   <th><b>无</b></th>
   	</s:if>
   	<s:else> 
   	<s:iterator id="item" value="ID">
    <tr>
   		<td><s:property value="#item.AuthorID"/></td>
   		<td><s:property value="#item.Name"/></td>
   		<td><s:property value="#item.Age"/></td>
   		<td><s:property value="#item.Country"/></td>
   		<td>
			<s:url id="url" action="BookAction!Select">
				<s:param name="book.AuthorID" value="#item.AuthorID"></s:param>
			</s:url>
				<s:a href="%{url}" >作者图书</s:a>
		</td>
   	</tr>
   	</s:iterator>
   	</s:else>
   	</table>
  </body>
</html>
