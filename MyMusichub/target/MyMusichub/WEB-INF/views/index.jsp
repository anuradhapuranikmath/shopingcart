<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url value="/resources/images" var="image"></spring:url>
<html>
<head>
<jsp:include page="/WEB-INF/header/header.jsp"></jsp:include>
</head>
<body>



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
    <a href="angularpagedetails1?value=val1" class="thumbnail">
      <p>Piano is one of the music instrument.</p> 
       <img src="${image}/im1.jpg" alt="Pulpit Rock" style="width:150px;height:150px"/>
    </a>
  </div>
  <div class="col-md-4">
    <a href="angularpagedetails1?value=val2" class="thumbnail">
      <p>Tabala is one of the music instrument ".</p>
      <img src="${image}/im2.jpg" alt="Moustiers Sainte Marie" style="width:150px;height:150px"/>
    </a>
  </div>
  <div class="col-md-4">
    <a href="angularpagedetails1?value=val3" class="thumbnail">
      <p>Guitar is one of the music instrument.</p> 
      <img src="${image}/im3.jpg" alt="Cinque Terre" style="width:150px;height:150px"/>
    </a>
  </div>
  
</div>
<jsp:include page="/WEB-INF/footer/footer.jsp"></jsp:include>

</body>

</html>