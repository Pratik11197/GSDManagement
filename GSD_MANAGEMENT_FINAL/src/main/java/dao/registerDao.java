package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Registration;
import util.DBConnection;

public class registerDao {
	
	public int insert(Registration reg) throws ClassNotFoundException, SQLException
	{
		
		/*loadDriver(dbDriver);
		Connection conn=getConnection();*/
		
		
		Connection con=DBConnection.getConnection();
		
		//String result = "Data entered successfully";
		
		int result=0;
		String sql = "insert into registeration values(?,?,?,?,?,?,?,?,?)";
		
		PreparedStatement ps;
		try {
		ps = con.prepareStatement(sql);
		ps.setString(1, reg.getFirst_name());
		ps.setString(2, reg.getLast_name());
		ps.setString(3, reg.getDesignation());
		ps.setString(4, reg.getEmpId());
		ps.setString(5, reg.getSeatNo());
		ps.setString(6, reg.getPcNo());
		ps.setString(7, reg.getIp());
		ps.setString(8, reg.getContact());
		ps.setString(9, reg.getPassword());


		result=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			//result = "Data not entered";
			
		}
		return result;
	}

}
