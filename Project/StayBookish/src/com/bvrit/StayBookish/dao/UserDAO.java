package com.bvrit.StayBookish.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class UserDAO {
	

	Connection con;
	ConnectionDAO cdao;
	PreparedStatement pst;
	public UserDAO()
	throws ClassNotFoundException,SQLException{
		
		cdao = new ConnectionDAO();
		
		con = cdao.getConnection();
	}
	public boolean signup(String user,String password,String phone,String email)
	throws ClassNotFoundException,SQLException{
		boolean result = false;
		pst = con.prepareStatement("insert into user values('"+user+"','"+password+"','"+phone+"','"+email+"')");
		int ans = pst.executeUpdate();
		if(ans>0){
			result = true;
		}
		return result;
	}
	public boolean login(String user,String password)
			throws ClassNotFoundException,SQLException{
				boolean result = false;
				//System.out.println("1.1");
				pst = con.prepareStatement("select * from user where username ='"+user+"'and password = '"+password+"'");
				//System.out.println("1.2");
				ResultSet rs = pst.executeQuery();
				if(rs.next()){
					result = true;
				}
				return result;
			}
	

}