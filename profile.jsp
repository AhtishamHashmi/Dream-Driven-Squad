<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.HashMap"%>
<!DOCTYPE html>
<%
    HashMap hm=(HashMap)session.getAttribute("userDetails");
    if(hm!=null){
        String e=(String)hm.get("email");
        String n=(String)hm.get("name");
        db.DbConnect d=new db.DbConnect();
        ResultSet rs=d.getUser(e);
        if(rs.next()){
%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title></title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/custom.css" rel="stylesheet">

  </head>
  
  <body data-spy="scroll" data-target="#my-navbar">
    <!--Navbar-->
	<!--nav class="navbar navbar-inverse" id="my-navbar"-->
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="profile.jsp">PeopleTalk</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><div class="navbar-text"><p>Welcome:<%=n%> </p></div></li>
					<li><a href="logout.jsp">Logout</a><li>
				</ul>			
			</div>
		</div>
	</nav>
	</br>
	</br>
		<div class="container">
			<section>
			<div class="row">
				<div class="col-lg-5">
					<div class="row">
						<div class="col-lg-4">
                                                    <img src="GetPhoto?email=<%=e%>" width="100" height="120">
						</div>
						<div class="col-lg-6">
							
							<div class="form-group">
								<label for="email" class="control-label">Name: <font color="grey"><%=n%></font></label>
								
							</div><!--end form group-->
							<div class="form-group">
								<label for="name" class="control-label">Email:<font color="grey"> <%=e%></font></label>
								
							</div><!--end form group-->
							<div class="form-group">
								<label for="gender" class="control-label">Gender: <font color="grey"><%=rs.getString(5)%></font></label>
							</div><!--end form group-->
							<div class="form-group">
								<label for="dob" class="control-label">Date of Birth: <font color="grey"><%=rs.getString(6)%></font></label>
							</div><!--end form group-->
						</div>
					</div>
					<div class="row">
						<div class="col-lg-10">
							<div class="col-lg-10 form-group">
								<label for="state" class="control-label">Address: <font color="grey"><%=rs.getString(9)%>, <%=rs.getString(8)%>, <%=rs.getString(7)%></font></label>
							</div><!--end form group-->
							<div class="form-group">
								<div class="col-lg-10 form-group">
									<a href="editprofile.html" class="btn btn-primary">Edit Profile</a>
									<a href="changepassword.html" class="btn btn-danger">Change Password</a>
								</div>
							</div><!--end form group-->
						</div>
					</div>
					
				</div>
				<div class="col-lg-6">
					<div class="panel panel-default">
						<div class="panel-heading text-center">
							<h3>Search People</h3>
						</div>
						<div class="panel-body">
							<form action="peoplesearch.jsp" class="form-horizontal">
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
								</div>
								<div class="form-group">
									<label for="city" class="col-lg-3 control-label">Area:</label>
										<div class="col-lg-9">
										<select name="area" class="form-control">
											<option value="Sector-51">Sector-51</option>
											<option value="Sector-34">Sector-34</option>
											<option value="Alpha-1">Alpha-1</option>
											<option value="Beta-1">Beta-1</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<div class="col-lg-10 col-lg-offset-3">
										<button type="submit" class="btn btn-primary">Search</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>

	
	
	<!--footer-->
	
	<div class="navbar navbar-inverse navbar-fixed-bottom">
		<div class="container">
			<div class="navbar-text pull-left">
				<p>Design and Develop by INCAPP</p>
			</div>
	
		</div>
	</div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
<%
        }else{
            session.setAttribute("msg","Plz Login First!");
            response.sendRedirect("home.jsp");
        }
    }else{
        session.setAttribute("msg","Plz Login First!");
        response.sendRedirect("home.jsp");
    }
%>