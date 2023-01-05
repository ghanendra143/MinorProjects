package com.shop.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.shop.model.Product;

public interface ProductRepo extends CrudRepository<Product, Integer>{

	//select * from product_info where prod_type='laptop'
//	public List<Product> findByProd_type(String prod_type);
	
	@Query(value="select u from Product u where u.prod_type = :p")
	List<Product> findAllProduct(@Param("p") String prod_type);
}