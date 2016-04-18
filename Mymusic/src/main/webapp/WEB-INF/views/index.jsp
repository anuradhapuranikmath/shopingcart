<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
<spring:url value="/resources/images" var="image"></spring:url>
<style>
#header {
    background-color:green;
    color:white;
    text-align:center;
    padding:5px;
}
#nav {
    line-height:30px;
    background-color:#eeeeee;
    height:300px;
    width:100px;
    float:left;
    padding:5px;	      
}
#section {
    width:350px;
    float:left;
    padding:10px;	 	 
}
#footer {
    background-color:black;
    color:white;
    clear:both;
    text-align:center;
   padding:5px;	 	 
}

.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
</style>
</head>


<body>                                                                                           

<div class="container">
<div id="header">
<h1>SHOPPING CART FOR MUSIC</h1>
</div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">MY MUSIC HUB</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home">Home</a></li>
      <li class="succes"><a  href="#">PRODUCTS </a>
        
      </li>
      <li><a href="about">ABOUT US</a></li>
      <li><a href="contact">CONTACT US</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
  



<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>
<div class="carousel-inner" role="listbox">                                     

    <div class="item active">
      <img src="${image}/image1.jpg"/>
    </div>

    <div class="item">
      <img src="${image}/images2.jpg"/>
    </div>

    <div class="item">
       <img src="${image}/image3.jpg"/>
    </div>

    
  </div>
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  
  <div class="row">
  <div class="col-md-4">
    <a href="piano.jsp" class="thumbnail">
      <p>Piano is one of the music instrument.</p> 
       <img src="${image}/im1.jpg" alt="Pulpit Rock" style="width:150px;height:150px"/>
    </a>
  </div>
  <div class="col-md-4">
    <a href="tabala.jsp" class="thumbnail">
      <p>Tabala is one of the music instrument ".</p>
      <img src="${image}/im2.jpg" alt="Moustiers Sainte Marie" style="width:150px;height:150px"/>
    </a>
  </div>
  <div class="col-md-4">
    <a href="guitar.jsp" class="thumbnail">
      <p>Guitar is one of the music instrument.</p> 
      <img src="${image}/im3.jpg" alt="Cinque Terre" style="width:150px;height:150px"/>
    </a>
  </div>
</div>

  <div id="footer">
Copyright © MusicHub.com
</div>
</div>
</body>
</html>

