package com.sts.model;

import java.util.Arrays;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class AlternatePickupPersonEntity {
	@Id
	private String id;
	private String app_name;
	private String app_ph;
	private String app_email;
	private String appradio1;
	private String appradio2;
	private byte[] app_image;
	
	
	
	public String getApp_name() {
		return app_name;
	}
	public void setApp_name(String app_name) {
		this.app_name = app_name;
	}
	public String getAppradio1() {
		return appradio1;
	}
	public void setAppradio1(String appradio1) {
		this.appradio1 = appradio1;
	}
	public String getAppradio2() {
		return appradio2;
	}
	public void setAppradio2(String appradio2) {
		this.appradio2 = appradio2;
	}
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	public String getApp_ph() {
		return app_ph;
	}
	public void setApp_ph(String app_ph) {
		this.app_ph = app_ph;
	}
	public String getApp_email() {
		return app_email;
	}
	public void setApp_email(String app_email) {
		this.app_email = app_email;
	}
	public byte[] getApp_image() {
		return app_image;
	}
	public void setApp_image(byte[] app_image) {
		this.app_image = app_image;
	}
	@Override
	public String toString() {
		return "AlternatePickupPerson [id=" + id + ", app_name=" + app_name
				+ ", app_ph=" + app_ph + ", app_email=" + app_email
				+ ", appradio1=" + appradio1 + ", appradio2=" + appradio2
				+ ", app_image=" + Arrays.toString(app_image) + "]";
	}
	
	
}
