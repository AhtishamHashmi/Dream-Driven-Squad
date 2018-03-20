/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import db.DbConnect;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.mail.PasswordAuthentication;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author shashank
 */
@MultipartConfig
public class NewServlet extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ServletContext application=request.getServletContext();
        DbConnect db=(DbConnect)application.getAttribute("dbc");
        if(db==null)
        {
            db=new DbConnect();
            application.setAttribute("dbc", db);
        }
        response.setContentType("text/html;charset=UTF-8");
     PrintWriter out=null;
     HttpSession session=null;
     try{
        session=request.getSession();
        out=response.getWriter();
        String n=request.getParameter("name");
        String p=request.getParameter("phone");
        String e=request.getParameter("email");
        String g=request.getParameter("gender");
        String s=request.getParameter("state");
        String c=request.getParameter("city");
        String a=request.getParameter("area");
        String pass="";
        String sss="abcefghijklmnopqrstuvwxyzABCEFGHIJKLMNOPQRSTUVWXYZ1234567890@#$%";
        int i,pl=8;
        for(int x=0;x<pl;x++)
        {
         i=(int)(Math.random()*(sss.length()-1));
         pass=pass+sss.charAt(i);
        }//end-code for random string 
        //code to convert String into date
        String d=request.getParameter("dob");
        java.text.SimpleDateFormat sdf=new java.text.SimpleDateFormat("yyyy-MM-dd");
        java.util.Date dt=sdf.parse(d);
        java.sql.Date sdt=new java.sql.Date(dt.getTime());
        //check email vaildity
        InternetAddress internetAddress=new InternetAddress(e);
        internetAddress.validate();
        //end check email validate
        //db.DbConnect db=new DbConnect();
        boolean r=db.setUser(e,pass,n,p,g,sdt,s,c,a);
        if(r){
            //mail send code
            try{
              final String AEMAIL="YourEmailID";
              final String APASS="YourPass";
              String SEMAIL=e;
              String SUB="Register Success";
              String BODY="Your Id "+e+"</br> Password="+pass;
              Properties props=new Properties();
              props.put("mail.smtp.host","smtp.gmail.com");
              props.put("mail.smtp.socketFactory.port","465");
              props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
              props.put("mail.smtp.auth","true");
              props.put("mail.smtp.port","465");
             Session ses=Session.getInstance(props,
                     new javax.mail.Authenticator()  {
                         protected PasswordAuthentication getPasswordAuthentication() {
                             return new PasswordAuthentication(AEMAIL,APASS);
                }
               }
             );
              Message message=new MimeMessage(ses);
              message.setFrom(new InternetAddress(AEMAIL));
              message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(SEMAIL));
              message.setSubject(SUB);
              message.setContent(BODY,"text/html");
              Transport.send(message);
            }catch(Exception ex){
                ex.printStackTrace();
            }
            //end mail send code
            java.util.HashMap hm=new java.util.HashMap();
            hm.put("email",e);
            hm.put("name",n);
            session.setAttribute("userDetails",hm);
            response.sendRedirect("profile.jsp");
        }
        else{
            session.setAttribute("msg","Registration Failed.");
            response.sendRedirect("home.jsp");
        }
     }catch(Exception ex){
         session.setAttribute("msg","Registration Failed:"+ex);
        ex.printStackTrace();
        response.sendRedirect("home.jsp");
     }
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
