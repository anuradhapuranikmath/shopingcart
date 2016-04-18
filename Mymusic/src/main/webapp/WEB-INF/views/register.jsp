<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="container">
	<form class="form-horizontal" id="registration" method='post' action='register.php'>
		<fieldset>
			<legend>Registration Form</legend>
			<div class="control-group">
				<label class="control-label">Username:</label>
				<div class="controls">
					<input type="text" id="username" name="user_name">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Password:</label>
				<div class="controls">
					<input type="text" id="password" name="password1">
				</div>
			</div>
			
			<div class="control-group">
				<label class="control-label">Email</label>
				<div class="controls">
					<input type="text" id="email" name="email">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"></label>
				<div class="controls">
					<button type="submit" class="btn btn-success" >Submit</button>
				</div>
			</div>
		</fieldset>
	</form>
</div>

</body>
</html>