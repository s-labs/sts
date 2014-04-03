package com.sts.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sts.dao.StudentRfidDao;
import com.sts.model.StudentRfidEntity;

@Service
public class StudentRfidServiceImpl implements StudentRfidService {
	
	@Autowired
	StudentRfidDao studentRfidDao;

	

	@Override
	public boolean storeStudent(StudentRfidEntity studentRfidEntity) {
		System.out.println("rfid service() method");
		boolean flag=studentRfidDao.storeStudentRfid(studentRfidEntity);
		
		return true;
	}

	
	

}
