package com.sts.dao;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

import com.sts.model.StudentRfidEntity;

@Repository
public class StudentRfidDaoImpl implements StudentRfidDao {
	@Autowired
	private MongoTemplate mongoTemplate;
	
	 public static final String COLLECTION_NAME = "students1";

	@Override
	public boolean storeStudentRfid(StudentRfidEntity studentRfidEntity) {
		
		System.out.println("inside storeStudentRfid of Dao class");
		
		 if (!mongoTemplate.collectionExists(StudentRfidEntity.class)) {
	            mongoTemplate.createCollection(StudentRfidEntity.class);
	        }    
	        studentRfidEntity.setId(UUID.randomUUID().toString());
	        System.out.println("collection name"+COLLECTION_NAME);
	        mongoTemplate.insert(studentRfidEntity, COLLECTION_NAME);
		
		return true;
	}

}
