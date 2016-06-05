<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content=cwidth=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
  <% String user = (String)session.getAttribute("user");%>
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
      min-height:100px;
  }

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 10px) {
    .carousel-caption {
      display: none; 
    }
  }
  #searchbox
{
    background-color: #eaf8fc;
    background-image: linear-gradient(#fff, #d4e8ec);
    border-radius: 35px;    
    border-width: 5px;
    border-style: solid;
    border-color: #c4d9df #a4c3ca #83afb7;            
    width: 700px;
    height: 70px;
    padding: 10px;
    margin: 100px auto 50px;
    overflow: hidden; /* Clear floats */
}
#search{
    width:55px;
    height:40px;
    
    }
  </style>
</head>
<body>



  
 
   <img src = "logo.png" align="left" > <center><h1>STAY BOOKISH </h1></center>      
 <center><p>You Request We Sell!!!</p></center>
  


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="welcomeView.jsp">Home</a></li>
        
        <li><a href="bookView.jsp">Books</a></li>
        <li><a href="sell">Sell</a></li>
       
      </ul>
       <% if(user != null){ %>
         <ul class="nav navbar-nav navbar-right">
            <li class="active"><a href=" ">Welcome <%=user %></a></li>
             <li><a href="cartView.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
             <li ><a href="logout.jsp">Logout</a></li>
         </ul>
      <% }else{ %>
        <ul class="nav navbar-nav navbar-right">
        <li><a href="loginView.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
      <%} %> 
    </div>
  </div>
</nav>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="http://www.bookicious.com/img/bk.jpg" style = "height:600px ; width: 1200px;alt="Image">
        <div class="carousel-caption">
         
        </div>      
      </div>

      <div class="item">
        <img src="http://prmceam.ac.in/wp-content/uploads/2015/09/library.jpg" style = "height:600px ; width: 1200px;"alt="Image">
        <div class="carousel-caption">
         
        </div>      
      </div>
    </div>
      
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
  


<footer class="container-fluid text-center">
  <p></p>
</footer>

</body>
</html>

