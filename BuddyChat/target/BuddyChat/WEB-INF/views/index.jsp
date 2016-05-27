<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<html>
<head>
<style>
body { 
  background: url(resources/images/1.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}

.panel-default {
opacity: 0.9;
margin-top:30px;
}
.form-group.last { margin-bottom:0px; }
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</head>


 <form name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">
                <c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>
                 <div class="span9 center">
                   <c:if test="${not empty msg}">
                <div class="msg">${msg} <br><br></div>
            </c:if>
    <div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-7">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <span class="glyphicon glyphicon-lock"></span> Login</div>
                <div class="panel-body">
                    
                    <div class="form-group">
                        <label for="inputUserName3" class="col-sm-3 control-label">  UserName </label>
                        
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="username"  name="username" placeholder="username" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-3 control-label"> Password </label>
                        
                        <div class="col-sm-9">
                            <input type="password" class="form-control" id="inputPassword3" name="password"  placeholder="Password" required>
                        </div>
                    </div>
                     <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-9">
                            <!-- <div class="checkbox">
                                <label>
                                    <input type="checkbox"/>
                                    Remember me
                                </label>
                            </div> -->
                        </div>
                    </div> 
                    <div class="form-group last">
                        <div class="col-sm-offset-3 col-sm-9">
                            <input type="submit"  value="Sign in" class="btn btn-success btn-sm">
                               
                                 <button type="reset" class="btn btn-default btn-sm">
                                Reset</button>
                        </div>
                    </div>
                    
                </div>
                <div class="panel-footer">
                    Not Registred? <a href="Register">Register here</a></div>
            </div>
        </div>
    </div>
    
</div>

<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
 </form>
    </html>
    