package com.shop.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.shop.dao.CustomerRepo;
import com.shop.dao.ProductRepo;
import com.shop.model.Customer;
import com.shop.model.Product;
import com.shop.model.Valid;

@Controller
public class ControllerClass {
	
	@Autowired
	ProductRepo prodRepo;
	
	@Autowired
	CustomerRepo custRepo;

	@RequestMapping("/home")
	public String homepage()
	{
		return "home";
	}
	
	@RequestMapping("/adminLogin")
	public String adminLogin()
	{
		return "adminLogin";
	}
	
	@RequestMapping("/adminMenu")
	public String adminMenu()
	{
		return "adminMenu";
	}
	
	@RequestMapping("/addProduct")
	public String addProduct()
	{
		return "addProduct";
	}
	
	@RequestMapping("/addProdSuccess")
	public String addProdSuccess(@ModelAttribute Product prod)
	{
		String name = prod.getProd_name();
		String type = prod.getProd_type();
		int price = prod.getProd_price();
		String brand = prod.getProd_brand();
		
		Product product = new Product();
		
		product.setProd_name(name);
		product.setProd_type(type);
		product.setProd_price(price);
		product.setProd_brand(brand);
		prodRepo.save(product);
		return "AddProdSuccess";
	}
	
	@RequestMapping("/updateProduct")
	public String updateProduct()
	{
		return "updateProduct";
	}
	
	@RequestMapping("/updateProdSuccess")
	public String updateProdSuccess(@ModelAttribute Product prod)
	{
		int id = prod.getProd_id();
		String name = prod.getProd_name();
		String type = prod.getProd_type();
		int price = prod.getProd_price();
		String brand = prod.getProd_brand();
		
		Optional<Product> opt = prodRepo.findById(id);
		Product product = opt.get();
		product.setProd_id(id);
		product.setProd_name(name);
		product.setProd_type(type);
		product.setProd_price(price);
		product.setProd_brand(brand);
		prodRepo.save(product);
		System.out.println("\nupdated!!\n");
		return "UpdateProdSuccess";
	}
	
	@RequestMapping("/deleteProd")
	public String deleteProd()
	{
		return "deleteProd";
	}
	
	@RequestMapping("/deleteProdSuccess")
	public String deleteProdSuccess(@RequestParam("prod_id") int id)
	{
		Optional<Product> opt = prodRepo.findById(id);
		Product product = opt.get();
		product.setProd_id(id);
		prodRepo.delete(product);
		System.out.println("\n deleted \n");
		return "DeleteProdSuccess";
	}
	
	@RequestMapping("/viewOneProd")
	public String viewOneProd()
	{
		return "viewOneProd";
	}
	
	@RequestMapping("/viewOneProdSuccess")
	public String viewOneProdSuccess(@RequestParam("prod_id") int id, Model model)
	{
		Optional<Product> opt = prodRepo.findById(id);
		Product product = opt.get();
		product.setProd_id(id);
		model.addAttribute("prod",product);
		return "ViewOneProdSuccess";
	}
	
	@RequestMapping("/viewAllProdSuccess")
	public String viewAllProdSuccess(Model model)
	{
		List<Product> prod_list = (List<Product>) prodRepo.findAll();
		model.addAttribute("prodlist",prod_list);
		return "ViewAllProdSuccess";
	}
	
	@RequestMapping("/addCust")
	public String addCust()
	{
		return "addCust";
	}
	
	@RequestMapping("/addCustSuccess")
	public String addCustSuccess(@ModelAttribute Customer customer)
	{
		String name = customer.getCust_name();
		int phone = customer.getCust_phone();
		String email = customer.getCust_email();
		String address = customer.getCust_address();
		
		Customer cust = new Customer();
		cust.setCust_name(name);
		cust.setCust_email(email);
		cust.setCust_phone(phone);
		cust.setCust_address(address);
		custRepo.save(cust);
		System.out.println("\ncustomer added\n");
		return "AddCustSuccess";
	}
	
