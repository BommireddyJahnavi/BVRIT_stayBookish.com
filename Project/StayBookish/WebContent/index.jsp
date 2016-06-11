<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="com.bvrit.StayBookish.dao.BookDAO" %>
<%@page import="com.bvrit.StayBookish.dao.BookPojo"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<% String user = (String)session.getAttribute("user"); %>
 <%@ page import="com.bvrit.StayBookish.dao.CartDAO" %>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title></title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/agency.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
   
    <script>
$(document).ready(function(){
    $('#myTable').dataTable();
});
</script>
</head>
<%

String message = request.getParameter("msg");
if(message != null){
out.print(message);
}
%>

<body id="page-top" class="index" >

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">Home</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#bookView">Books</a>
                       
                    </li>
                    
                    <li>
                        <a class="page-scroll" href="#sell">Sell</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#about">About</a>
                    </li>
                    
                    <li>
                        <a class="page-scroll" href="#contact">Contact</a>
                    </li>
                    <li>
                    <a href="#cartView"><span class="page-scroll "></span> Cart</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <header>
        <div class="container">
            <div class="intro-text">
                <div class="intro-heading">Welcome To StayBookish!</div>
               
                 <div class="intro-lead-in">You Request We Sell</div>
            </div>
        </div>
    </header>

   <!-- About Section -->
    <section id="bookView">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Books</h2>
                    <h3 class="section-subheading text-muted">Stay Bookish.</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <ul class="timeline">
                        <li>
                         <div class="table-responsive">
<table id="myTable" class="table table-striped" width="100%" >

  <thead valign="bottom">
       <th align="center">Book</th>
       <th align="center" data-sortable="true">Name</th>
       <th align="center" data-sortable="true">Author</th>
       <th align="center" data-sortable="true">Edition</th>
       <th align="center" data-sortable="true">Publisher</th>
       <th align="center" data-sortable="true">Course</th>
       <th data-sortable="true">Price</th>
       <th data-sortable="true">Status</th>
       <th data-sortable="true">Quantity</th>
       <th>Buy</th>
   </thead>
   <tbody>
<% 
BookDAO rdao = new BookDAO();
ArrayList<BookPojo> list = rdao.getAllBooks();
for(BookPojo book : list) {%>
  <tr valign="top">
       <td><img width='150' height='200' src=displayphoto?bid=<%=book.getBid()%>></td>
       <td align="center"><%=book.getBname()%></td>
       <td align="center"><%=book.getAuthor()%></td>
       <td align="center"><%=book.getEdition()%></td>
       <td align="center"><%=book.getPublisher()%></td>
       <td align="center"><%=book.getYear()%></td>
       <td align="center"><%=book.getPrice()%></td>
       <td align="center"><%=book.getStatus()%></td>
       <td align="center"><%=book.getQuantity()%></td>
       <td align="center"><a href="buy?bid=<%=book.getBid()%>">Buy</a></td>
    
  </tr>
<% }%>
 </tbody>
</table>
</div>   
                                
                        </li>
                        
                        
                      
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- About Section -->
    <section id="sell">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    
                     <div id="p" class="container">
        <h1 id="index"> SIGN UP </h1><br><br>
        <div class="row">
        <form  action="signup" method="post" class="col-md-4 col-md-offset-4">
        <div class="form-group">
        <div class="col-md-4">
        <label for="Name">Username:</label>
        </div>
        <div class="col-md-8">
        <input type="text" class="form-control" name="user" placeholder="Enter name">
        </div>
        </div>
        <br><br>
        <div class="form-group">
        <div class="col-md-4">
        <label for="Password">Password:</label>
        </div>
        <div class="col-md-8">
        <input type="password" class="form-control" name="password" placeholder="Enter password">
        </div>
        </div>
        <br><br>
        <div class="form-group">
        <div class="col-md-4">
        <label for="Phone">Phone:</label>
        </div>
        <div class="col-md-8">
        <input type="tel" class="form-control" name="phone" placeholder="Enter phone no." required>
        </div>
        </div>
        <br><br><div class="form-group">
        <div class="col-md-4">
        <label for="Email">Email:</label>
        </div>
        <div class="col-md-8">
        <input type="email" class="form-control" name="email" placeholder="Enter email">
        </div>
        </div>
        
        <br><br>
        <div class="form-group">
        <div class="col-md-4">
        <label for="address">Address:</label>
        </div>
        <div class="col-md-8">
         <input type="text" class="form-control" name="address" placeholder="Enter address">
        </div>
        </div>
        <br><br>
        <center>
        <input type="submit" class="btn btn-primary" value="Sign up"></a>
        <a href="#loginView">Already have an account?Then login</a>
        </center>
        </form>
        </div>
        </div> 
                </div>
            </div>
           
        </div>
    </section>
    
