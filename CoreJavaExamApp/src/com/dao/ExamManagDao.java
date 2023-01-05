package com.dao;
import java.util.List;

import com.model.ExamPaper;
import com.model.Student;
import com.model.ValidStudents;

public interface ExamManagDao {
	public void AddQuestion();
	public void UpdateQuestion();
	public void DeleteQuestion();
	public List<Student> ViewSingleStudent();
	public List<Student> ViewAllStudents();
	public List<ExamPaper> ViewAllQuestions(int qn);
	public List<Student> leastScoringStudent();
	public List<Student> highestScoringStudent();
	public List<ExamPaper> answer(int ans); 
	public List<ValidStudents> stud();
}
