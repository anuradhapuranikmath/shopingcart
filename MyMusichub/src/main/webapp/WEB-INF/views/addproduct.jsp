<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="/WEB-INF/header/header.jsp"></jsp:include>

<head>
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <form:form commandName="pro" class="form-horizontal" id="registration" method="post"   enctype="multipart/form-data"  action="add"> 
  
  <fieldset>
			<legend>ADDING PRODUCT </legend>
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
				
				<div class="control-group">
				<label class="control-label">type</label>
				<div class="controls">
					<form:input path="type" />
				</div>
				
			
				<div class="control-group">
				
					<div class="controls">
					<label class="control-label">Image upload</label>
						<input type="file" name="imgFile" />
					</div>
			
			</div>
			<div class="control-group">
				<label class="control-label"></label>
				<div class="controls">
					<button type="submit" class="btn btn-success" >Add</button>
				</div>
			</div>
		</fieldset>
    </form:form>  
  
  
</div>
<jsp:include page="/WEB-INF/footer/footer.jsp"></jsp:include>

</body>
</html>