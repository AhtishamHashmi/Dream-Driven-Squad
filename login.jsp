<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Tourists Visit</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/custom.css" rel="stylesheet">

    
  </head>
  
  <body data-spy="scroll" data-target="#my-navbar">
    <!--Navbar-->
	<!--nav class="navbar navbar-inverse" id="my-navbar"-->
	<nav class="navbar navbar-inverse navbar-fixed-top" id="my-navbar">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="home.jsp" class="navbar-brand">TOURISTS VISIT</a>
			</div><!--end header-->
		</div><!--end container-->
	</nav><!--end navbar-->	
	<!--Gallery-->
	<div class="container">
		<section>
			<div class="carousel slide" id="screenshot-carousel" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#screenshot-carousel" data-slide-to="0" class="active"></li>
					<li data-target="#screenshot-carousel" data-slide-to="1"></li>
					<li data-target="#screenshot-carousel" data-slide-to="2"></li>
				</ol>
<marquee><font size="8px" face="Times New Roman" color="#6666ff">Jaipur Tourism Welcomes You!!!</font></marquee>
				<div class="carousel-inner">
					<div class="item active">
						<img src="img/jalmahal.jpg" alt="Text of the image" height="40%" width="100%">
						<div class="carousel-caption">
							<h1>Tourists Visit</h1>
							<p>Come, Travel,  Feel the Culture</p>
						</div>
					</div>
					<div class="item">
						<img src="img/hawamahal.jpg" alt="Text of the image" height="40%" width="100%">
						<div class="carousel-caption">
							<h1>Tourists Visit</h1>
							<p>Come, Travel,  Feel the Culture</p>
						</div>
					</div>
					<div class="item">
						<img src="img/jantarmantar.jpg" alt="Text of the image" height="40%" width="100%">
						<div class="carousel-caption">
							<h1>Tourists Visit</h1>
							<p>Come, Travel,  Feel the Culture</p>
						</div>
					</div>
					
				</div><!--end carousel-inner-->
				<a href="#screenshot-carousel" class="left carousel-control" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span>
				</a>
				<a href="#screenshot-carousel" class="right carousel-control" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div><!--end of carousel-->
		</section>
		<hr>
	</div><!--end of container-->
       
      
       
	<!--Features-->
		<div class="container">
			<section>
			<div class="row">
				<div class="col-lg-6">
					<div class="panel panel-default">
						<div class="panel-heading text-center">
							<h3>Login</h3>
						</div>
						<div class="panel-body">
							<form action="LoginPro.jsp" data-toggle="validator" class="form-horizontal">
								<div class="form-group">
									<label for="email" class="col-lg-3 control-label">Email:</label>
									<div class="col-lg-9">
										<input type="email" name="email" class="form-control" id="email" placeholder="Enter your email" required />
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="password" class="col-lg-3 control-label">Password:</label>
									<div class="col-lg-9">
										<input type="password" name="pass" class="form-control" id="name" placeholder="Enter your name" required />
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<div class="col-lg-10 col-lg-offset-3">
                                                                            <input type="submit" class="btn btn-primary" value="Login"/>
										<input type="reset" class="btn btn-primary" value="Reset">
									</div>
								</div>
								<div class="form-group">
									<div class="col-lg-10 col-lg-offset-3">
										<a href="forgetpassword.jsp">Forget Password?</a>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="panel panel-default">
						<div class="panel-heading text-center">
							<h3>Registration</h3>
						</div>
						<div class="panel-body">
                                                    <form action="reg" enctype="multipart/form-data" method="post" data-toggle="validator" class="form-horizontal">
								<div class="form-group">
									<label for="email" class="col-lg-3 control-label">Email:</label>
									<div class="col-lg-9">
										<input type="email" name="email" class="form-control" id="email" placeholder="Enter your email" required />
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="name" class="col-lg-3 control-label">Name:</label>
									<div class="col-lg-9">
										<input type="text" name="name" class="form-control" id="name" placeholder="Enter your name" required />
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="phone" class="col-lg-3 control-label">Phone:</label>
									<div class="col-lg-9">
										<input type="text" name="phone" minlength="10" maxlength="10" class="form-control" id="phone" placeholder="Enter your Phone" required />
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="gender" class="col-lg-3 control-label">Gender:</label>
									<div class="col-lg-9">
<radiogroup>
										<label class="radio-inline"><input type="radio" id="gender" checked/>Male</label>
										<label class="radio-inline"><input type="radio" id="gender"/>Female</label>
										<label class="radio-inline"><input type="radio" id="gender"/>Other</label>
		</radiogroup>							</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="dob" class="col-lg-3 control-label">Date of Birth:</label>
									<div class="col-lg-9">
										<input type="date" name="dob" class="form-control" id="dob" required />
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="state" class="col-lg-3 control-label">State:</label>
									<div class="col-lg-9">
										<select name="state" class="form-control">
											<option value="UttarPradesh">UttarPradesh</option>
											<option value="Assam">Assam</option>
											<option value="Bihar">Bihar</option>
											<option value="Goa">Goa</option>
											<option value="Gujarat ">Gujarat </option>
											<option value="Haryana">Haryana</option>
											<option value="Rajasthan">Rajasthan</option>
											<option value="UttarPradesh">UttarPradesh</option>
											<option value="UttaraKhand">Uttarakhand</option>
										</select>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="city" class="col-lg-3 control-label">City:</label>
									<div class="col-lg-9">
										<select name="city" class="form-control">
											<option value="Noida">Noida</option>
											<option value="GreaterNoida">GreaterNoida</option>
											<option value="Surat">Surat</option>
											<option value="Panjim">Panjim</option>
										</select>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="area" class="col-lg-3 control-label">Area:</label>
									<div class="col-lg-9">
										<select name="area" class="form-control">
											<option value="Sector-51">Sector-51</option>
											<option value="Sector-34">Sector-34</option>
											<option value="Alpha-1">Alpha-1</option>
											<option value="Beta-1">Beta-1</option>
										</select>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="photo" class="col-lg-3 control-label">Photo:</label>
									<div class="col-lg-9">
										<input name="photo" type="file" class="form-control" id="photo" required />
										
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<div class="col-lg-10 col-lg-offset-3">
										<input type="submit" class="btn btn-primary" value="Register"/>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				
			</div>
		</section>
	</div>
	<hr>
	
	
	<!--footer-->
	
	<div class="navbar navbar-inverse navbar-fixed-bottom">
		<div class="container">
			<div class="navbar-text pull-left">
				<p>Design and Develop by &copy Dream Driven Squad</p>
			</div>
	
		</div>
	</div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-2.2.2.min.js"></script>
    <script src="js/validator.js"></script>
  </body>
</html><!DOCTYPE html>

