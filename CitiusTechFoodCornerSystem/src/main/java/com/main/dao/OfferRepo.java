package com.main.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.main.pojo.Events;

public interface OfferRepo extends JpaRepository<Events, Integer>{

}
