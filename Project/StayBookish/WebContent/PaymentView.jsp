<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
 	<meta name="viewport" content=cwidth=device-width, initial-scale=1">
 	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

<style>

/*Everything but the jumbotron gets side spacing for mobile first views */
.header,
.marketing,
.footer {
  padding-right: 15px;
  padding-left: 15px;
}

/* Make the masthead heading the same height as the navigation */
.header h3 {
  margin-top: 0;
  margin-bottom: 0;
  line-height: 40px;
}

body{
    padding:10px;
}

.show-on-hover:hover > ul.dropdown-menu {
    display: block;    
}

/* Customize container */
@media (min-width: 768px) {
  .container {
    max-width: 730px;
    background:#ffffff;
  }
}
.container-narrow > hr {
  margin: 30px 0;
      background:#ffffff;
}

.main {
  background:#333333;
}

/* Supporting marketing content */
.marketing {
  margin: 20px 0;
}
.marketing p + h4 {
  margin-top: 28px;
}

/* Responsive: Portrait tablets and up */
@media screen and (min-width: 768px) {
  /* Remove the padding we set earlier */
  .header,
  .marketing,
  .footer {
    padding-right: 0;
    padding-left: 0;
  }
  /* Space out the masthead */
  .header {
    margin-bottom: 30px;
  }
  /* Remove the bottom border on the jumbotron for visual effect */
  .jumbotron {
    border-bottom: 0;
  }
}

body {
    padding-top: 0px;
    padding-bottom: 0px;
}

.panel-title {display: inline;font-weight: bold;}
.checkbox.pull-right { margin: 0; }
.pl-ziro { padding-left: 0px; }

.panel {
    border: 0px solid transparent;
    background: #f1f1f1;
}

.panel-default>.panel-heading .badge {
    color: #ffffff;
    background-color: transparent;
}

.container {
    background: #ffffff;
    border-radius:10px;
    margin-top:20px;
    margin-bottom:20px;
}

.panel-heading {
    border-bottom: 0px solid #333333 !important;
}

.panel-default>.panel-heading {
    color: #ffffff;
    background-color: #333333;
}

.panel-default>.panel-heading {
    color: #ffffff;
    background-color: #333333;
        padding-bottom: 15px;
}
</style>

    <title>Purchase</title>

    <!-- Bootstrap core CSS -->
    <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="jumbotron-narrow.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body class="main">
	<div class="container">
 		<div class="row marketing">
            <div class="panel-body">
  				<h4><b>SHIPPIND DETAILS</b></h4>
				<hr />
		        <form class="form-horizontal" role="form">
        			<fieldset>      
				          <!-- Text input-->
        				  <div class="form-group">
          					<div class="col-sm-6">
              					<input type="text" placeholder="First Name" class="form-control" required>
            				</div>
            				<div class="col-sm-6">
              					<input type="text" placeholder="Last Name" class="form-control" required>
            				</div>
          				</div>
						<!-- Text input-->
            			<div class="form-group">
            				<div class="col-sm-12">
              					<input type="text" placeholder="Shipping Address" class="form-control" required>
            				</div>
          				</div>
			            <!-- Text input-->
          				<div class="form-group">
            				<div class="col-sm-6">
              					<input type="text" placeholder="Phone #" class="form-control" required>
            				</div>
            				<div class="col-sm-6">
              					<input type="text" placeholder="Post Code" class="form-control" required>
            				</div>
          				</div>
			            <!-- Text input-->
          				<div class="form-group">
            				<div class="col-sm-12">
              					<input type="text" placeholder="Email Address" class="form-control">
            				</div>
          				</div>
          				<hr>
        			</fieldset>
      			</form>
      	   	  <!-- /input-group --> 
          </div>
        </div>
    <div class="panel panel-default">
    	<div class="panel-heading">
			<p><span class="badge pull-right">249 SEK / monthly</span><span class="badge pull-left">Payment</span></p></div>
                <div class="panel-body">
                    <form role="form">
	                    <div class="form-group">
    	                    <label for="bankName">Bank Name</label>
        	                <div class="input-group">
            	                <input type="text" class="form-control" id="bankName" placeholder="Bank"
                	                required/>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                    	    </div>
                    	</div>
                    	<div class="form-group">
 	                       <label for="cardType">Card Type</label>
    	                    <div class="input-group">
        	                    <input type="text" class="form-control" id="cardType" placeholder="visa/credit/etc"
            	                    required/>
                	            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                    	    </div>
                    	</div>
                    	<div class="form-group">
                        	<label for="cardNumber">Card Number</label>
                        	<div class="input-group">
                            	<input type="password" class="form-control" id="cardNumber" placeholder="XXXX XXXX XXXX"
                            	    required/>
                            	<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                        	</div>
                    	</div>
                    	<div class="row">
                        	<div class="col-xs-7 col-md-7">
                            	<div class="form-group">
                                	<label for="expityMonth">Expiry Date</label>
                                	<br />
                                	<div class="col-xs-6 col-lg-6 pl-ziro">
                                    	<input type="text" class="form-control" id="expityMonth" placeholder="MM" required />
                                	</div>
                                	<div class="col-xs-6 col-lg-6 pl-ziro">
                                    	<input type="text" class="form-control" id="expityYear" placeholder="YY" required /></div>
                            	</div>
                        	</div>
                        	<div class="col-xs-5 col-md-5 pull-right">
                            	<div class="form-group">
                                	<label for="cvCode">CVV Code</label>
                                		<input type="password" class="form-control" id="cvCode" placeholder="XXX" required />
                            	</div>
                        	</div>
                    	</div>
                    </form>
                </div>
            </div>
            <a href="#" class="btn btn-warning btn-lg btn-block" role="button"><span class="glyphicon glyphicon-play"></span> CONFIRM ORDER</a>
			<br>
        	</div>
		</div>
      </div>
    </div> <!-- /container -->
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>