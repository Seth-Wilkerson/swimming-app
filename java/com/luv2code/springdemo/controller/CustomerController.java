package com.luv2code.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.luv2code.springdemo.entity.Customer;
import com.luv2code.springdemo.entity.Workout;
import com.luv2code.springdemo.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	// need to inject our customer service
	@Autowired
	private CustomerService customerService;
	
	@GetMapping("/home")
	public String displayHome() {
		
		return "../../index";
	}
	
	@GetMapping("/list")
	public String listCustomers(Model theModel) {
		
		// get customers from the service
		List<Customer> theCustomers = customerService.getCustomers();
				
		// add the customers to the model
		theModel.addAttribute("customers", theCustomers);
		
		return "list-customers";
	}
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {
		
		// create model attribute to bind form data
		Customer theCustomer = new Customer();
		
		theModel.addAttribute("customer", theCustomer);
		
		return "customer-form";
	}
	
	@PostMapping("/saveCustomer")
	public String saveCustomer(@ModelAttribute("customer") Customer theCustomer) {
		
		customerService.saveCustomer(theCustomer);	
		
		return "redirect:/customer/list";
	}
	
	@PostMapping("/saveWorkout")
	public String saveWorkout(@ModelAttribute("work") Workout theWorkout) {
		
		customerService.saveWorkout(theWorkout);	
		
		return "redirect:/customer/mwork";
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("customerId") int theId,
									Model theModel) {
		
		Customer theCustomer = customerService.getCustomer(theId);	
		
		theModel.addAttribute("customer", theCustomer);
				
		return "customer-form";
	}
	
	@GetMapping("/showFormForUpdateW")
	public String showFormForUpdateW(@RequestParam("customerId") int theId,
									Model theModel) {
		
		Workout theCustomer = customerService.getWorkout(theId);	
		
		theModel.addAttribute("customer", theCustomer);
				
		return "workout-form";
	}
	
	@GetMapping("/delete")
	public String deleteCustomer(@RequestParam("customerId") int theId) {
		
		// delete the customer
		customerService.deleteCustomer(theId);
		
		return "redirect:/customer/list";
	}
	
	@GetMapping("/deleteW")
	public String deleteW(@RequestParam("customerId") int theId) {
		
		// delete the customer
		customerService.deleteWorkout(theId);
		
		return "redirect:/customer/mwork";
	}
	
	@GetMapping("/searchCustomer")
	public String searchCustomer(@RequestParam("userName") String theName, Model theModel) {
		
		// delete the customer
		List<Customer> theCustomers = customerService.customerSearch(theName);
		
		theModel.addAttribute("customers", theCustomers);
		
		return "list-customers";
	}
	
	@GetMapping("/register")
	public String register(Model theModel) {
		
		Customer theCustomer = new Customer();
		
		theModel.addAttribute("customer", theCustomer);
		
		return "register";
	}
	
	@GetMapping("/signin")
	public String signin() {
		
		return "sign-in";
	}
	
	@GetMapping("/gwork")
	public String gwork(Model theModel) {
		
		Workout theWorkout = new Workout();
		
		theModel.addAttribute("work", theWorkout);
		
		return "add-workout";
	}
	
	@GetMapping("/mwork")
	public String mwork(Model theModel) {
		
		// get customers from the service
		List<Workout> theWorkouts = customerService.getWorkouts();
						
		// add the customers to the model
		theModel.addAttribute("workout", theWorkouts);
		
		return "my-workouts";
	}
	
	@GetMapping("/entering")
	public String entering(@RequestParam("userName") String theName,  @RequestParam("email") String theEmail, Model theModel) {
		try {
		Customer theCustomer = customerService.customerSignIn(theName, theEmail);
		
		theModel.addAttribute("result", "Sucess");
		
		return "sign-in";
		} catch (Exception exc) {
			theModel.addAttribute("result", "Failed");
			
			return "sign-in";
		}
		
	}
	
}










