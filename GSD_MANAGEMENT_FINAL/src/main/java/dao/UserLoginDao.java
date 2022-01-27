package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.AdminLogin;
import model.UserLogin;
import util.DBConnection;

public class UserLoginDao {

	
	public boolean validate(UserLogin login) throws ClassNotFoundException, SQLException {
		
		/*loadDriver(dbDriver);
		Connection con=getConnection();*/
		
		Connection con=DBConnection.getConnection();
		boolean status=false;
		
		
		// User Login 
		
		String sql="select emp_Id,password from registeration where emp_Id=? and password=?";
		PreparedStatement ps;
		
		try {
			ps=con.prepareStatement(sql);
			ps.setString(1, login.getEmpId());
			ps.setString(2, login.getPassword());
			
			ResultSet rs=ps.executeQuery();
			status=rs.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
		
		//result = "Data not entered";
	}
	
	
	
	
	
}

