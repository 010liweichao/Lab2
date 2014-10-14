<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改图书信息</title>
    
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
   <center>
<h2>修改图书信息</h2>
<br><h3>原图书信息</h3><br>
  <%@taglib prefix="s" uri="/struts-tags" %>
<table align="center" width="600" border="1">
	<tr align="center">
			<th><b>ISBN</b></th>
			<th><b>书名</b></th>
			<th><b>作者ID</b></th>
			<th><b>出版社</b></th>
			<th><b>出版时间</b></th>
			<th><b>价格</b></th>
		</tr>
		
		<tr align="center">
			<td><s:property value="book.ISBN"/></td>
			<td><s:property value="book.Title"/></td>
			<td><s:property value="book.AuthorID"/></td>
			<td><s:property value="book.Publisher"/></td>
			<td><s:property value="book.PublishDate"/></td>
			<td><s:property value="book.Price"/></td>
		</tr>
</table>
<script type="text/javascript">
function Change()
{
	document.getElementById("ISBN").disabled=false;
	alert('该操作可能会更改作者信息导致删除某位作者，确定更改吗？');
}
</script>
<br><h3>修改</h3>
<s:form action="BookAction!Update" method="post">
	<s:textfield id="ISBN" name="book.ISBN" value="%{book.ISBN}" disabled="true" label="ISBN"></s:textfield>
	<s:textfield name="book.authorID" label="作者ID" />
	<s:textfield name="book.publisher" label="出版社" />
	<s:textfield name="book.publishDate" label="出版时间" />
	<s:textfield name="book.price" label="价格" />
	<s:submit value="确认" onclick="return Change();"></s:submit>
</s:form>
<br><a href="index.jsp">返回</a>
</center>

  </body>
</html>
