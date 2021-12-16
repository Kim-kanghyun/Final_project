<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>free board</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deleteok/' + id;
	}
</script>
</head>
<body>
<br>
<table id="list" width="90%">
<tr>
	<th>번호</th>
	<th>제목</th>
	<th>글쓴이</th>
	<th>물건</th>
	<th>내용</th>
	<th>이메일</th>
	<th>날짜</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.seq}</td>
		<td>${u.title}</td>
		<td>${u.writer}</td>
		<td>${u.thing}</td>
		<td>${u.text}</td>
		<td>${u.email}</td>
		<td>${u.regdate}</td>
		<td><a href="editform/${u.seq}">edit</a></td>
		<td><a href="javascript:delete_ok('${u.seq}')">delete</a></td>
	</tr>
</c:forEach>
</table>
<br/>
<button type="button" onclick="location.href='add'">new post</button>
</body>
</html>

