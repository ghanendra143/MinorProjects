package com.main.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.main.pojo.Feedback;

public interface FeedbackRepo extends JpaRepository<Feedback, Integer> {

}
