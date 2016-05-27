<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<body>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</head>
 <form:form action="${pageContext.request.contextPath}/Register" method="post" commandName="usersDetail">
 <div class="span9 margin-top">
                   <div class="span9 center margin-bottom"> 
					<h3>Registration Form</h3>
					</div>
				   
				  <div class="span3 no_margin_left">
						<legend>ENTER YOUR DETAILS</legend>
					  <div class="control-group">
						<label class="control-label">Name</label><form:errors path="userFullName" cssStyle="color: #ff0000"/>
						<div class="controls docs-input-sizes">
            				<form:input path="userFullName" id="fullname" class="form-Control"/>
						</div>
					  </div>
					  <div class="control-group">
						<label class="control-label">Email</label><span style="color: #ff0000">${emailMsg}</span>
						   <form:errors path="userEmail" cssStyle="color: #ff0000"/>
						<div class="controls docs-input-sizes">
						  <form:input path="userEmail" id="email" class="form-Control"/>
						</div>
					  </div>					  
					  <div class="control-group">
						<label class="control-label">Phone</label>
						<div class="controls docs-input-sizes">
						  <form:input path="userPhone" id="phone" class="form-Control"/>
						</div>
					  </div>
					<div class="control-group">
						<label class="control-label">Username</label><span style="color: #ff0000">${usernameMsg}</span><form:errors
               					 path="username" cssStyle="color: #ff0000"/>
						<div class="controls docs-input-sizes">
						  <form:input path="Username" id="username" class="form-Control"/>
						</div>
					  </div>
						<div class="control-group">
						<label class="control-label">Password</label><form:errors path="password" cssStyle="color: #ff0000"/>
						<div class="controls docs-input-sizes">
						  <form:password path="password" id="password" class="form-Control"/>
						</div>
					  </div>						  
				   </div>
		  <div class="span8 center">
					  			<input type="submit" value="submit" class="btn btn-primary"  />
							 <%--  <a href="<c:url value="/" />"  > Cancel</a> --%>
								</div>
								</form:form>
								</body>
		