<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 1500px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;} 
    }
  </style>
</head>
<body>

<div class="container-fluid">
  <div class="row content">
  
  
 
  
  <footer class="container-fluid">
 <h1> <div align="center">WELCOME TO NIIT BUDDY CHAT</div></h1>
 Welcome : ${pageContext.request.userPrincipal.name}
  <ul class="nav pull-right">
							   <li class="divider-vertical"></li>
							   <c:if test="${pageContext.request.userPrincipal.name != null}">
									<li><a href="<c:url value="/j_spring_security_logout" />">Sign Out</a></li>
								</c:if>
								 
								
							 </ul>
    
 
 
 
</footer>
    <div class="col-sm-3 sidenav">
   
    
    
    
   
    
    
    
     
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#section1">HOME</a></li>
        <li><a href="#section2">BLOG</a></li>
        <li><a href="#section3">GROUP</a></li>
        <li><a href="#section3">CHAT</a></li>
      </ul>
      <br>
      
     
      
      
     
    </div>
  </div>
</div>



<footer class="container-fluid">
 <p><div align="center">CopyRight Reserved @ NIIT BuddyChat</div></p>
</footer>

</body>
</html>


