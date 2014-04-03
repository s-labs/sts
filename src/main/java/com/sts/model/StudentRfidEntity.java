package com.sts.model;

public class StudentRfidEntity {
	
	
	private String rfidNumber;
	private String rfidType;
	private String id;
	
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		System.out.println("setRFID()");
		this.id = id;
	}
	
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
		System.out.println("setRFIDType()");
		this.rfidType = rfidType;
	}
	
	
	@Override
	public String toString() {
		return "StudentRfidEntity [id=" + id + ", rfidNumber=" + rfidNumber
				+ ", rfidType=" + rfidType + ", getId()=" + getId()
				+ ", getRfidNumber()=" + getRfidNumber() + ", getRfidType()="
				+ getRfidType() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	

}
