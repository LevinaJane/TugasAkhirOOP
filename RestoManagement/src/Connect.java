import java.sql.*;

public class Connect {
	private final String Username = "root";
	private final String Password = "";
	private final String Database = "restomanagement";
	private final String host = "localhost:3306";
	private final String Connect = String.format("jdbc:mysql://%s/%s",host,Database);
	
	Connection Koneksi;
	public Statement state;
	ResultSet Result;
	
	private static Connect singletone;
	
	public static Connect getConnection() {
		if(singletone == null) {
			singletone = new Connect();
		}
		return singletone;
	}
	
	private Connect() {
		try {
			Koneksi = DriverManager.getConnection(Connect,Username,Password);
			state = Koneksi.createStatement();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}
