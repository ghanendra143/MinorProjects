package com.main.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.main.dao.CustomerRepo;
import com.main.dao.FeedbackRepo;
import com.main.dao.FoodRepo;
import com.main.dao.OfferRepo;
import com.main.pojo.Customer;
import com.main.pojo.Events;
import com.main.pojo.Feedback;
import com.main.pojo.Food;

@Controller
public class AdminController {

	@Autowired
	FoodRepo foodRepo;


	@Autowired
	OfferRepo offerRepo;

	@Autowired
	CustomerRepo custRepo;
	
	@Autowired
	FeedbackRepo feedRepo;

	@RequestMapping("/")
	public String home() {
		return "home";
	}

	@RequestMapping("/AdminLogin")
	public String adminLogin() {
		return "AdminLoginPage";
	}

	@RequestMapping("/CustomerLogin")
	public String customerLogin() {
		return "CustomerLoginPage";
	}

	@RequestMapping("/CustomerRegistration")
	public String CustomerReg() {
		return "CustomerRegistrationPage";
	}

	@RequestMapping(path="/AdminMenu", method=RequestMethod.POST)
	public ModelAndView adminMenu(@RequestParam("uName") String userName, @RequestParam("pwd") String password) {
		ModelAndView mv = new ModelAndView();
		List<String> credentials = new ArrayList<String>();
		credentials.add("Admin");
		credentials.add("pass123");
		mv.addObject("uName",userName);
		mv.addObject("pwd", password);
		if(credentials.contains(userName) && credentials.contains(password)) {
			System.out.println("Welcome to Admin Menu");
			mv.setViewName("AdminMenuPage");
			return mv;
		}
		return mv;

	}

