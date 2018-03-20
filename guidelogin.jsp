<%@page import="java.util.*;" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.DbConnect" %>
<%
    DbConnect db=(DbConnect)application.getAttribute("dbc");
    if(db==null){
        db=new DbConnect();
        application.setAttribute("dbc",db);
    }
try{
	String location=request.getParameter("location");
        ResultSet rs=db.getUser(location);
	if(rs.next()){
             	HashMap hm=new HashMap();
		hm.put("email",rs.getString(1));
		hm.put("name",rs.getString(2));
               hm.put("company",rs.getString(3));
		hm.put("contact",rs.getString(4));
                hm.put("location",rs.getString(5));
		session.setAttribute("userDetails",hm);
		response.sendRedirect("guideprofile.jsp");
		 rs.close();
	
	}else{
	        
              session.setAttribute("msg","INVALID ENTRIES");
		response.sendRedirect("guide.jsp"); 
	}
}catch(Exception ex){
%>
<%=ex%>
<%	
}
%>
