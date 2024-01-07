import java.sql.ResultSet;
import java.sql.SQLException;

public class Querys {
	static Connect con = Connect.getConnection();
	public static void CRUD(String query) throws SQLException {
        con.state.executeUpdate(query);
    }
	public static ResultSet SELECT(String query) throws SQLException {
        return con.state.executeQuery(query);
    }
	
}
