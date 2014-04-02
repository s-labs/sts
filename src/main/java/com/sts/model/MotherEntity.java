package com.sts.model;

import java.util.Arrays;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class MotherEntity {
	public MotherEntity() {
		System.out.println("Mother class object is created");
	}

	@Id
	private String id;
	private String mother_name;
	private String mother_ph;
	private String mother_email;
	
	private boolean mradio1;
	private boolean mradio2;
	private boolean mradio3;
	private boolean mradio4;
	private byte[] motherImage;
	public boolean isMradio1() {
		return mradio1;
	}
	public void setMradio1(boolean mradio1) {
		this.mradio1 = mradio1;
	}
	public boolean isMradio2() {
		return mradio2;
	}
	public void setMradio2(boolean mradio2) {
		this.mradio2 = mradio2;
	}
	public boolean isMradio3() {
		return mradio3;
	}
	public void setMradio3(boolean mradio3) {
		this.mradio3 = mradio3;
	}
	public boolean isMradio4() {
		return mradio4;
	}
	public void setMradio4(boolean mradio4) {
		this.mradio4 = mradio4;
	}
	
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


	//Receive no alerts at all (Yes/No)
	private boolean radio1;
	//Send Text or email if an emergency condition exists (Yes/No)
	private boolean radio2;
	//Send a text or email if child does not arrive at school (Yes/No)
	private boolean radio3;
	//Send text or email if bus is late
	private boolean radio4;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getMother_name() {
		return mother_name;
	}
	public void setMother_name(String mother_name) {
		this.mother_name = mother_name;
	}
	public String getMother_ph() {
		return mother_ph;
	}
	public void setMother_ph(String mother_ph) {
		this.mother_ph = mother_ph;
	}
	public String getMother_email() {
		return mother_email;
	}
	public void setMother_email(String mother_email) {
		this.mother_email = mother_email;
	}
	public byte[] getMotherImage() {
		return motherImage;
	}
	public void setMotherImage(byte[] motherImage) {
		this.motherImage = motherImage;
	}
	@Override
	public String toString() {
		return "Mother [id=" + id + ", mother_name=" + mother_name
				+ ", mother_ph=" + mother_ph + ", mother_email=" + mother_email
				+ ", mradio1=" + mradio1 + ", mradio2=" + mradio2
				+ ", mradio3=" + mradio3 + ", mradio4=" + mradio4
				+ ", motherImage=" + Arrays.toString(motherImage) + ", radio1="
				+ radio1 + ", radio2=" + radio2 + ", radio3=" + radio3
				+ ", radio4=" + radio4 + "]";
	}
	
	
	
	
}
