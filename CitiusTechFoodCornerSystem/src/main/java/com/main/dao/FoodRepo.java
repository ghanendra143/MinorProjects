package com.main.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.repository.CrudRepository;
import org.springframework.data.jpa.repository.Query;
//import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.main.pojo.Food;

public interface FoodRepo extends JpaRepository<Food,Integer>{

	
//	List<Food> findByName(String food_name);
	@Query(value= "SELECT u FROM Food u WHERE u.food_category = :p")
	List<Food> findAllFood(@Param("p") String food_category);
	
	//select price from food_details where food_details.food_name=?
//	@Query(value = "SELECT u FROM Food u WHERE u.food_name = :s")
//	List<Food> getPriceOfFood(@Param("s") String food_name);
	
	
	
}
