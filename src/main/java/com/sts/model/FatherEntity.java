package com.sts.model;

import java.util.Arrays;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class FatherEntity {
	public FatherEntity() {
		System.out.println("Father class object is created");
	}

	@Id
	private String id;
	private String father_name;
	private String father_ph;
	private String father_email;
	private byte[] fatherImage;
	//Receive no alerts at all (Yes/No)
	private boolean radio1;
	//Send Text or email if an emergency condition exists (Yes/No)
	private boolean radio2;
	//Send a text or email if child does not arrive at school (Yes/No)
	private boolean radio3;
	//Send text or email if bus is late
	private boolean radio4;
	
	
	
	
	public boolean isRadio1() {
		return radio1;
	}
	public void setRadio1(boolean radio1) {
		this.radio1 = radio1;
	}
	public boolean isRadio2() {
		return radio2;
	}
	public void setRadio2(boolean radio2) {
		this.radio2 = radio2;
	}
	public boolean isRadio3() {
		return radio3;
	}
	public void setRadio3(boolean radio3) {
		this.radio3 = radio3;
	}
	public boolean isRadio4() {
		return radio4;
	}
	public void setRadio4(boolean radio4) {
		this.radio4 = radio4;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFather_name() {
		return father_name;
	}
	public void setFather_name(String father_name) {
		this.father_name = father_name;
	}
	public String getFather_ph() {
		return father_ph;
	}
	public void setFather_ph(String father_ph) {
		this.father_ph = father_ph;
	}
	public String getFather_email() {
		return father_email;
	}
	public void setFather_email(String father_email) {
		this.father_email = father_email;
	}
	public byte[] getFatherImage() {
		return fatherImage;
	}
	public void setFatherImage(byte[] fatherImage) {
		this.fatherImage = fatherImage;
	}
	@Override
	public String toString() {
		return "Father [id=" + id + ", father_name=" + father_name
				+ ", father_ph=" + father_ph + ", father_email=" + father_email
				+ ", fatherImage=" + Arrays.toString(fatherImage) + ", radio1="
				+ radio1 + ", radio2=" + radio2 + ", radio3=" + radio3
				+ ", radio4=" + radio4 + "]";
	}
	
	
	
	
}
