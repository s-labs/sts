package com.sts.service;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

import com.sts.model.StudentEntity;
@Repository
public class StudentServiceOld {
	
	public StudentServiceOld() {
		System.out.println("StudentService class obejct is created");
	}
	@Autowired
	private MongoTemplate mongoTemplate;
	 public static final String COLL_NAME = "students";
	
	 public static final String COLLECTION_NAME = "students";
	
	 public boolean storeStudent(StudentEntity student){
		 System.out.println("we are studentservie store()");
		 if (!mongoTemplate.collectionExists(StudentEntity.class)) {
	            mongoTemplate.createCollection(StudentEntity.class);
	        }      
	        student.setId(UUID.randomUUID().toString());
	        mongoTemplate.insert(student, COLLECTION_NAME);
		
		return true;
	}
	 
	public List<StudentEntity> getStudents(){
		return mongoTemplate.findAll(StudentEntity.class, COLL_NAME);
		
	}
	
	public boolean update(StudentEntity studentDao){
		mongoTemplate.insert(studentDao, COLLECTION_NAME);
		return true;
	}
	
	public boolean removeStudent(StudentEntity studentDao){
		mongoTemplate.remove(studentDao,COLL_NAME);
		return true;
	}
	
	public MongoTemplate getMongoTemplate() {
		return mongoTemplate;
	}

	public void setMongoTemplate(MongoTemplate mongoTemplate) {
		this.mongoTemplate = mongoTemplate;
	}

}
