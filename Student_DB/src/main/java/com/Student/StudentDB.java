package com.Student;
import java.sql.*;

public class StudentDB {
	
	public boolean insert(User user) throws ClassNotFoundException {
		
		String url = "jdbc:mysql://localhost:3306/Student";
		String usr = "root";
		String pwd = "9080";
		Connection con = null;
		boolean result = false;

		try {
			// Load the MySQL driver
			Class.forName("com.mysql.cj.jdbc.Driver");

			// Establish the connection
			con = DriverManager.getConnection(url, usr, pwd);

			// SQL query to insert data
			String query = "INSERT INTO StudentLogin(username, password) VALUES (?, ?)";
			PreparedStatement pstmt = con.prepareStatement(query);

			// Set parameters
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPassword());

			// Execute the query (use executeUpdate for INSERT)
			int rowsAffected = pstmt.executeUpdate();

			// If at least one row was affected, set result to true
			result = rowsAffected > 0;

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// Close the connection (important for avoiding resource leaks)
			try {
				if (con != null) {
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		// Return the result of the insertion
		return result;
	}
}
