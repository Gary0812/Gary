package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;





import vo.name;
import connection.ConnectionManager;






public class LoginDao {
	
	public static name select1(String name, String psw) throws SQLException // 查询登陆用户名以及密码和权限
	{
		name na = new name();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		conn = ConnectionManager.getConnectionManager().getConnection();
		String sql = "select name,password  from text7table where name='"
				+ name + "' and password='" + psw + "'";

		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			na.setName(rs.getString(1));
			na.setPassword(rs.getString(2));
		
		
		}
		return na;

	}
	public boolean Adduser(String name, String password)
			throws SQLException {
		boolean a = false;

		Connection conn = null;
		PreparedStatement pstmt;
		
		pstmt = null;
		try {
			conn = ConnectionManager.getConnectionManager().getConnection();
			conn.setAutoCommit(false);
			String sql = "insert into text7table (name,password ) values (?,?)";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, name);
			pstmt.setString(2, password);
			
		/*	pstmt.setString(2, spokesman);
			pstmt.setString(3, reporter);*/

			pstmt.executeUpdate();
			conn.commit();
			conn.setAutoCommit(true);
			conn.close();
			a = true;
		} catch (Exception e) {
			pstmt.close();
			conn.rollback();
			conn.close();
			e.printStackTrace();
		} finally {
			conn.close();
		}

		return a;

	}

}