	@RequestMapping("/deleteCust")
	public String deleteCust()
	{
		return "deleteCust";
	}
	
	@RequestMapping("/deleteCustSuccess")
	public String deleteCustSuccess(@RequestParam("cust_id") int id)
	{
		Optional<Customer> opt = custRepo.findById(id);
		Customer cust = opt.get();
		cust.setCust_id(id);
		custRepo.delete(cust);
		System.out.println("\n deleted \n");
		return "DeleteCustSuccess";
	}
	
	@RequestMapping("/viewOneCust")
	public String viewOneCust()
	{
		return "viewOneCust";
	}
	
	@RequestMapping("/custType")
	public String custType()
	{
		return "custType";
	}
	
	@RequestMapping("/viewOneCustSuccess")
	public String viewOneCustSuccess(@RequestParam("cust_id") int id, Model model)
	{
		Optional<Customer> opt = custRepo.findById(id);
		Customer cust = opt.get();
		cust.setCust_id(id);
		model.addAttribute("cust", cust);
		System.out.println(cust);
		return "ViewOneCustSuccess";
	}
	
	@RequestMapping("/viewAllCustSuccess")
	public String viewAllCustSuccess(Model model)
	{
		List<Customer> cust_list = (List<Customer>) custRepo.findAll();
		model.addAttribute("customers", cust_list);
		System.out.println(cust_list);
		return "ViewAllCustSuccess";
	}
		
	@RequestMapping(path="/billgen")
	public ModelAndView bill(@RequestParam("pid") int pid, @RequestParam("pq") int quant)
	{
		ModelAndView mv = new ModelAndView();
		Valid val = new Valid();
		Optional<Product> opt = prodRepo.findById(pid);
		Product prod = opt.get();
		List<Product> prod_list = new ArrayList<>();
		prod_list.add(prod);
		for (Iterator iterator = prod_list.iterator(); iterator.hasNext();) {
			Product product = (Product) iterator.next();
			int price = product.getProd_price();
			String prodName = product.getProd_name();
			val.setProdPrice(price);
			val.setValidName(prodName);
		}
		int bill = quant * (val.getProdPrice());
		mv.addObject("productId", pid);
		mv.addObject("quantity",quant);
		mv.addObject("productName", val.getValidName());
		mv.addObject("productPrice", val.getProdPrice());
		mv.addObject("bill",bill);
		mv.setViewName("bill");
		return mv;
	}
		
	@RequestMapping("/startShopping")
	public String startShopping()
	{
		return "StartShopping";
	}
	
	@RequestMapping("/mobileMenu")
	public String mobileMenu(Model model)
	{
		List<Product> mobilelist = prodRepo.findAllProduct("mobile");
		model.addAttribute("mobile",mobilelist);
		System.out.println(mobilelist);
		return "mobileMenu";
	}
	
	@RequestMapping("/laptopMenu")
	public String laptopMenu(Model model)
	{
		List<Product> laptoplist = prodRepo.findAllProduct("laptop");
		model.addAttribute("laptop",laptoplist);
		System.out.println(laptoplist);
		return "laptopMenu";
	}
	
	@RequestMapping("/furnitureMenu")
	public String furnitureMenu(Model model)
	{
		List<Product> furniturelist = prodRepo.findAllProduct("furniture");
		model.addAttribute("furniture",furniturelist);
		System.out.println(furniturelist);
		return "furnitureMenu";
	}
	
	@RequestMapping("/homeAppliancesMenu")
	public String homeAppliancesMenu(Model model)
	{
		List<Product> homeApplianceslist = prodRepo.findAllProduct("home appliances");
		model.addAttribute("homeAppliances",homeApplianceslist);
		System.out.println(homeApplianceslist);
		return "homeAppliancesMenu";
	}
	
	@RequestMapping("/electronicsMenu")
	public String electronicsMenu(Model model)
	{
		List<Product> electronicslist = prodRepo.findAllProduct("electronics");
		model.addAttribute("electronics",electronicslist);
		System.out.println(electronicslist);
		return "electronicsMenu";
	}
}
