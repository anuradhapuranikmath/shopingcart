<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
​
<title>EDIT PRODUCTS</title>
</head>
<body>
<%-- <c:url var="userRegistration" value="saveUser.html" /> --%>

      
	<div class="container">
  <form:form commandName="up" class="form-horizontal" id="registration" method="post" action="edit"> 
  
  <fieldset>
			<legend>UPDATING PRODUCT </legend>
			<div class="control-group">
				<label class="control-label">Product ID:</label>
				<div class="controls">
					<form:input path="productId" />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Product Name:</label>
				<div class="controls">
					<form:input path="productName" />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">product price</label>
				<div class="controls">
					<form:input path="productprice" />
				</div>
				
				<div class="control-group">
				<label class="control-label">manufacturer</label>
				<div class="controls">
					<form:input path="manufacturer" />
				</div>
				
				
			</div>
			<div class="control-group">
				<label class="control-label"></label>
				<div class="controls">
					<button type="submit" class="btn btn-success" >UPDATE</button>
				</div>
			</div>
		</fieldset>
</form:form> 
   </div>
   