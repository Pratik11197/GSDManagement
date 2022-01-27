package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.RaiseGSD;
import model.Registration;
import util.DBConnection;

public class RaiseGsdDao {

	
	public int insert(RaiseGSD gsd) throws ClassNotFoundException, SQLException
	{
		/*loadDriver(dbDriver);
		Connection con=getConnection();*/
		
		Connection con=DBConnection.getConnection();
		//String result = "Data entered successfully";
		int result=0;
		String sql = "insert into raise_gsd"+"(remedy,description,contact,Pc_NO,gsd_No)"+" values(?,?,?,?,?)";
		
		PreparedStatement ps;
		try {
		ps = con.prepareStatement(sql);
		ps.setString(1, gsd.getRemedy());
		ps.setString(2, gsd.getDescription());
		ps.setString(3, gsd.getContact());
		ps.setString(4, gsd.getPc());
		ps.setString(5, gsd.getGsdNumber());
		


		result=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			//result = "Data not entered";
		}
		return result;
	}
}
