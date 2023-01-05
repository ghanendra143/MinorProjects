package com.shop.dao;

import org.springframework.data.repository.CrudRepository;

import com.shop.model.Customer;

public interface CustomerRepo extends CrudRepository<Customer, Integer> {

}
