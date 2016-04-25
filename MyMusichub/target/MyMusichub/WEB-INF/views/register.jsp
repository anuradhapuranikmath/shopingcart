<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="/WEB-INF/header/header.jsp"></jsp:include>


</head>
<body>
<form:form commandName="user" class="form-horizontal" id="registration" method="post" action="signsuccess">
<div class="container">
	
		<fieldset>
			<legend>Registration Form</legend>
			<div class="control-group">
				<label class="control-label">Firstname:</label>
				<div class="controls">
					<input type="text" id="firstname" name="first_name">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Lastname:</label>
				<div class="controls">
					<input type="text" id="lastname" name="last_name">
				</div>
			</div>
			
			<div class="control-group">
				<label class="control-label">Email</label>
				<div class="controls">
					<input type="text" id="email" name="email">
				</div>
				
				<div class="control-group">
				<label class="control-label">Password</label>
				<div class="controls">
					<input type="password" id="password" name="pass_word">
				</div>
				
				
			</div>
			<div class="control-group">
				<label class="control-label"></label>
				<div class="controls">
					<button type="submit" class="btn btn-success" >Submit</button>
				</div>
			</div>
		</fieldset>
	
</div>
</form:form>
<jsp:include page="/WEB-INF/footer/footer.jsp"></jsp:include>
</body>
</html>