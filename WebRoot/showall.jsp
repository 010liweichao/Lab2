<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>图书信息</title>
    
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
   <table align="center" width="600" border="1">  	 	
   		<tr align ="center">  	 		
   			<td>ISBN:</td>
   			<td>Title:</td>
   			<td>AuthorID:</td>
   			<td>Publisher:</td>
   			<td>PubishDate:</td>
   			<td>Price</td>
   			<td>删除</td>
   			<td>修改</td>
		</tr>
		<%@taglib prefix="s" uri="/struts-tags" %>
		<s:if test="list.size()==0">
		 	<th><b>无</b></th>
   	   		<th><b>无</b></th>
   	  	 	<th><b>无</b></th>
   	   		<th><b>无</b></th>
   	   		<th><b>无</b></th>
   	   	 </s:if>
   	   	 <s:else>	
		<s:iterator id="item" value="list">
		 <tr>
		 <td>
		 <s:property value="#item.ISBN"/>
		 </td>
		 <td> 
		 		<s:url id="url1" value="InfoAction!Information">
		 			<s:param name="book.ISBN" value="#item.ISBN"></s:param>
					<s:param name="book.Title" value="#item.Title"></s:param>
					<s:param name="book.AuthorID" value="#item.AuthorID"></s:param>
					<s:param name="book.Publisher" value="#item.Publisher"></s:param>
					<s:param name="book.PublishDate" value="#item.PublishDate"></s:param>
					<s:param name="book.Price" value="#item.Price"></s:param>
				</s:url>
				<s:a href="%{url1}" ><s:property value="#item.Title"/></s:a>  </td>  	
		 <td><s:property value="#item.AuthorID"/>  </td>
		 <td><s:property value="#item.Publisher"/>  </td>
		 <td><s:property value="#item.PublishDate"/> </td>
		 <td><s:property value="#item.Price"/> </td>
		 <td>
				<s:url id="url" action="BookAction!Del">
					<s:param name="book.ISBN" value="#item.ISBN"></s:param>
				</s:url>
				<s:a href="%{url}" onclick="return confirm('你确定要删除该图书吗？');">删除</s:a>
		</td>
			<td>
				<s:url id="url2" action="BookAction!Change">
					<s:param name="book.ISBN" value="#item.ISBN"></s:param>
					<s:param name="book.Title" value="#item.Title"></s:param>
					<s:param name="book.AuthorID" value="#item.AuthorID"></s:param>
					<s:param name="book.Publisher" value="#item.Publisher"></s:param>
					<s:param name="book.PublishDate" value="#item.PublishDate"></s:param>
					<s:param name="book.Price" value="#item.Price"></s:param>
				</s:url>
				<s:a href="%{url2}">修改图书信息</s:a><br>
				
			</td>
		 </tr>  	 	
		 </s:iterator>
		</s:else>
	</table> 
  </body>
</html>
