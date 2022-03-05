<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
	crossorigin="anonymous">

</head>
<body>
	<div class="container">
		<table class="table table-striped">
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Balance</th>
				<th>Renew Date</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${accounts}" var="account">
			<tr>
				
				<td>${account.id }</td>
				<td>${account.name}</td>
				<td>${account.balance }</td>
				<td>${account.renewDate }</td>
			</tr>
		</c:forEach>
		</tbody>
		</table>
		<a href="/account" class="btn btn-primary">Home</a>
	</div>
</body>
</html>