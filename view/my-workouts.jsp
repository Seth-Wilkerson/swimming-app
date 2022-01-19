<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Swim App</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />
   <link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/main.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
   <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      max-height:200px;
  }

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="${pageContext.request.contextPath}/customer/home">Home</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="${pageContext.request.contextPath}/customer/register">Register</a></li>
        <li><a href="${pageContext.request.contextPath}/customer/signin">Sign in</a></li>
        <li><a href="${pageContext.request.contextPath}/customer/gwork">Generate Workout</a></li>
        <li><a href="${pageContext.request.contextPath}/customer/list">Users</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="${pageContext.request.contextPath}/customer/mwork"><span class="glyphicon glyphicon-log-in"></span> Sets</a></li>
      </ul>
    </div>
  </div>
</nav>

<div style="margin-left: 25%; margin-right: 25%; margin-top: 5%;"> 

      <div id="wrapper">
		<div id="header">
			<h2>Sets</h2>
		</div>
	</div>

        <div class="row">
            <div class="col-sm-6">
                <div class="list list-row block">    
          
                	<c:forEach var="tempCustomer" items="${workout}">
                	
             		<!-- construct an "update" link with customer id -->
					<c:url var="updateLink" value="/customer/showFormForUpdateW">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>					

					<!-- construct an "delete" link with customer id -->
					<c:url var="deleteLink" value="/customer/deleteW">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>	
                    <div class="list-item" data-id="19">
                        <div><a href="#" data-abc="true"><span class="w-48 avatar gd-warning">${tempCustomer.id}</span></a></div>
                        <div class="flex"> <a href="#" class="item-author text-color" data-abc="true">Warm-up: ${tempCustomer.firstName} Main-set: ${tempCustomer.lastName}</a>
                            <div class="item-except text-muted text-sm h-1x">Cool-down: ${tempCustomer.email}</div>
                        </div>
                        <div><a href="${updateLink}">Update</a>
							|
							<a href="${deleteLink}"
							   onclick="if (!(confirm('Are you sure you want to delete this set?'))) return false">Delete</a></div>
                    </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>


</body>
</html>












