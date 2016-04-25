<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <form:form id="registerForm" modelAttribute="me" method="post"  
   action="success"> 
  
    <div class="form-group">
      <label for="usr">productId:</label>
      <input type="text" class="form-control" id="usr">
    </div>
    
    
    <div class="form-group">
      <label for="usr">productName:</label>
      <input type="text" class="form-control" id="usr">
    </div>
    
    <div class="form-group">
      <label for="usr">productPrice:</label>
      <input type="text" class="form-control" id="usr">
    </div>
    
    
    <div class="form-group">
      <label for="usr">manufacturer:</label>
      <input type="text" class="form-control" id="usr">
    </div>
    
    <a href=add>ADD</a>
    
    
  </form:form>  
  
  
</div>

</body>
</html>