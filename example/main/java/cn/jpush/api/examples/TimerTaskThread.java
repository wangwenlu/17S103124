package cn.jpush.api.examples;

import java.util.Date;
import java.util.TimerTask;

public  class TimerTaskThread<String> extends TimerTask {
	public String content;
	public String apikey;
	public String apimaster;
	@Override
	public void run() {
		PushExample.TimePush("定时新闻", (java.lang.String) content,(java.lang.String)apikey,(java.lang.String)apimaster);
	}
	
}
