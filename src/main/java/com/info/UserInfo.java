package com.info;
public class UserInfo {
	public String APIkey;
	public String APImaster;
	public String GroupId;
	public String ID;
	public UserInfo(String APIkey,String APImaster){
		this.APIkey=APIkey;
		this.APImaster=APImaster;
	}
	public UserInfo(String ID,String APIkey,String APImaster,String GroupId){
		this.APIkey=APIkey;
		this.APImaster=APImaster;
		this.GroupId=GroupId;
	}
	public UserInfo(String ID,String APIkey,String APImaster){
		this.APIkey=APIkey;
		this.APImaster=APImaster;
		this.ID=ID;
	}
}
