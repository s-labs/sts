package com.sts.model;

import org.springframework.data.annotation.Id;

public class EmergencyContactInformationEntity {
	public EmergencyContactInformationEntity() {
		System.out.println("EmergencyContactInformation class object is created");
	}

	@Id
	private String id;
	private String emergencycontactname;
	private String emergencycontactphone;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	
	public String getEmergencycontactname() {
		return emergencycontactname;
	}
	public void setEmergencycontactname(String emergencycontactname) {
		this.emergencycontactname = emergencycontactname;
	}
	public String getEmergencycontactphone() {
		return emergencycontactphone;
	}
	public void setEmergencycontactphone(String emergencycontactphone) {
		this.emergencycontactphone = emergencycontactphone;
	}
	@Override
	public String toString() {
		return "EmergencyContactInformation [id=" + id
				+ ", emergencycontactname=" + emergencycontactname
				+ ", emergencycontactphone=" + emergencycontactphone + "]";
	}
	
	
	
	
}
