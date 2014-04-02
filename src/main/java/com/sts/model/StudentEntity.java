package com.sts.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class StudentEntity {
	public StudentEntity() {
		System.out.println("StudentDao class object is created");
	}

	@Id
	private String id;
	private String school_id;
	private String bus_id;
	private String route_id;
	private String stop_id;// Home address where bus should pickup student
	private String student_name;
	private String student_number;
	private String student_rfid;
	private String gender;
	private String teacher_name;
	private String teacher_id;
	private String homeroom_assignment;
	private String busroute_identifier;
	private String busstop_identifier;
	private String gps_coordinates;
	private CareGiverEntity careGiver;
	private EmergencyContactInformationEntity emergencyContact;
	private FatherEntity father;
	private MotherEntity mother;
	private AlternatePickupPersonEntity pickupPerson;
	
	
	public String getBusroute_identifier() {
		return busroute_identifier;
	}
	public void setBusroute_identifier(String busroute_identifier) {
		this.busroute_identifier = busroute_identifier;
	}
	public String getBusstop_identifier() {
		return busstop_identifier;
	}
	public void setBusstop_identifier(String busstop_identifier) {
		this.busstop_identifier = busstop_identifier;
	}
	public String getGps_coordinates() {
		return gps_coordinates;
	}
	public void setGps_coordinates(String gps_coordinates) {
		this.gps_coordinates = gps_coordinates;
	}
	
	
	
	public AlternatePickupPersonEntity getPickupPerson() {
		return pickupPerson;
	}
	public void setPickupPerson(AlternatePickupPersonEntity pickupPerson) {
		this.pickupPerson = pickupPerson;
	}
	public CareGiverEntity getCareGiver() {
		return careGiver;
	}
	public void setCareGiver(CareGiverEntity careGiver) {
		this.careGiver = careGiver;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSchool_id() {
		return school_id;
	}
	public void setSchool_id(String school_id) {
		this.school_id = school_id;
	}
	public String getBus_id() {
		return bus_id;
	}
	public void setBus_id(String bus_id) {
		this.bus_id = bus_id;
	}
	public String getRoute_id() {
		return route_id;
	}
	public void setRoute_id(String route_id) {
		this.route_id = route_id;
	}
	public String getStop_id() {
		return stop_id;
	}
	public void setStop_id(String stop_id) {
		this.stop_id = stop_id;
	}
	public String getStudent_name() {
		return student_name;
	}
	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}
	public String getStudent_number() {
		return student_number;
	}
	public void setStudent_number(String student_number) {
		this.student_number = student_number;
	}
	public String getStudent_rfid() {
		return student_rfid;
	}
	public void setStudent_rfid(String student_rfid) {
		this.student_rfid = student_rfid;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getTeacher_name() {
		return teacher_name;
	}
	public void setTeacher_name(String teacher_name) {
		this.teacher_name = teacher_name;
	}
	public String getTeacher_id() {
		return teacher_id;
	}
	public void setTeacher_id(String teacher_id) {
		this.teacher_id = teacher_id;
	}
	public String getHomeroom_assignment() {
		return homeroom_assignment;
	}
	public void setHomeroom_assignment(String homeroom_assignment) {
		this.homeroom_assignment = homeroom_assignment;
	}
	public FatherEntity getFather() {
		return father;
	}
	public void setFather(FatherEntity father) {
		this.father = father;
	}
	public MotherEntity getMother() {
		return mother;
	}
	public void setMother(MotherEntity mother) {
		this.mother = mother;
	}
	public EmergencyContactInformationEntity getEmergencyContact() {
		return emergencyContact;
	}
	public void setEmergencyContact(EmergencyContactInformationEntity emergencyContact) {
		this.emergencyContact = emergencyContact;
	}
	@Override
	public String toString() {
		return "StudentDao [id=" + id + ", school_id=" + school_id
				+ ", bus_id=" + bus_id + ", route_id=" + route_id
				+ ", stop_id=" + stop_id + ", student_name=" + student_name
				+ ", student_number=" + student_number + ", student_rfid="
				+ student_rfid + ", gender=" + gender + ", teacher_name="
				+ teacher_name + ", teacher_id=" + teacher_id
				+ ", homeroom_assignment=" + homeroom_assignment
				+ ", busroute_identifier=" + busroute_identifier
				+ ", busstop_identifier=" + busstop_identifier
				+ ", gps_coordinates=" + gps_coordinates + ", father=" + father
				+ ", mother=" + mother + ", pickupPerson=" + pickupPerson
				+ ", careGiver=" + careGiver + ", emergencyContact="
				+ emergencyContact + "]";
	}
	
	
}