	//Insert Food Details in Database
	@RequestMapping(path="/InsertSuccessPage",method=RequestMethod.POST)
	public ModelAndView insertFoodDetails(@ModelAttribute Food fd) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("food_name",fd.getFood_name());
		mv.addObject("food_price", fd.getFood_price());
		mv.addObject("food_desc",fd.getFood_desc());
		mv.addObject("food_category",fd.getFood_category());
		mv.setViewName("InsertSuccess");
		Food food = new Food();
		food.setFood_name(fd.getFood_name());
		food.setFood_price(fd.getFood_price());
		food.setFood_desc(fd.getFood_desc());
		food.setFood_category(fd.getFood_category());
		foodRepo.save(food);
		return mv;
	}
	
	@RequestMapping(path="/RegistrationSuccessfull",method=RequestMethod.POST)
	public ModelAndView insertCustomerDetails(@ModelAttribute Customer cust) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("Customer_Name",cust.getCustomer_Name());
		mv.addObject("Customer_Address",cust.getCustomer_Address());
		mv.addObject("Customer_Contact",cust.getCustomer_Contact());
		mv.setViewName("InsertCustomerSuccess");
		Customer customer = new Customer();
		customer.setCustomer_Name(cust.getCustomer_Name());
		customer.setCustomer_Address(cust.getCustomer_Address());
		customer.setCustomer_Contact(cust.getCustomer_Contact());
		custRepo.save(customer);
		return mv;
	}


	@RequestMapping(path="/SuccessEventsAndOrders",method=RequestMethod.POST)
	public ModelAndView insertOffersAndEvents(@ModelAttribute Events eve) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("event_name",eve.getEvent_name());
		mv.addObject("event_date",eve.getEvent_date());
		mv.addObject("offer_desc",eve.getOffer_desc());
		mv.setViewName("OfferAndEventsSuccess");
		Events events = new Events();
		events.setEvent_name(eve.getEvent_name());
		events.setEvent_date(eve.getEvent_date());
		events.setOffer_desc(eve.getOffer_desc());
		offerRepo.save(events);
		return mv;
	}

	@RequestMapping(path="/InsertFoodRecords")
	public String successAdd() {
		return "InsertFoodRecords";
	}

	@RequestMapping(path="/UpdateFoodRecords")
	public String successUpdate() {
		return "UpdateFoodDetails";
	}

	@RequestMapping(path="/DeleteFoodRecords")
	public String successDelete() {
		return "DeleteFoodDetails";
	}

	@RequestMapping("/BackFromAddSuccess")
	public String backFromSuccess() {
		return "AdminMenuPage";
	}

	@RequestMapping("/InsertOfferEventRecords")
	public String AddEventsOffers() {
		return "AddEventsOffers";
	}

	@RequestMapping(path="/UpdateSuccessPage",method=RequestMethod.POST)
	public ModelAndView updateFoodDetails(@ModelAttribute Food fd) {
		ModelAndView mv = new ModelAndView();
		Optional<Food> opt=foodRepo.findById(fd.getFood_id());
		Food food = opt.get();
		mv.addObject("food_name",fd.getFood_name());
		mv.addObject("food_price", fd.getFood_price());
		mv.addObject("food_desc",fd.getFood_desc());
		mv.addObject("food_category",fd.getFood_category());
		mv.setViewName("UpdateSuccess");
		food.setFood_name(fd.getFood_name());
		food.setFood_price(fd.getFood_price());
		food.setFood_desc(fd.getFood_desc());
		food.setFood_category(fd.getFood_category());
		foodRepo.save(food);
		return mv;
	}

	@RequestMapping(path="/DeleteSuccessPage",method=RequestMethod.POST)
	public ModelAndView DeleteFoodDetails(@ModelAttribute Food fd) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("food_id",fd.getFood_id());
		foodRepo.delete(fd);
		mv.setViewName("DeleteSuccess");
		return mv;
	}

	@RequestMapping(path="/FoodCategory")
	public ModelAndView getlistOfFoods() {
		ModelAndView mv = new ModelAndView();
		Food fd = new Food();
		List<Food> dinner_food  = foodRepo.findAllFood("Dinner");
		List<Food> Lunch_food  = foodRepo.findAllFood("Lunch");
		List<Food> Breakfast_food  = foodRepo.findAllFood("Breakfast");
		mv.addObject("Dinner_food_list",dinner_food);
		mv.addObject("Lunch_food_list",Lunch_food);
		mv.addObject("Breakfast_food_list",Breakfast_food);
		mv.setViewName("DisplayFoodDetails");
		return mv;
	}
	
	@RequestMapping(path="/addToCart")
	public String calculateBill() {
		return "BillShow";
	}
	
	@RequestMapping("/feedbackForm")
	public String FeedBackFormPage() {
		return "feedbackForm";
	}
	
	@RequestMapping(path="/FoodBillCalculation", method=RequestMethod.POST)
	public ModelAndView getDinerBill(@RequestParam("category") List<String> category, @RequestParam("Qty") int qty, @RequestParam("price") double price) {
		ModelAndView mv = new ModelAndView();
		List<Food> dinner_food  = foodRepo.findAllFood("Dinner");
		List<Food> Lunch_food  = foodRepo.findAllFood("Lunch");
		List<Food> Breakfast_food  = foodRepo.findAllFood("Breakfast");
		//mv.addObject("category",category);
		System.out.println(category);
		String foodCat = category.toString();
		mv.addObject("Quantity",qty);
		mv.addObject("priceD",price);
		mv.addObject("category_name",category);
		double tPrice = price * qty;
		ArrayList<Double> list = new ArrayList<Double>();
		for(int i=0; i<category.size(); i++) {
			list.add(tPrice);
		}
		System.out.println(list);
		Double sum=0.0;
		for(int p=0; p<list.size(); p++) {
			sum = sum + list.get(p);
		}
		System.out.println(sum);
		mv.addObject("TotalBill",sum);
		mv.addObject("priceT",tPrice);
		mv.addObject("Dinner_food_list",dinner_food);
		mv.addObject("Breakfast_food_list",Breakfast_food);
		mv.addObject("Lunch_food_list",Lunch_food);
		mv.setViewName("Billdisplay");
		return mv;
	}
	@RequestMapping(path="/FeedbackSuccess", method=RequestMethod.POST)
	public ModelAndView getFeebackResult(@ModelAttribute Feedback feedback) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("cust_name",feedback.getCustomer_name());
		mv.addObject("quality_rating",feedback.getQuality_rating());
		mv.addObject("service_rating",feedback.getService_rating());
		mv.addObject("hospitality_rating",feedback.getHospitality_rating());
		mv.addObject("suggestions",feedback.getSuggestions());
		mv.setViewName("FeedbackSuccess");
		Feedback fb = new Feedback();
		fb.setCustomer_name(feedback.getCustomer_name());
		fb.setService_rating(feedback.getService_rating());
		fb.setQuality_rating(feedback.getQuality_rating());
		fb.setHospitality_rating(feedback.getHospitality_rating());
		fb.setSuggestions(feedback.getSuggestions());
		feedRepo.save(fb);
		return mv;
	}
		
		
		
			
	}

