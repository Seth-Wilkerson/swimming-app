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
 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    
  .carousel-inner img {
      width: 100%; 
      margin: auto;
      max-height:200px;
  }

  
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }
  </style>
</head>
<body>

<!-- 
Navigation bar for top of site
 -->
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
        <li><a href="${pageContext.request.contextPath}/customer/gwork">Generate Set</a></li>
        <li><a href="${pageContext.request.contextPath}/customer/list">Users</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="${pageContext.request.contextPath}/customer/mwork"><span class="glyphicon glyphicon-log-in"></span> Sets</a></li>
      </ul>
    </div>
  </div>
</nav>


   <!-- 
	Site banner image and text
 	-->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src=data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUTEhMWFRUXGBcXFxcVFxgXFxcXFxgYFx0VFxcYHSggGholGxgXITEhJSkrLi4uGB8zODMtNygtLisBCgoKBwcHDgcHDisZHxkrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIAJkBSQMBIgACEQEDEQH/xAAYAAEBAQEBAAAAAAAAAAAAAAABAAIDB//EACgQAQEBAAECAwkBAQEAAAAAAAABEfACITFRkRJBYXGBobHB0fHhMv/EABUBAQEAAAAAAAAAAAAAAAAAAAAB/8QAFBEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEQMRAD8A8asR3wCgw9MSBJEAurpSAYisBIxQAfZ7b9PX/EgSqVAWKm0YCxSc5zskCSjUBk9V3v5moBikCBJIEtUQJLVAMZK0EkQWIagR6s9yQJrFIcBzxA2AkogVUWGwFaFiAwJQElpgIhaBnxFQoJBUCkgVIazn6BQFABKZRYCUndTmLAWogAqUCiWIFUqrzn0BINUFCMIH2hqGgMWc5zuaLARy/P8AUCoKqU5vgASUh0Apec53NEBGKKQEUZ5gAVYDMiznOdlVYCN3x+4iBUyLPIA3ICpt+IAGq9QM2qrUBwXnPRRaARl+H8X1BT0OCoFTnPD1CAyoqgDiO6AGc7Gj2QGpRdVBfpWCkFIqsVBdVUB0FF3GtdIDTOoUg1J5gUgbWK1BQEqxRWgvirAe4LFKsMBHUAOsNTnoAXT0qmsgdiBBaIdQKJCgdVgrW+4BIemjDAa24NBgK+DDdXsgJ8Q1enw58P6zQFM1GAMFJBZfAaV1AzEVANnhz6LspEC1RH8/rmfcBKQqCGNdXSzQGGRUznOeIDFYUAas57voDgMlU737+ngDKakZAWNWdlECGGIFJ+WW5WcANS4qsBRbfPlNAJVYeq+YJeynXngDiuqjUCIOgqWdOgbGVqBRqCXnzGgfa5z6IGAQtQGDqOi0COqjVQUIWgTGDoFapUCUM5/1gGgpN/4tAxDFQUalZxX1A0JA1nOc7Ci1UFpg04CSIHn4W8wIGV1EAkoQFO/SBYCSIKTy57xFYs5zncA1Oc9UtBHBTICgsNFgBWkc+IKkQ2+oA7/kCgHpiaFACk4DNizOc5ErAM39KwRQEt9x9kAlVOx0BarqPPQBIVIQBqwgFk84joMWq1GzOfQBVQ1aAlV5i0WA1c5/BFTAGqIyb4TnmChjGGA1Fql8uyA1m0xmgt5+lvkpDfLn3AIaeqgtPO38GmQDq56rBoFnuRgJeHPAy4yDWAHASlqwAjUvaBYtDVz6gPaandmHpgGqDTd94I/X8i1jQanNrLQsAVdjYenp59wFDQBLDPEdXSAhlE6ec52OAjJ8ORW87+CwEkc538b/AJfQFoStBMmq88wFPZWHpnOe/wDlAKU4gVSkNve0BL8OWYqsMnfn5BmqmQYAOeawgMU0oALW+nn+fNkAZ48/aqoFXOfZT7oFqR6vgCrm3R7INVdUVQDDh9691Aeysanv+X7gniDJw9XPuKAxTpXU3PGAzJnOYsan/m/OfjqY/gHFnmefYT3fOgoRT7p8wQsI6f4Aw4ob4fUB7KxqfwT388wWJX+rqBUKfxdX8/EAxZvPL/k+x6fD6X9MQCV0+Pr+BQaxmQ3+qc9QWCnrVAYZfIIDVi6fE9HPWABT1NeXyBm/LngNFQP/2Q== alt="Image">
        <div class="carousel-caption">
          <h3 style="color: white; font-size: 3em">Make Custom Swimming Sets</h3>
          <p style="color: white; font-size: 2em">View Users and Sets</p>
        </div>      
      </div>
	</div>
  
  <!-- 
 	Site Info images/links
 -->
<div class="container text-center" style="padding-top: 200px;">    
  <h3>What We Do</h3><br>
  <div class="row">
    <div class="col-sm-4">
      <img src="https://img.olympicchannel.com/images/image/private/t_16-9_1920/primary/hhfs9tf9mck02d8ilnqq" class="img-responsive" style="width:100%" alt="Image">
      <a href="${pageContext.request.contextPath}/customer/gwork"><div class="well">
       <p style="font-size: 2em">Create Swim Sets</p>
      </div></a>
    </div>
    <div class="col-sm-4"> 
      <img src="https://content.active.com/Assets/Active.com+Content+Site+Digital+Assets/Article+Image+Update/Triathlon/Build+Swimming+Endurance/carousel.jpg" class="img-responsive" style="width:100%" alt="Image">
      <a href="${pageContext.request.contextPath}/customer/mwork"><div class="well">
       <p style="font-size: 2em">View All Sets</p>
      </div></a>
    </div>
    <div class="col-sm-4">
      <img src="https://media.istockphoto.com/photos/aerial-top-view-male-swimmer-swimming-in-swimming-pool-professional-picture-id1332857654?b=1&k=20&m=1332857654&s=170667a&w=0&h=WpW3--Gj2X2JByndgnhGuuCWvwNSpnJIKfa9BWfDIcI=" class="img-responsive" style="width:100%" alt="Image">
      <a href="${pageContext.request.contextPath}/customer/list"><div class="well">
       <p style="font-size: 2em">View All Users</p>
      </div></a>
    </div>
  </div>
</div><br>

<footer class="container-fluid text-center">
  <p>Made by Seth Wilkerson</p>
</footer>

</body>
</html>













