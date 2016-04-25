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
 
 <a href="addproduct">CLICK TO ADD PRODUCT</a></br>
 <a href="edit">CLICK TO UPDATE PRODUCT</a></br>
 <a href="delete">CLICK TO DELETE</a>  </br>
   
 <jsp:include page="/WEB-INF/footer/footer.jsp"></jsp:include>
 

</body>
</html>