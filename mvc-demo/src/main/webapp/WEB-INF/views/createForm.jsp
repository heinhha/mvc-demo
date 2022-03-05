<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<style>
	.error {
		color: red;
	}
</style>
</head>
<body>
	<div class="container">
		<h2 class="text-center">Form, InitBinder, Validation</h2>
		
	  <form:form modelAttribute="account" action="account" method="post">

                <div class="input-group">
                    <form:label path="name">Name</form:label>
                    <form:input path="name" cssClass="form-control" cssErrorClass="error"></form:input>
                </div>


            <div class="input-group">
                <form:label path="balance">Balance</form:label>
                <form:input path="balance" cssClass="form-control"></form:input>
            </div>


            <div class="input-group">
                <form:label path="renewDate">Renew Date</form:label>
                <form:input path="renewDate" cssClass="form-control"></form:input>
            </div>
         
     

            <input type="submit" class="btn btn-primary btn-lg" value="Submit">


        </form:form>
	</div>
</body>
</html>