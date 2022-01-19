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

<div style="margin-left: 25%; margin-right: 25%; margin-top: 15%;">

<div id="wrapper">
		<div id="header">
			<h2>Sign in!</h2>
		</div>
	</div>
	
	<form action="entering" method="GET">
      <table>
      <tbody>
        <tr>
          <td>Name:</td>
          <td>
            <input type="text" name="userName">
          </td>
        </tr>
        
        <tr>
          <td>Email:</td>
          <td>
            <input type="text" name="email">
          </td>
        </tr>
       
        <tr>
          <td colspan=2>
            <input type="submit" value="Send Data">
          </td>
        </tr>
        </tbody>
      </table>
      
    </form>
    <h3>${result}</h3>
  </div>
    
 

</body>
</html>













