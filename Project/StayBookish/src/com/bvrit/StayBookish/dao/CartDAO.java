package com.bvrit.StayBookish.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;
public class CartDAO {
	static Connection con;
	ConnectionDAO cdao;
	static PreparedStatement pst;
	static Statement st;
	static ResultSet rs;
	
	public CartDAO() throws ClassNotFoundException,SQLException {
		cdao = new ConnectionDAO();
		con = cdao.getConnection();
	}
		
	public boolean cartBook(String bid,String user)
			throws ClassNotFoundException,SQLException{
					boolean result = false;
					pst = con.prepareStatement("insert into cart values("+bid+",'"+user+"')");
					int ans = pst.executeUpdate();
					if(ans>0){
						result = true;
					}
					return result;
				}
	 public static  ArrayList<BookPojo> getCart(String user)
	    {        
	 
	        try {
	        	Statement st= con.createStatement();
	        	System.out.println(st);
	        	pst = con.prepareStatement("select *  from book , cart where book.bid = cart.bid and cart.user ='"+user+"'");
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
	
	 public boolean deleteCart(int bid) throws SQLException {
	    	boolean result = false;
	    	pst = con.prepareStatement("DELETE FROM cart WHERE bid=?;");
	    	pst.setInt(1, bid);
	    	int ans = pst.executeUpdate();
	    	if(ans > 0)
	    		return true;
	    	return result;
	    }
	 
	 
}