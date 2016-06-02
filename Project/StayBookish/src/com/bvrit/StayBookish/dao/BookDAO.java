package com.bvrit.StayBookish.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;
public class BookDAO {
	static Connection con;
	ConnectionDAO cdao;
	static PreparedStatement pst;
	static Statement st;
	static ResultSet rs;
	public BookDAO() throws ClassNotFoundException,SQLException {
		cdao = new ConnectionDAO();
		con = cdao.getConnection();
	}

	public boolean addContact(String name,String phone,String email,String address,String user) throws ClassNotFoundException,SQLException {
		boolean result = false;
		System.out.println(user);
		pst = con.prepareStatement("insert into contact(name,phone,email,Postal_address,user_id) values('"+name+"','"+phone+"','"+email+"','"+address+"','"+user+"')");
		int ans = pst.executeUpdate();
		if(ans>0) {
			result = true;
		}
		return result;
		
	}
	 public static  ArrayList<BookPojo> getAllBooks()
	    {        
	 
	        try {
	        	Statement st= con.createStatement();
	        	System.out.println(st);
	        	pst = con.prepareStatement("select * from book");
	        	rs = pst.executeQuery();
	 
	            ArrayList<BookPojo> books = new ArrayList<BookPojo>();
	 
	            while(rs.next()) {
	                BookPojo book = new BookPojo(rs.getString("bid"),rs.getString("bname"),rs.getString("author"),rs.getString("edition"),rs.getString("publisher"),rs.getString("year"),rs.getString("price"),rs.getString("status"),rs.getString("quantity"),rs.getString("phototitle"),rs.getString("user"));
	
	 
	                books.add(book);
	 
	 
	            }
	            return books;
	           
	        }
	 
	    catch(SQLException e) {
	    e.printStackTrace();
	    return null;    
	    } 
	 
	}
	
 
}
