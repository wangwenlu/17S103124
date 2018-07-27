package cn.jpush.api.examples;


import java.sql.Statement;  
import java.sql.Connection;  
import java.sql.DriverManager;  
import java.sql.ResultSet;  
import java.sql.SQLException; 
import java.sql.Date;

import com.mysql.jdbc.PreparedStatement;
	public class testDB1 {  
	 public static Connection conn=null;  
	 public static Statement stmt = null;  
	 public static ResultSet rs = null;  
	 public static void getCon() throws ClassNotFoundException, SQLException {  
	  Class.forName("com.mysql.jdbc.Driver");  
	  conn = DriverManager.getConnection("jdbc:mysql://localhost/finalDesign?"  
	    + "user=root&password=");  
	 }  
	 public static void closeCon(Connection conn) throws SQLException {  
	  if (conn != null)  
	   conn.close();  
	 }
	 
	 
	 public static void insertHistory(String title,String content,Date date){
		 String sql="insert into historyInfo(title,content,time) values(?,?,?)";
		 testDB1 dbc= new testDB1();
		 try {  
			   dbc.getCon();
			   PreparedStatement pstate=(PreparedStatement) conn.prepareStatement(sql);
			   
			   pstate.setString(1, title);
			   pstate.setString(2, content);
			   pstate.setDate(3, date);
			   pstate.executeUpdate();
			  } catch (ClassNotFoundException e) {  
			   
			   e.printStackTrace();  
			  } catch (SQLException e) {  
			 
			   e.printStackTrace();  
			  }
	 }
}  

