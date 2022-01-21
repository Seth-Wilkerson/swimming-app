package com.luv2code.springdemo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.luv2code.springdemo.entity.Customer;
import com.luv2code.springdemo.entity.Workout;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

	
	@Autowired
	private SessionFactory sessionFactory;
			
	@Override
	public List<Customer> getCustomers() {
		
		
		Session currentSession = sessionFactory.getCurrentSession();
				
		
		Query<Customer> theQuery = 
				currentSession.createQuery("from Customer order by lastName",
											Customer.class);
		
		
		List<Customer> customers = theQuery.getResultList();
				
			
		return customers;
	}
	
	@Override
	public List<Workout> getWorkouts() {
		
		
		Session currentSession = sessionFactory.getCurrentSession();
				
		
		Query<Workout> theQuery = 
				currentSession.createQuery("from Workout order by main_set",
											Workout.class);
		
		
		List<Workout> customers = theQuery.getResultList();
				
			
		return customers;
	}

	@Override
	public void saveCustomer(Customer theCustomer) {

		
		Session currentSession = sessionFactory.getCurrentSession();
		
		
		currentSession.saveOrUpdate(theCustomer);
		
	}
	
	@Override
	public void saveWorkout(Workout theWorkout) {

		
		Session currentSession = sessionFactory.getCurrentSession();
		
		
		currentSession.saveOrUpdate(theWorkout);
		
	}

	@Override
	public Customer getCustomer(int theId) {

		
		Session currentSession = sessionFactory.getCurrentSession();
		
		
		Customer theCustomer = currentSession.get(Customer.class, theId);
		
		return theCustomer;
	}
	
	@Override
	public Workout getWorkout(int theId) {

		
		Session currentSession = sessionFactory.getCurrentSession();
		
		
		Workout theCustomer = currentSession.get(Workout.class, theId);
		
		return theCustomer;
	}

	@Override
	public void deleteCustomer(int theId) {

		
		Session currentSession = sessionFactory.getCurrentSession();
		
		
		Query theQuery = 
				currentSession.createQuery("delete from Customer where id=:customerId");
		theQuery.setParameter("customerId", theId);
		
		theQuery.executeUpdate();		
	}
	
	@Override
	public void deleteWorkout(int theId) {

		
		Session currentSession = sessionFactory.getCurrentSession();
		
		
		Query theQuery = 
				currentSession.createQuery("delete from Workout where id=:customerId");
		theQuery.setParameter("customerId", theId);
		
		theQuery.executeUpdate();		
	}
	
	@Override
	public List<Customer> customerSearch(String name) {
		
				Session currentSession = sessionFactory.getCurrentSession();
						
				
				Query<Customer> theQuery = 
						currentSession.createQuery("from Customer where firstName like :username",
													Customer.class).setString("username", name + "%");
				
				
				List<Customer> customers = theQuery.getResultList();
						
					
				return customers;
	}
	
	@Override
	public Customer customerSignIn(String name, String email) {
				
				Session currentSession = sessionFactory.getCurrentSession();
						
				
				
				Query<Customer> theQuery = 
						currentSession.createQuery("from Customer where firstName = :username AND email = :theemail",
													Customer.class).setString("username", name).setString("theemail", email);
				
				
				List<Customer> customers = theQuery.getResultList();
						
					
				return customers.get(0);
				
				
	}
}











