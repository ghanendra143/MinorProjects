package com.main.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.main.pojo.Customer;

public interface CustomerRepo extends JpaRepository<Customer, Integer>{

}
