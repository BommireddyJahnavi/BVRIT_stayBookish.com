<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
div.transbox {
    margin: 0px;
    background-color: #ffffff;
    border: 1px solid black;
    opacity: 0.6;
    filter: alpha(opacity=60); /* For IE8 and earlier */
}

div.transbox p {
    margin: 10%;
    font-weight: bold;
    color: #000000;
}
   
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<title>ADD RECORD</title>
</head>
<body>
<div style='position:absolute;z-index:0;left:0;top:0;width:100%;height:100%'>
  <img src='http://i.huffpost.com/gen/1811926/images/o-BOOKS-facebook.jpg' style='width:1200px;height:700px' alt='[]' />
</div>
<% String user = request.getParameter("user");%>
    <div class="row"></div>
    <div class="col-sm-6 col-md-4 col-md-offset-4">
    <h1 class="text-center login-title">BOOKS DETAILS</h1>
    <hr size = 4 ></hr>
    
<div class="background">
  <div class="transbox">
  	<p>
    <form id="form1" enctype="multipart/form-data" action ="/addphoto"  method= "p
ost">
    <h4>
    Book Name: <input type="text" class = "form-control" placeholder = "enter book name" required></input><br>
Enter photo id:
<input type="text" name="id"/>
Select Photo
<input type="file" name="photo"/>

    
    Edition: <input type="text" class = "form-control" placeholder = "enter book edition" required></input><br>
    Author: <input type="text" class = "form-control" placeholder ="enter author name" required></input><br>
    Publisher: <input type="text" class = "form-control" placeholder = "enter publisher" required></input><br>
    Price: <input type="text" class = "form-control" placeholder ="enter price of the book"required></input><br>
    Seller: <input type="text" class = "form-control" placeholder = "enter seller name" required></input><br>
    </h4>
    <input type="hidden" name="user" value="rachana"></input>
    <button class="btn btn-lg btn-primary btn-block" type="submit">ADD RECORD</button> 
    </form>
    </p>
    </div>
    </div>
    </div>
    </div>
   
</body>
</html>