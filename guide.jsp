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
<body>



<button onclick="getLocation()">Get your position.</button><br>	

<div id="mapholder" align="center"></div>

<script>
var x = document.getElementById("demo");

function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition, showError);
    } else {
        x.innerHTML = "Geolocation is not supported by this browser.";
    }
}

function showPosition(position) {
    var latlon = position.coords.latitude + "," + position.coords.longitude;
    var img_url = "https://maps.googleapis.com/maps/api/staticmap?center="
    +latlon+"&zoom=14&size=400x300&key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU";
    document.getElementById("mapholder").innerHTML = "<img src='"+img_url+"'>";
}


function showError(error) {
    switch(error.code) {
        case error.PERMISSION_DENIED:
            x.innerHTML = "User denied the request for Geolocation."
            break;
        case error.POSITION_UNAVAILABLE:
            x.innerHTML = "Location information is unavailable."
            break;
        case error.TIMEOUT:
            x.innerHTML = "The request to get user location timed out."
            break;
        case error.UNKNOWN_ERROR:
            x.innerHTML = "An unknown error occurred."
            break;
    }
}
</script>
</div>
						<div class="panel-body">
							<form action="guidelogin.jsp" data-toggle="validator" class="form-horizontal">
								<div class="form-group">
									<label for="location" class="col-lg-3 control-label">Enter location:</label>
									<div class="col-lg-9">
										<input type="text" name="location" class="form-control" id="location" placeholder="Enter Your Location" required />
									</div>
								</div><!--end form group-->
								
								<div class="form-group">
									<div class="col-lg-10 col-lg-offset-3">
                                                                            <input type="submit" class="btn btn-primary" value="SEARCH"/>
										
									</div>
								</div>
								
							</form>
						</div>
					</div>
				</div>
<p id="demo"><marquee><font color="red">For further information, contact &copy Dream Driven Squad</font></marquee></p>
<!--footer-->
	
	<div class="navbar navbar-inverse navbar-fixed-bottom">
		<div class="container">
			<div class="navbar-text pull-left">
				<p>Design and Develop by &copy Dream Driven Squad</p>
			</div>
	
		</div>
	</div>
</body>
</html>

