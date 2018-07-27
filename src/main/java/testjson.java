import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.google.gson.*;
import com.info.UserInfo;
public class testjson {
		public static void main(String args[]){
//			JSONObject obj=new JSONObject();
//			obj.put("APIkey", "123");
//			obj.put("APImaster", "12");
//			writeStringToFile(obj.toString(),"C:/Users/strive天/Desktop/user.json");
			Gson g=new Gson();
			UserInfo user=new UserInfo("222","66");
			String json = g.toJson(user);
			//writeStringToFile(json,"C:/Users/strive天/Desktop/user.json");
			UserInfo u=readJsonFile("C:/Users/strive天/Desktop/user.json");
			System.out.println(u.APIkey);
		}
	 public static void writeStringToFile(String json, String filePath) {
	        File txt = new File(filePath);
	        if (!txt.exists()) {
	            try {
	                txt.createNewFile();
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
	        }

	        byte[] bytes = json.getBytes(); //新加的
	        int b = json.length(); 
	        FileOutputStream fos = null;
	        try {
	            fos = new FileOutputStream(txt);
	            fos.write(bytes);
	            fos.flush();
	            fos.close();
	        } catch (FileNotFoundException e) {
	            e.printStackTrace();
	        } catch (IOException e) {
	            e.printStackTrace();
	        }

	    }
	 @SuppressWarnings("finally")
	public static UserInfo readJsonFile(String filePath){
		 File file =new File(filePath);
		 BufferedReader reader=null;
		 StringBuilder sb=new StringBuilder();
		 try{
			 reader=new BufferedReader(new FileReader(file));
			 String tmpStr=null;
			 while((tmpStr=reader.readLine())!=null){
				 sb.append(tmpStr);
			 }
		 }catch(IOException e){
			 e.printStackTrace();
		 }finally{
			 if(reader!=null){
				 try {
					reader.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			 }
			 Gson g=new Gson();
			 UserInfo user=g.fromJson(sb.toString(), UserInfo.class);
			 return user;
		 }
	 }
}
		
