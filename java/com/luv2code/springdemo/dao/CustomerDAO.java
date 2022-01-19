package com.luv2code.springdemo.dao;

import java.util.List;

import com.luv2code.springdemo.entity.Customer;
import com.luv2code.springdemo.entity.Workout;

public interface CustomerDAO {

	public List<Customer> getCustomers();
	
	public List<Workout> getWorkouts();

	public void saveCustomer(Customer theCustomer);
	
	public void saveWorkout(Workout theWorkout);

	public Customer getCustomer(int theId);
	
	public Workout getWorkout(int theId);

	public void deleteCustomer(int theId);
	
	public void deleteWorkout(int theId);
	
	public List<Customer> customerSearch(String name);
	
	public Customer customerSignIn(String name, String email);
	
}