<!-- About Section -->
    <section id="loginView">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    
                     <div id="p" class="container">
        <h1 id="index"> LOGIN </h1><br><br>
        <div class="row">
        <form  action="login" method="post" class="col-md-4 col-md-offset-4">
        <div class="form-group">
        <div class="col-md-4">
        <label for="Name">Username:</label>
        </div>
        <div class="col-md-8">
        <input type="text" class="form-control" name="user" placeholder="Enter name">
        </div>
        </div>
        <br><br>
        <div class="form-group">
        <div class="col-md-4">
        <label for="Name">Password:</label>
        </div>
        <div class="col-md-8">
        <input type="password" class="form-control" name="password" placeholder="Enter password">
        </div>
        </div>
        <br><br>
        <center>
        <input type="submit" class="btn btn-primary" value="Login"></a>
        <a href="signupView.jsp" class="btn btn-primary">Signup</a><br>
        <a href="ForgotPasswordView.jsp" class="btn btn-link">Forgot Password</a>
        </center>
        </form>
        </div>
        </div>                    </div> 
                </div>
            </div>
           
        </div>
    </section>
    

   
   
   
    <!-- About Section -->
    <section id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">About</h2>
                    <h3 class="section-subheading text-muted">Stay Bookish.</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <ul class="timeline">
                        <li>
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="img/about/1.jpeg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                   
                                    <h4 class="subheading">Beginnings</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">It has been more than a decade for the use of inter
net to be much common in each
individual house. The revolution of internet has in
fluenced all types of age groups from seniors
to teenagers; from veterans to trainees, each and e
very person had his way of learning the
method and using it for his own convenience. From l
eisure to fantasy, from shopping to studying
from education to gaming, internet had its dominanc
e compared to any other form of medium.
Internet became the easiest and the cheapest way to
reach the global network. Multiple facets
were added including attractive advertising, live v
ideos, simplified usages etc. Internet became a
good source for marketing and selling products. Int
ernet became the new catalog for product
sales for retail companies. The medium of newspaper
lost its importance for advertising products
to internet</p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="img/about/2.jpeg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">By using our staybookish website you will be able to sell and books online very easily.s</p>
                                </div>
                            </div>
                        </li>
                       
                        
                      
                    </ul>
                </div>
            </div>
        </div>
    </section>

    
    <!-- Clients Aside -->
    <aside class="clients">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <a href="#">
                        <img src="img/logos/envato.jpg" class="img-responsive img-centered" alt="">
                    </a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <a href="#">
                        <img src="img/logos/designmodo.jpg" class="img-responsive img-centered" alt="">
                    </a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <a href="#">
                        <img src="img/logos/themeforest.jpg" class="img-responsive img-centered" alt="">
                    </a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <a href="#">
                        <img src="img/logos/creative-market.jpg" class="img-responsive img-centered" alt="">
                    </a>
                </div>
            </div>
        </div>
    </aside>
    
    <!-- Contact Section -->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Contact Us</h2>
                    <h3 class="section-subheading text-muted"></h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <form name="sentMessage" id="contactForm" novalidate>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Your Name *" id="name" required data-validation-required-message="Please enter your name.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" placeholder="Your Email *" id="email" required data-validation-required-message="Please enter your email address.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="tel" class="form-control" placeholder="Your Phone *" id="phone" required data-validation-required-message="Please enter your phone number.">
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <textarea class="form-control" placeholder="Your Message *" id="message" required data-validation-required-message="Please enter a message."></textarea>
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-lg-12 text-center">
                                <div id="success"></div>
                                <button type="submit" class="btn btn-xl">Send Message</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

     <!-- About Section -->
    <section id="cartView">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    
                     <div id="p" class="container">
                     <div class="container">
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      
    </div>
   
      
       
       
      </div></nav>

	<table id="cart" class="table table-hover table-condensed">
    				<thead>
						<tr>
							<th style="width:80%">Product</th>
							<th style="width:30%">Price</th>
							
							
							<th style="width:30%"></th>
						</tr>
					</thead>
				
					<tbody>
					<% CartDAO crdao = new CartDAO();
					
					int sum = 0;
                    
                    for(BookPojo book : list) {%>
					
						<tr>
							<td data-th="Product">
								<div class="row">
									<div class="col-sm-2 hidden-xs"><img width='150' height='200' src=displayphoto?bid=<%=book.getBid()%>  alt="..." class="img-responsive"/></div>
									<div class="col-sm-10">
										<h4 class="nomargin">&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <%= book.getBname() %></h4>
										<p>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Author:<%=book.getAuthor() %>  &nbsp &nbsp Edition:<%=book.getEdition()%><br>
										&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Publisher:<%=book.getPublisher() %>
										</p>
									</div>
								</div>
							</td>
							
							<td data-th="Price">Rs.<%=book.getPrice() %></td>
							<%sum = sum + Integer.parseInt(book.getPrice()); %>
							<td class="actions" data-th="">
								
								<a href="deletebook?bid=<%=book.getBid()%>"><button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button></a>								
							</td>
						</tr>
						<%} %>
					</tbody>
					<tfoot>
						<tr class="visible-xs">
							<td class="text-center"><strong>Total Rs.<%=sum%></strong></td>
						</tr>
						<tr>
							<td><a href="bookView.jsp" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
							<td colspan="2" class="hidden-xs"></td>
							<td class="hidden-xs text-center"><strong>Total Rs.<%=sum %></strong></td>
							<td><a href="paymentView.jsp" class="btn btn-success btn-block">Checkout <i class="fa fa-angle-right"></i></a></td>
						</tr>
						
					</tfoot>
				</table>
</div>
                </div> 
                </div>
            </div>
           
        </div>
    </section>
  
   
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="js/classie.js"></script>
    <script src="js/cbpAnimatedHeader.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/agency.js"></script>

</body>

</html>