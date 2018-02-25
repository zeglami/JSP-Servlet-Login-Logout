package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
	String sql="select *from login_tb where uname=? and pass=?";
	String url = "jdbc:mysql://localhost:3306/db_name";
	String utilisateur = "root";
	String motDePasse = "";
	
	public boolean check(String uname,String pass) {
		Connection con=null;
	    try{
		Class.forName("com.mysql.jdbc.Driver");

    	
    	 con= DriverManager.getConnection( url, utilisateur, motDePasse );
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
