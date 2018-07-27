package cn.jpush.api.examples;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Timer;

public class TimerTest {
	Timer timer;
	@SuppressWarnings("unchecked")
	public TimerTest(int seconds,String content,String apikey,String apimaster){
		Date time = getTime(seconds);  
        System.out.println("指定时间time=" + time);  
        timer = new Timer();  
        @SuppressWarnings("rawtypes")
		TimerTaskThread t=new TimerTaskThread();
        t.content=content;
        t.apikey=apikey;
        t.apimaster=apimaster;
        timer.schedule(t, time);  
	}
	public Date getTime(int seconds){  
		Date date = new Date(System.currentTimeMillis()+seconds*1000);
        return date;  
    }  
}
