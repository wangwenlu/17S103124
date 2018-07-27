

	import java.sql.Date;
import java.sql.Statement;  
import java.sql.Connection;  
import java.sql.DriverManager;  
import java.sql.ResultSet;  
import java.sql.SQLException;  
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.info.UserInfo;
import com.info.historyInfo;
import com.mysql.jdbc.PreparedStatement;
	public class testDB {  
	 public static Connection conn=null;  
	 public static Statement stmt = null;  
	 public static ResultSet rs = null;  //这样是声明一个对象 new是创建一个对象
	 public static void getCon() throws ClassNotFoundException, SQLException {  
	  Class.forName("com.mysql.jdbc.Driver");  
	  conn = DriverManager.getConnection("jdbc:mysql://localhost/finalDesign?"  
	    + "user=root&password=");  
	 }  
	 public static void closeCon(Connection conn) throws SQLException {  
	  if (conn != null)  
	   conn.close();  
	 }
	 public static List<UserInfo> getAllUserInfo(){
		 List<UserInfo> userList=new ArrayList<UserInfo>();
		 testDB dbc= new testDB();
		 String key=null;
		 String master=null;
		 String ID=null;
		  try {  
		   dbc.getCon();  
		   stmt = conn.createStatement();  
		   rs = stmt.executeQuery("select * from user");  
		   while(rs.next()) {   
			ID=rs.getString("ID");
		    key=rs.getString("APIkey");
		    master=rs.getString("APImaster");
		    UserInfo user=new UserInfo(ID,key,master);
		    userList.add(user);
		   }  
		   System.out.println("conn:" + testDB.conn);  
		   System.out.println("mysql测试成功");  
		  } catch (ClassNotFoundException e) {  
		   // TODO Auto-generated catch block  
		   e.printStackTrace();  
		  } catch (SQLException e) {  
		   // TODO Auto-generated catch block  
		   e.printStackTrace();  
		  }
		 return userList;
	 }
	 public static UserInfo getUserInfo(){
		 testDB dbc= new testDB();
		 String key=null;
		 String master=null;
		 String ID=null;
		  try {  
		   dbc.getCon();  
		   stmt = conn.createStatement();  
		   rs = stmt.executeQuery("select * from user");  
		   while(rs.next()) {
			ID=rs.getString("ID");
		    key=rs.getString("APIkey");
		    master=rs.getString("APImaster");
		   }  
		   System.out.println("conn:" + testDB.conn);  
		   System.out.println("mysql测试成功");  
		  } catch (ClassNotFoundException e) {  
		   // TODO Auto-generated catch block  
		   e.printStackTrace();  
		  } catch (SQLException e) {  
		   // TODO Auto-generated catch block  
		   e.printStackTrace();  
		  }
		  UserInfo user=new UserInfo(ID,key,master);
		  return user;
	 }
	 public static List<UserInfo> searchUser(String userName){
		 testDB dbc= new testDB();
		 String key=null;
		 String master=null;
		 String ID=null;
		 UserInfo user=null;
		 List<UserInfo> list=new ArrayList<UserInfo>();
		  try {  
		   dbc.getCon();  
		   stmt = conn.createStatement();  
		   rs = stmt.executeQuery("select * from user");  
		   while(rs.next()) {
			ID=rs.getString("ID");
		    key=rs.getString("APIkey");
		    master=rs.getString("APImaster");
		    if(ID.equals(userName)){
		    	user=new UserInfo(ID,key,master);
		    	list.add(user);
		    	break;
		    }
		   }  
		   System.out.println("conn:" + testDB.conn);  
		   System.out.println("mysql测试成功");  
		  } catch (ClassNotFoundException e) {  
		   // TODO Auto-generated catch block  
		   e.printStackTrace();  
		  } catch (SQLException e) {  
		   // TODO Auto-generated catch block  
		   e.printStackTrace();  
		  }
		  return list;
	 }
	 public static void insertHistory(String title,String content,int time){
		 String sql="insert into history values(?,?,?)";
		 testDB dbc= new testDB();
		 try {  
			   dbc.getCon();
			   PreparedStatement pstate=(PreparedStatement) conn.prepareStatement(sql);
			   pstate.setString(1, title);
			   pstate.setString(2, content);
			   pstate.setInt(3, time);
			  } catch (ClassNotFoundException e) {  
			   
			   e.printStackTrace();  
			  } catch (SQLException e) {  
			 
			   e.printStackTrace();  
			  }
	 	}
	 public static List<UserInfo> finduserByGroup(String groupName){
		 testDB dbc= new testDB();
		 String key=null;
		 String master=null;
		 String gName=null;
		 String ID=null;
		 UserInfo user=null;
		 List<UserInfo> list=new ArrayList<UserInfo>();
		  try {  
		   testDB.getCon();  
		   stmt = conn.createStatement();
		   String sql="select * from groupmanage where groupName='"+groupName+"'";
		   rs = stmt.executeQuery("select * from groupmanage"); 
		   System.out.println(sql);
		   while(rs.next()) {  
			ID=rs.getString("ID");
		    key=rs.getString("APIkey");
		    master=rs.getString("APImaster");
		    gName=rs.getString("groupName");
		    if(gName.equals(groupName)){
		    	user=new UserInfo(ID,key,master,gName);
		    	list.add(user);
		    }
		   }  
		   System.out.println("conn:" + testDB.conn);  
		   System.out.println("mysql测试成功");  
		  } catch (ClassNotFoundException e) {  
		   // TODO Auto-generated catch block  
		   e.printStackTrace();  
		  } catch (SQLException e) {  
		   // TODO Auto-generated catch block  
		   e.printStackTrace();  
		  }
		  return list;
	 }
	 public static List<historyInfo> searchAllHistory(){
		 List<historyInfo> historyList=new ArrayList<historyInfo>();
		 testDB dbc= new testDB();
		 String title=null;
		 String content=null;
		 Date time=null;
		 historyInfo history=null;
		  try {  
		   dbc.getCon();  
		   stmt = conn.createStatement();  
		   rs = stmt.executeQuery("select * from historyinfo");  
		   while(rs.next()) {                
		    title=rs.getString("title");
		    content=rs.getString("content");
		    time=rs.getDate("time");
		    history=new historyInfo(title,content,time);
		    historyList.add(history);
		   }  
		   System.out.println("conn:" + testDB.conn);  
		   System.out.println("mysql测试成功");  
		  } catch (ClassNotFoundException e) {  
		   // TODO Auto-generated catch block  
		   e.printStackTrace();  
		  } catch (SQLException e) {  
		   // TODO Auto-generated catch block  
		   e.printStackTrace();  
		  }
		  return historyList;
	 }
	 public static List<historyInfo> findhistoryByDate(String searchDate){
		 List<historyInfo> historyList=new ArrayList<historyInfo>();
		 testDB dbc= new testDB();
		 String title=null;
		 String content=null;
		 Date time=null;
		 historyInfo history=null;
		  try {  
		   dbc.getCon();  
		   stmt = conn.createStatement();  
		   rs = stmt.executeQuery("select * from historyinfo");  
		   while(rs.next()) {                
		    title=rs.getString("title");
		    content=rs.getString("content");
		    time=rs.getDate("time");
		    String t=time.toString();
		    if(t.equals(searchDate)){
		    	history=new historyInfo(title,content,time);
		    	historyList.add(history);
		    }else{
		    	continue;
		    }
		   }  
		   System.out.println("conn:" + testDB.conn);  
		   System.out.println("mysql测试成功");  
		  } catch (ClassNotFoundException e) {  
		   // TODO Auto-generated catch block  
		   e.printStackTrace();  
		  } catch (SQLException e) {  
		   // TODO Auto-generated catch block  
		   e.printStackTrace();  
		  }
		  return historyList;
	 }
	 public static List<historyInfo> findHistoryByDateInterval(Date startTime,Date endTime){
		 List<historyInfo> historyList = new ArrayList<historyInfo>();
		 testDB dbc= new testDB();
		 String title=null;
		 String content=null;
		 Date time=null;
		 historyInfo history=null;
		  try {  
		   dbc.getCon();  
		   stmt = conn.createStatement(); 
		   String sql="select * from historyinfo where time >='"+startTime+"' and time<='"+endTime+"'";
		   System.out.println(sql);
		   rs = stmt.executeQuery(sql);  
		   while(rs.next()) {                
		    title=rs.getString("title");
		    content=rs.getString("content");
		    time=rs.getDate("time");
		    history=new historyInfo(title,content,time);
		    historyList.add(history);
		   }  
		   System.out.println("conn:" + testDB.conn);  
		   System.out.println("mysql测试成功");  
		  } catch (ClassNotFoundException e) {  
		   // TODO Auto-generated catch block  
		   e.printStackTrace();  
		  } catch (SQLException e) {  
		   // TODO Auto-generated catch block  
		   e.printStackTrace();  
		  }
		  return historyList;
	 } 
	 public static List<historyInfo> findAfter(Date startTime){
		 List<historyInfo> historyList = new ArrayList<historyInfo>();
		 testDB dbc= new testDB();
		 String title=null;
		 String content=null;
		 Date time=null;
		 historyInfo history=null;
		  try {  
		   dbc.getCon();  
		   stmt = conn.createStatement(); 
		   String sql="select * from historyinfo where time>='"+startTime+"'";
		   System.out.println(sql);
		   rs = stmt.executeQuery(sql);  
		   while(rs.next()) {                
		    title=rs.getString("title");
		    content=rs.getString("content");
		    time=rs.getDate("time");
		    history=new historyInfo(title,content,time);
		    historyList.add(history);
		   }  
		   System.out.println("conn:" + testDB.conn);  
		   System.out.println("mysql测试成功");  
		  } catch (ClassNotFoundException e) {  
		   // TODO Auto-generated catch block  
		   e.printStackTrace();  
		  } catch (SQLException e) {  
		   // TODO Auto-generated catch block  
		   e.printStackTrace();  
		  }
		  return historyList;
	 }
	 public static List<historyInfo> findBefore(Date endTime){
		 List<historyInfo> historyList = new ArrayList<historyInfo>();
		 testDB dbc= new testDB();
		 String title=null;
		 String content=null;
		 Date time=null;
		 historyInfo history=null;
		  try {  
		   dbc.getCon();  
		   stmt = conn.createStatement(); 
		   String sql="select * from historyinfo where time<='"+endTime+"'";
		   System.out.println(sql);
		   rs = stmt.executeQuery(sql);//  执行查询语句
		   while(rs.next()) {                
		    title=rs.getString("title");
		    content=rs.getString("content");
		    time=rs.getDate("time");
		    history=new historyInfo(title,content,time);
		    historyList.add(history);
		   }  
		   System.out.println("conn:" + testDB.conn);  
		   System.out.println("mysql测试成功");  
		  } catch (ClassNotFoundException e) {  
		   // TODO Auto-generated catch block  
		   e.printStackTrace();  
		  } catch (SQLException e) {  
		   // TODO Auto-generated catch block  
		   e.printStackTrace();  
		  }
		  return historyList;
	 }
	 public static boolean updateGroup(String userName,String group){
		 testDB dbc= new testDB();
		 int result=20;
		 try {  
			   dbc.getCon();  
			   stmt = conn.createStatement(); 
			   String sql="update groupmanage set groupName='"+group+"'where ID ='"+userName+"'";
			   System.out.println(sql);
			   result= stmt.executeUpdate(sql);//  执行更新语句
			   System.out.println(result);
			   System.out.println("conn:" + testDB.conn);  
			   System.out.println("mysql测试成功");  
			  } catch (ClassNotFoundException e) {  
			   // TODO Auto-generated catch block  
			   e.printStackTrace();  
			  } catch (SQLException e) {  
			   // TODO Auto-generated catch block  
			   e.printStackTrace();  
			  }
		 if(result==1){
			 return true;
		 }else{
			 return false;
		 }
	 }
}  

