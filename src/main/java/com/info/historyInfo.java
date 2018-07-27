package com.info;
import java.sql.Date;


public class historyInfo {
	public String title;
	public String content;
	public Date time;
	public historyInfo(String title,String content,Date time){
		this.title=title;
		this.content=content;
		this.time=time;
	}
}
