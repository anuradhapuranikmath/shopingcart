<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.util.*" %>
    <%@ page import="com.musichub.model.ProductDetails" language="java" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
$(document).ready(function(){
    $('#myTable').dataTable();
});
</script>

</head>
<body>
<div class="container">
<table id="myTable" border="3px" bgcolor="pink">  
        <thead>  
          <tr>  
            <th>product id</th>  
            <th>product name</th>  
            <th>product price</th>  
            <th>product manufacturer</th>
          
          </tr>
        </thead>  
        <tbody>   
          <tr>  
           <td>${data.productId }</td>
           <td>${data.productName }</td>
           <td>${data.productprice}</td>
           <td>${data.manufacturer}</td>
          </tr>  
        </tbody>  
      </table> 
      </div>
      <div>

</div>

 <a href="addproduct">CLICK TO ADD PRODUCT</a>
  
</body>
</html>