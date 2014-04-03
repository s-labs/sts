package com.sts.model;

public class StudentRfidEntity {
<<<<<<< HEAD
	@Override
	public String toString() {
		return "StudentRfidEntity [id=" + id + ", rfidNumber=" + rfidNumber
				+ ", rfidType=" + rfidType + ", getId()=" + getId()
				+ ", getRfidNumber()=" + getRfidNumber() + ", getRfidType()="
				+ getRfidType() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	private String id;
=======
	
	
	private String rfidNumber;
	private String rfidType;
	private String id;
	
	
	
	
>>>>>>> 549d991381da917e205d9493779754c26d33a6b7
	public String getId() {
		return id;
	}
	public void setId(String id) {
		System.out.println("setRFID()");
		this.id = id;
	}
<<<<<<< HEAD
	private String rfidNumber;
	private String rfidType;
=======
	
>>>>>>> 549d991381da917e205d9493779754c26d33a6b7
	public String getRfidNumber() {
		System.out.println("getRfid()");
		return rfidNumber;
	}
	public void setRfidNumber(String rfidNumber) {
		System.out.println("setRFID()");
		this.rfidNumber = rfidNumber;
	}
	public String getRfidType() {
		return rfidType;
	}
	public void setRfidType(String rfidType) {
<<<<<<< HEAD
=======
		System.out.println("setRFIDType()");
>>>>>>> 549d991381da917e205d9493779754c26d33a6b7
		this.rfidType = rfidType;
	}
	
	
<<<<<<< HEAD
=======
	@Override
	public String toString() {
		return "StudentRfidEntity [id=" + id + ", rfidNumber=" + rfidNumber
				+ ", rfidType=" + rfidType + ", getId()=" + getId()
				+ ", getRfidNumber()=" + getRfidNumber() + ", getRfidType()="
				+ getRfidType() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	
>>>>>>> 549d991381da917e205d9493779754c26d33a6b7

}
