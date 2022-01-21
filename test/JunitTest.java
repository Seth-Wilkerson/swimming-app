package com.luv2code.springdemo.test;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.List;

import org.junit.jupiter.api.Test;

import com.luv2code.springdemo.dao.CustomerDAOImpl;
import com.luv2code.springdemo.entity.Customer;

public class JunitTest {
	
	@Test
	public void testMethod() {
		Customer cus = new Customer();
		cus.setEmail("blahblahblah");
		assertEquals(cus.getEmail(), "blahblahblah");
	}
}
