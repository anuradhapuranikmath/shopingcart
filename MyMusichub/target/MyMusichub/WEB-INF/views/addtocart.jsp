<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.util.*" %>
    <%@ page import="com.musichub.model.ProductDetails" language="java" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
    $('#myTable').dataTable();
});
</script>
<jsp:include page="/WEB-INF/header/header.jsp"></jsp:include>
</head>
<body>
 <div class="container">
<table id="myTable"     class="table table-bordered" border="3px">  

        <thead>  
          <tr>  
            <th>product id</th>  
            <th>product name</th>  
            <th>product price</th>  
            <th>product manufacturer</th>
            <th> BUY</th>
            <th>ADD TO CART</th>
          </tr>
        </thead>  
        <tbody>   
       
          <tr>  
           <td>${data.productId }</td>
           <td>${data.productName }</td>
           <td>${data.productprice}</td>
           <td>${data.manufacturer}</td>
           <td>
				<a href = "toflow" class = "btn btn-primary" role = "button">Buy </a> 
            	
            </td>
             <td>
            <a href = "toflow/${data.productId}" alert (" product added to cart)"class = "btn btn-default" role = "button">ADD TO CART</a>
            </td>
          </tr>  
          
        </tbody>  
      </table> 
      </div>
 
 
   
 <jsp:include page="/WEB-INF/footer/footer.jsp"></jsp:include>
 

</body>
</html>