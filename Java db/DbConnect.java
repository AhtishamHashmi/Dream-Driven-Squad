/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;
import java.sql.*;
public class DbConnect {
  private Connection con;
  private Statement st;
  private PreparedStatement getUser,checkUser,insertUser,User;
  public DbConnect(){
   try{
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/peopletalk","root","Shashank@1");
    st=con.createStatement();
    getUser=con.prepareStatement("select * from userinfo where email=?");
    getUser=con.prepareStatement("select * from guide where location=?");
    checkUser=con.prepareStatement("select * from userinfo where email=? and pass=?");
    insertUser=con.prepareStatement("insert into userinfo values(?,?,?,?,?,?,?,?,?)");
    User=con.prepareStatement("select * from guide where location=?");
   }catch(Exception ex){
       ex.printStackTrace();
   }
  }
  public ResultSet checkUser(String e,String p){
      try{
        checkUser.setString(1,e);
        checkUser.setString(2,p);
        ResultSet rs=checkUser.executeQuery();
        return rs;
      }catch(Exception ex){
          ex.printStackTrace();
          return null;
      }
  }
 
  public ResultSet getUser(String e){
      try{
       getUser.setString(1, e);
       ResultSet rs=getUser.executeQuery();
       return rs;
      }catch(Exception ex){
        ex.printStackTrace();
        return null;
      }
  }
   public ResultSet gettUser(String location){
      try{
       getUser.setString(5, location);
       ResultSet rs=getUser.executeQuery();
       return rs;
      }catch(Exception ex){
        ex.printStackTrace();
        return null;
      }
  }
  public boolean setUser(String e,String p,String n,String ph,String gen,java.sql.Date d,String s,String c,String a){
      try{
          insertUser.setString(1, e);
          insertUser.setString(2, p);
          insertUser.setString(3, n);
          insertUser.setString(4, ph);
          insertUser.setString(5, gen);
          insertUser.setDate(6, d);
          insertUser.setString(7, s);
          insertUser.setString(8, c);
          insertUser.setString(9, a);
          int x=insertUser.executeUpdate();
          if(x==1)
              return true;
          else
              return false;
      }catch(Exception ex){
          ex.printStackTrace();
          return false;
      }
  }
    public boolean User(String email,String name,String company,String contact,String location){
      try{
          User.setString(1, email);
          User.setString(2, name);
          User.setString(3, company);
          User.setString(4, contact);
          User.setString(5, location);
          int x=User.executeUpdate();
          if(x==1)
              return true;
          else
              return false;
      }catch(Exception ex){
          ex.printStackTrace();
          return false;
      }
         }
}
