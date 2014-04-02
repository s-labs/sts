package com.main.sts.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

@Repository
public class LoginService {

	 @Autowired
	 private MongoTemplate mongoTemplate;
	 
	public static final String COLLECTION_NAME = "Login";
	
	public Login getDetails(String login_id){
			try{
			//System.out.println("Collection exists... and mongo is --> "+mongoTemplate);
			Query searchUserQuery = new Query(Criteria.where("login_id").is(login_id));
			return mongoTemplate.findOne(searchUserQuery, Login.class,COLLECTION_NAME);
			}
			catch(Exception e){
				System.out.println("Exception in service class --> "+e);
				return null;
			}
		
	}

	public MongoTemplate getMongoTemplate() {
		return mongoTemplate;
	}

	public void setMongoTemplate(MongoTemplate mongoTemplate) {
		this.mongoTemplate = mongoTemplate;
	}
	
}
