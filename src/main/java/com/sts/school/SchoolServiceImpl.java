package com.sts.school;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.main.sts.login.Login;

@Service
@Repository
public class SchoolServiceImpl implements SchoolService {

	
	@Autowired
	MongoTemplate mongoTemplate;
	
	
	private final String Login_collection="Login";
	@Override
	
	
	

	
	public Login getPassword(String password) {
		
		Query searchUserQuery = new Query(Criteria.where("password").is(password));
		return mongoTemplate.findOne(searchUserQuery, Login.class,Login_collection);
		
	}
	public Login changePassword(String c_pass,String c_newpass) {
		
		Query searchUserQuery = new Query(Criteria.where("password").is(c_pass));
		Update update=new Update();
		update.set("password", c_newpass);
		mongoTemplate.updateFirst(searchUserQuery, update, Login_collection);
		searchUserQuery = new Query(Criteria.where("password").is(c_newpass));
		return mongoTemplate.findOne(searchUserQuery, Login.class,Login_collection);
		
	}

	

}
