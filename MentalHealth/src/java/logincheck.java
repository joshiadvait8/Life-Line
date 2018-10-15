
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Jethava
 */
public class logincheck {
 
    String sql="select * from login_tb where username=? and password=?";
	String url = "jdbc:mysql://localhost:3306/hnc?useSSL=FALSE";
	String username = "root";
	String password = "root";
	
	public boolean check(String uname,String pass) {
		Connection con=null;
	    try{
		Class.forName("com.mysql.jdbc.Driver");

    	
    	 con= DriverManager.getConnection( url, username, password);
    	 PreparedStatement st=con.prepareStatement(sql);
    	 st.setString(1,uname);
    	 st.setString(2,pass);
    	 ResultSet rs=st.executeQuery();
    	 if(rs.next()) {
    		 return true;
    	 }
    	  
    }catch(Exception e){System.out.println(e);}
		
		return false;
	}
	
}
