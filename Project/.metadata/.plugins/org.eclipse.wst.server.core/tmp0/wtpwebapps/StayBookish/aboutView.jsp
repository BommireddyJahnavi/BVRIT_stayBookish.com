<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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
      min-height:200px;
  }

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
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
    width:550px;
    height:40px;
    
    }
  </style>
</head>
<body>


<div class="jumbotron">
 <div>
  <center><img src = "logo.png"></center>
  </div>
  <div class="container text-center">
    <h1>STAY BOOKISH</h1>      
    <p>You Request We Sell</p>
  </div>
</div>

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
        <li class="active"><a href="index.jsp">Home</a></li>
        <li><a href="aboutView">About</a></li>
        <li><a href="#">Books</a></li>
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="loginView.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>

<div>
<h3>
As the world population gets larger and technology keeps advancing, more people are able to do more things that they couldn't do before. The Internet is an excellent example of this. You can buy and sell just about anything over the Internet.

</h3>
<br>

<h3>
Anyone with a computer can sell stuff, and anyone else with a computer can buy that stuff. The Internet knows no geographic boundaries. It's probably not practical to buy oil and gasoline over the Internet, but you can buy a car that way.
</h3>
<br>

<h3>
In our site you can buy a large variety of books and can also sell your books
</h3>

</div>  


<footer class="container-fluid text-center">
  <p></p>
</footer>

</body>
</html>
