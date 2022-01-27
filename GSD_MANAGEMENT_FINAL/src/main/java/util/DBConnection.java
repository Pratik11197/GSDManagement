package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	
	 public static Connection getConnection() throws SQLException, ClassNotFoundException
     {
    
		 
		 //Database Connection Information
		    String dbUname= "root";
			String dbPassword = "arshaddeeksha";
			String dbDriver = "com.mysql.cj.jdbc.Driver";
			String dbUrl = "jdbc:mysql://localhost:3306/GSD_db";
			
     Class.forName(dbDriver);
     Connection conn=DriverManager.getConnection(dbUrl,dbUname,dbPassword);
     return conn;
     }

}
