package connection;

import java.sql.Connection;
import java.sql.DriverManager;



public class ConnectionManager {
	private static Connection conn = null;
	private static ConnectionManager cm = new ConnectionManager();

	private ConnectionManager() {
		/*
		 * String driver="com.mysql.jdbc.Driver"; String
		 * url="jdbc:mysql://localhost:3306/wg"; try{
		 * Class.forName(driver).newInstance();
		 * conn=DriverManager.getConnection(url,"root","ghost");
		 * }catch(Exception e){ e.printStackTrace(); }
		 */
	}

	public static ConnectionManager getConnectionManager() {
		return cm;
	}

	public Connection getConnection() {
		/*String driver = "SQLite.JDBCDriver";
		String url = "jdbc:sqlite:/E:/TDDOWNLOAD/sqlite-3_3_17/wg.sqlite";*/
		String driver = "com.mysql.jdbc.Driver";
		//String url = "jdbc:mysql://localhost:3306/bdaladingdb?autoReconnect=true&useUnicode=true&characterEncoding=utf-8";
		String url = "jdbc:mysql://10.10.11.3:3306/aaa?autoReconnect=true&useUnicode=true&characterEncoding=utf-8";
		try {
			Class.forName(driver).newInstance();
			//conn = DriverManager.getConnection(url, "bdaladinguser", "bdaladingpasswd");
			conn = DriverManager.getConnection(url, "root", "root");
		} catch (Exception e) {
			e.printStackTrace();
		}

		return conn;
	}

	public static void main(String args[]) {
		Connection conn = ConnectionManager.getConnectionManager()
				.getConnection();
		System.out.print(conn);
	}

}
