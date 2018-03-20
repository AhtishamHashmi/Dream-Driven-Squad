<%@page import="java.sql.ResultSet"%>
<%@page import="db.DbConnect" %>
<%
try
{
java.util.HashMap hm=(java.util.HashMap)session.getAttribute("userDetails");
if(hm!=null){
      String location=(String)hm.get("location");
        db.DbConnect d=new db.DbConnect();
        ResultSet rs=d.getUser(location);
        if(rs.next()){
%>
<%
String m=(String)session.getAttribute("msg");
if(m!=null){
    %>
    <hr>
    <%
    session.setAttribute("msg",null);
}
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>TOURISTS VISIT</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/custom.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <!--style>
	body
	{
		padding-top: 50px;
	}
  </style-->
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
			<a class="navbar-brand" href="home.jsp">TOURISTS VISIT</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><div class="navbar-text"><p>Welcome</p></div></li>
					<li><a href="home.jsp">Home</a></li>
					<li><a href="home.jsp">Logout</a><li>
				</ul>			
			</div>
		</div>
	</nav>
	</br>
	</br>
		<div class="container">
			<section>
			<div class="row">
				<div class="col-lg-6">
				
					<div class="col-lg-6">
						
							<form action="" class="form-horizontal">
								<div class="form-group">
									<label for="name" class="control-label">Name: <font color="grey"><%=rs.getString(2)%></font></label>
									
								</div><!--end form group-->
								<div class="form-group">
									<label for="email" class="control-label">Email:<font color="grey"><%=rs.getString(1)%></font></label>
									
								</div><!--end form group-->
								<div class="form-group">
									<label for="gender" class="control-label">Company:<font color="grey"><%=rs.getString(3) %></font></label>
								</div><!--end form group-->
								<div class="form-group">
                                                                    <label for="dob" class="control-label">Contact: <font color="grey"><%=rs.getString(4)%></font></label>
								</div>
								</div><!--end form group-->
								<div class="col-lg-10 form-group">
									<label for="state" class="control-label">Location: <font color="grey"><%=rs.getString(5)%></font></label>
								
							</form>
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
				<p>Design and Develop by &copy DREAM DRIVEN SQUAD</p>
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
}
}
else
{
         session.setAttribute("msg","plz login first");
	response.sendRedirect("guide.jsp");
}
}catch(Exception ex){
	ex.printStackTrace();
}
%>