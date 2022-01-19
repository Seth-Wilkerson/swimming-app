package com.luv2code.springdemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.luv2code.springdemo.dao.CustomerDAO;
import com.luv2code.springdemo.entity.Customer;
import com.luv2code.springdemo.entity.Workout;

@Service
public class CustomerServiceImpl implements CustomerService {

	// need to inject customer dao
	@Autowired
	private CustomerDAO customerDAO;
	
	@Override
	@Transactional
	public List<Customer> getCustomers() {
		return customerDAO.getCustomers();
	}
	
	@Override
	@Transactional
	public List<Workout> getWorkouts() {
		return customerDAO.getWorkouts();
	}

	@Override
	@Transactional
	public void saveCustomer(Customer theCustomer) {

		customerDAO.saveCustomer(theCustomer);
	}
	
	@Override
	@Transactional
	public void saveWorkout(Workout theWorkout) {

		customerDAO.saveWorkout(theWorkout);
	}

	@Override
	@Transactional
	public Customer getCustomer(int theId) {
		
		return customerDAO.getCustomer(theId);
	}
	
	@Override
	@Transactional
	public Workout getWorkout(int theId) {
		
		return customerDAO.getWorkout(theId);
	}

	@Override
	@Transactional
	public void deleteCustomer(int theId) {
		
		customerDAO.deleteCustomer(theId);
	}
	
	@Override
	@Transactional
	public void deleteWorkout(int theId) {
		
		customerDAO.deleteWorkout(theId);
	}
	
	@Override
	@Transactional
	public List<Customer> customerSearch(String name) {
		return customerDAO.customerSearch(name);
	}
	
	@Override
	@Transactional
	public Customer customerSignIn(String name, String email) {
		return customerDAO.customerSignIn(name, email);
	}
}





