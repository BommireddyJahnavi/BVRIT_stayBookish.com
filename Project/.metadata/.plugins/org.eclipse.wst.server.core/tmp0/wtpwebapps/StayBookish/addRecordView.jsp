<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <style>
        #index h1 {
        color: #0066cc;
        text-align: center;
        }
        .btn-lg.round {
     	border-radius: 24px;
        }
        .container {
        border-radius: 50px;
        background: white;
        margin-top: 100px;
        padding-top:35px;
        padding-bottom: 50px;                               
        }
    </style>
    </head>
    <body id="index" style="background-color: #333333;">
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
        <li><a href="welcomeView.jsp">Home</a></li>
        <li><a href="bookView.jsp">Books</a></li>
        <li class="active"><a href="addRecordView.jsp">Sell</a></li>
       </ul>
       <% String user = (String)session.getAttribute("user");%>
       <%if(user != null){ %>
         <ul class="nav navbar-nav navbar-right">
            <li class="active"><a href="">Welcome <%=user %></a></li>
             <li ><a href="logout.jsp">Logout</a></li>
         </ul>
      <% }else{ %>
        <ul class="nav navbar-nav navbar-right">
        <li><a href="loginView.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
      <%} %> 
      
       
       
       </div></div></nav>
        <div id="p" class="container">
        <h1 id="index"> Books </h1><br><br>
        <div class="row">
        <form id="form1" enctype="multipart/form-data" action="addphoto"  method = "post">
        <div class="form-group">
        <div class="col-md-4">
        <label for="Name">Book Name:</label>
        </div>
        <div class="col-md-8">
<<<<<<< HEAD
        <input type="text" class="form-control" name="bname2" placeholder="Enter name" required>
=======
        <input type="text" class="form-control" name="bname" placeholder="Enter name">
>>>>>>> 8c5489b048c2fb4578f25f99924dcef646a4ee0f
        </div>
        </div>
        <br><br>
        <div class="form-group">
        <div class="col-md-4">
        <label for="Password">Author:</label>
        </div>
        <div class="col-md-8">
        <input type="text" class="form-control" name="author" placeholder="Enter Author name" required>
        </div>
        </div>
        <br><br>
        <div class="form-group">
        <div class="col-md-4">
        <label for="Password">Image:</label>
        </div>
        <div class="col-md-8">
        <input type="file" class="form-control" name="photo" required>
        </div>
        </div>
        <br><br>
        <div class="form-group">
        <div class="col-md-4">
        <label for="Phone">Edition:</label>
        </div>
        <div class="col-md-8">
        <input type="text" class="form-control" name="edition" placeholder="Enter edition" required>
        </div>
        </div>
        <br><br><div class="form-group">
        <div class="col-md-4">
        <label for="Email">Publisher:</label>
        </div>
        <div class="col-md-8">
        <input type="text" class="form-control" name="publisher" placeholder="Enter publisher" required>
        </div>
      
        </div>
          <br><br>
        <div class="form-group">
        <div class="col-md-4">
        <label for="Email">Year:</label>
        </div>
        <div class="col-md-8">
        <input type="text" class="form-control" name="year" placeholder="Enter year" required>
        </div>
        </div>
        <br><br>
        <div class="form-group">
        <div class="col-md-4">
        <label for="address">Price:</label>
        </div>
        <div class="col-md-8">
         <input type="text" class="form-control" name="price" placeholder="Enter price" required>
        </div>
        </div>
        <br><br>
        <center>
        <input type="submit" class="btn btn-primary" value="Sell">
        </center>
        </form>
        </div>
        </div>                                                                         
    </body> 
</html>