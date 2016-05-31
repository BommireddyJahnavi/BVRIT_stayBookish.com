<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <title>WELCOME</title>
</head>
<body>
		<body id="index" style="background-color: #ccddff;font-family:new century schoolbook;">
        <% String user = (String)request.getAttribute("user");%>
        <div class="row"></div>
		<div class="col-sm-6 col-md-4 col-md-offset-4">
        <div class="container header-container">
        <h1>Welcome <%=user %> TO STAYBOOKISH!!!</h1>
        </div>
        <button type="submit" class="btn btn-primary">ADD</button>
        <hr size = 4 color = "blue"></hr>
        <h3>SEARCH BOOKS HERE.....</h3> 
        <div class="container"></div>
        <div class="container table-container">
        <table class="table table-border table-hover" id="table">
        <div class = dropdown>
        <button class="btn btn-lg btn-primary btn-block dropdown-toggle" type="button" data-toggle="dropdown">CSE
        <span class = "caret"></span></button>
        <ul class = "dropdown-menu">
        <li><a href = "#">I BTech</a></li>
        <li><a href = "#">II BTech</a></li>
        <li><a href = "#">III BTech</a></li>
        <li><a href = "#">IV BTech</a></li>
        </ul>
        </div>
        <br>
        <div class = dropdown>
        <button class="btn btn-lg btn-primary btn-block dropdown-toggle" type="button" data-toggle="dropdown">ECE
        <span class = "caret"></span></button>
        <ul class = "dropdown-menu">
        <li><a href = "#">I BTech</a></li>
        <li><a href = "#">II BTech</a></li>
        <li><a href = "#">III BTech</a></li>
        <li><a href = "#">IV BTech</a></li>
        </ul>
        </div>
        <br>
        <div class = dropdown>
        <button class="btn btn-lg btn-primary btn-block dropdown-toggle" type="button" data-toggle="dropdown">EEE
        <span class = "caret"></span></button>
        <ul class = "dropdown-menu">
        <li><a href = "#">I BTech</a></li>
        <li><a href = "#">II BTech</a></li>
        <li><a href = "#">III BTech</a></li>
        <li><a href = "#">IV BTech</a></li>
        </ul>
        </div>
        <br>
        <div class = dropdown>
        <button class="btn btn-lg btn-primary btn-block dropdown-toggle" type="button" data-toggle="dropdown">IT
        <span class = "caret"></span></button>
        <ul class = "dropdown-menu">
        <li><a href = "#">I BTech</a></li>
        <li><a href = "#">II BTech</a></li>
        <li><a href = "#">III BTech</a></li>
        <li><a href = "#">IV BTech</a></li>
        </ul>
        </div>
        <br>
        
        <a href="loginView.jsp" class="btn btn-lg btn-primary btn-block"> Logout </a>
        </table>
        </div>
        </div>
</body>
</html>