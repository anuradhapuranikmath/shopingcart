<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="/WEB-INF/header/header.jsp"></jsp:include>


</head>
<body>
<div class="container">
<form:form commandName="user" class="form-horizontal" id="registration" method="post" action="signsuccess">

	
		<fieldset>
			<legend>Registration Form</legend>
			<div class="control-group">
				<label class="control-label">Firstname:</label>
				<div class="controls">
					<form:input path="firstName" />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Lastname:</label>
				<div class="controls">
					<form:input path="lastName" />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Email</label>
				<div class="controls">
					<form:input path="email" />
				</div>
				
				<div class="control-group">
				<label class="control-label">Password</label>
				<div class="controls">
					<form:input path="password" />
				</div>
				
				
			</div>
			<div class="control-group">
				<label class="control-label"></label>
				<div class="controls">
					<button type="submit" class="btn btn-success" >Submit</button>
				</div>
			</div>
		</fieldset>
	</form:form>
</div>

<jsp:include page="/WEB-INF/footer/footer.jsp"></jsp:include>
</body>
</html>