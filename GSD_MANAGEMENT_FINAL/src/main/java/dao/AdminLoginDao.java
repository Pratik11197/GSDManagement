package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.AdminLogin;
import util.DBConnection;

public class AdminLoginDao {


	public boolean validate(AdminLogin admin) throws ClassNotFoundException, SQLException {
		
		/*loadDriver(dbDriver);
		Connection con=getConnection();*/
		
		Connection con=DBConnection.getConnection();
		boolean status=false;
		
		// For Admin Login Data From Database
		
		String sql="select admin_Id,password from admin_login where admin_Id=? and password=?";
		PreparedStatement ps;
		
		try {
			ps=con.prepareStatement(sql);
			ps.setString(1, admin.getAdmin_Id());
			ps.setString(2, admin.getPassword());
			
			ResultSet rs=ps.executeQuery();
			status=rs.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}

}
