package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;

import com.model.*;

public class ExamManagDaoImpl implements ExamManagDao{
	Scanner sc = new Scanner(System.in);
	Student st = new Student();
	ExamPaper ep = new ExamPaper();
	ValidStudents vs = new ValidStudents();
	public static Connection getConnection() {
		Connection con=null;
		try {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		con = DriverManager.getConnection("jdbc:sqlserver://IMCVBCP153-MSL2\\SQLEXPRESS2019;databaseName=jdbcpractice;user=sa;password=Password_123");  
		} 
		catch (ClassNotFoundException | SQLException e) {
		}
		return con;
		}

	@Override
	public void AddQuestion() {
		System.out.print("Question = ");
		String ques = sc.nextLine();
		System.out.print("enter option A : ");
		String opt1 = sc.nextLine();
		System.out.print("enter option B : ");
		String opt2 = sc.nextLine();
		System.out.print("enter option C : ");
		String opt3 = sc.nextLine();
		System.out.print("enter option D : ");
		String opt4 = sc.nextLine();
		System.out.print("Answer = ");
		String ans = sc.next();
		
		ep.setQuestion(ques);
		ep.setOpt1(opt1);
		ep.setOpt2(opt2);
		ep.setOpt3(opt3);
		ep.setOpt4(opt4);
		ep.setRealAnswer(ans);
		
		Connection con = getConnection();
		try {
			PreparedStatement stmt = con.prepareStatement("insert into QuestionPaper values(?,?,?,?,?,?)");
			stmt.setString(1, ep.getQuestion());
			stmt.setString(2, ep.getOpt1());
			stmt.setString(3, ep.getOpt2());
			stmt.setString(4, ep.getOpt3());
			stmt.setString(5, ep.getOpt4());
			stmt.setString(6, ep.getRealAnswer());
			stmt.executeUpdate();
			System.out.println("question added !!");
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}

	@Override
	public void UpdateQuestion() {
		System.out.print("Question = ");
		String ques = sc.nextLine();
		System.out.print("enter option1 : ");
		String opt1 = sc.next();
		System.out.print("enter option2 : ");
		String opt2 = sc.next();
		System.out.print("enter option3 : ");
		String opt3 = sc.next();
		System.out.print("enter option4 : ");
		String opt4 = sc.next();
		System.out.print("Answer = ");
		String ans = sc.next();
		
		ep.setQuestion(ques);
		ep.setOpt1(opt1);
		ep.setOpt2(opt2);
		ep.setOpt3(opt3);
		ep.setOpt4(opt4);
		ep.setRealAnswer(ans);
		
		Connection con = getConnection();
		try {
			PreparedStatement stmt = con.prepareStatement("update QuestionPaper set question=?,opt1=?,opt2=?,opt3=?,opt4=?,realAnswer=? where QUES_ID=?");
			stmt.setString(1, ep.getQuestion());
			stmt.setString(2, ep.getOpt1());
			stmt.setString(3, ep.getOpt2());
			stmt.setString(4, ep.getOpt3());
			stmt.setString(5, ep.getOpt4());
			stmt.setString(6, ep.getRealAnswer());
			stmt.setInt(7, ep.getQuesId());
			stmt.executeUpdate();
			System.out.println("question updated !!");
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void DeleteQuestion() {
		System.out.print("enter question Id : ");
		int qId = sc.nextInt();
		ep.setQuesId(qId);
		Connection con = getConnection();
		try {
			PreparedStatement stmt = con.prepareStatement("delete from QuestionPaper where QUES_ID=?");
			stmt.setInt(1, ep.getQuesId());
			stmt.executeUpdate();
			System.out.println("question deleted !!");
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public List<Student> ViewSingleStudent() {
		List<Student> list = new ArrayList();
		Connection con = getConnection();
		System.out.print("enter student Roll_No : ");
		int roll = sc.nextInt();
		st.setStudId(roll);
		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from StudentRecord where Roll_No = "+st.getStudId());
			while(rs.next())
			{
				System.out.println("Roll No = "+rs.getInt(1)+"\n"+"First_name = "+rs.getString(2)+"\n"+"Last_name = "+rs.getString(3)+"\n"+"Marks = "+rs.getInt(4));
			}
			con.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return list;
	}

	@Override
	public List<Student> ViewAllStudents() {
		List<Student> list = new ArrayList();
		Connection con = getConnection();
		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from StudentRecord ");
			while(rs.next())
			{
				System.out.println("Roll No = "+rs.getInt(1)+"\n"+"First_name = "+rs.getString(2)+"\n"+"Last_name = "+rs.getString(3)+"\n"+"Marks = "+rs.getInt(4)+"\n");
			}
			con.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return list;
	}
		
	int qn = 0;
	@Override
	public List<ExamPaper> ViewAllQuestions(int qn) {
		List<ExamPaper> list = new ArrayList();
		Connection con = getConnection();
		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from QuestionPaper where QUES_ID ="+qn);
			while(rs.next())
			{
				System.out.println("\n"+rs.getInt(1)+"- "+rs.getString(2)+"\n A. "+rs.getString(3)+"\n B. "+rs.getString(4)+
						"\n C. "+rs.getString(5)+"\n D. "+rs.getString(6)+"\n");
			}
			con.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return list;
	}

	@Override
	public List<Student> leastScoringStudent() {
		List<Student> list = new ArrayList();
		Connection con = getConnection();
		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from StudentRecord where marks = (select min(marks) from StudentRecord)");
			while(rs.next())
			{
				System.out.println("Roll No = "+rs.getInt(1)+"\n"+"First_name = "+rs.getString(2)+
						"\n"+"Last_name = "+rs.getString(3)+"\n"+"Marks = "+rs.getInt(4)+"\n");
			}
			con.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return list;
	}

	@Override
	public List<Student> highestScoringStudent() {
		List<Student> list = new ArrayList();
		Connection con = getConnection();
		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from StudentRecord where marks = (select max(marks) from StudentRecord)");
			while(rs.next())
			{
				System.out.println("Roll No = "+rs.getInt(1)+"\n"+"First_name = "+rs.getString(2)+
						"\n"+"Last_name = "+rs.getString(3)+"\n"+"Marks = "+rs.getInt(4)+"\n");
			}
			con.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return list;
	}
	
	int ans=0;
	@Override
	public List<ExamPaper> answer(int ans) {
		List<ExamPaper> list1 = new ArrayList();
		Connection con = getConnection();
		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from QuestionPaper where ques_id ="+ans);
			while(rs.next())
			{
				ep = new ExamPaper(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7));
				list1.add(ep);
			}
			con.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			}
		return list1;
	}

	@Override
	public List<ValidStudents> stud() {
		List<ValidStudents> valid1 = new ArrayList();
		System.out.print("Enter valid student Id : ");
		int validId = sc.nextInt();
		vs.setStudId(validId);
		Connection con = getConnection();
		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(" select * from allvalidstudents where studId ="+vs.getStudId());
			while(rs.next())
			{
				vs = new ValidStudents(rs.getInt(1),rs.getString(2),rs.getInt(3));
				valid1.add(vs);
			}
			con.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			}
		return valid1;
	}
}