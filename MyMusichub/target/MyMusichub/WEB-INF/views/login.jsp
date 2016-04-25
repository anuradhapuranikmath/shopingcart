<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="/WEB-INF/header/header.jsp"></jsp:include>

</head>

<body>
       <form name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">
               <c:if test="${not empty error}">
                   <div class="error" style="color: #ff0000 ;">${error}</div>
               </c:if>
               <div class="form-group">
                   <label for="username">User: </label>
                   <input type="text" id="username" name="username" class="form-control" />
               </div>
               <div class="form-group">
                   <label for="password">Password:</label>
                   <input type="password" id="password" name="password" class="form-control" />
               </div>

               <input type="submit" value="Submit" class="btn btn-default">

               <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
           </form>
           
           
    <!-- End Page Content -->
<jsp:include page="/WEB-INF/footer/footer.jsp"></jsp:include>
</body>
</html>