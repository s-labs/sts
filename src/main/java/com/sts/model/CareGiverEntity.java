package com.sts.model;

import java.util.Arrays;
import org.springframework.data.annotation.Id;

public class CareGiverEntity {
	
	@Id
	private String id;
	private String caregiver_name;
	private String caregiver_ph;
	private String caregiver_email;
	private String cgradio1;
	private String cgradio2;
	private byte[] caregiver_image;
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCaregiver_ph() {
		return caregiver_ph;
	}
	public void setCaregiver_ph(String caregiver_ph) {
		this.caregiver_ph = caregiver_ph;
	}
	public String getCaregiver_email() {
		return caregiver_email;
	}
	public void setCaregiver_email(String caregiver_email) {
		this.caregiver_email = caregiver_email;
	}
	
	public String getCaregiver_name() {
		return caregiver_name;
	}
	public void setCaregiver_name(String caregiver_name) {
		this.caregiver_name = caregiver_name;
	}
	public String getCgradio1() {
		return cgradio1;
	}
	public void setCgradio1(String cgradio1) {
		this.cgradio1 = cgradio1;
	}
	public String getCgradio2() {
		return cgradio2;
	}
	public void setCgradio2(String cgradio2) {
		this.cgradio2 = cgradio2;
	}
	public byte[] getCaregiver_image() {
		return caregiver_image;
	}
	public void setCaregiver_image(byte[] caregiver_image) {
		this.caregiver_image = caregiver_image;
	}
	
	@Override
	public String toString() {
		return "CareGiver [id=" + id + ", caregiver_name=" + caregiver_name
				+ ", caregiver_ph=" + caregiver_ph + ", caregiver_email="
				+ caregiver_email + ", cgradio1=" + cgradio1 + ", cgradio2="
				+ cgradio2 + ", caregiver_image="
				+ Arrays.toString(caregiver_image) + "]";
	}
	
	
}
