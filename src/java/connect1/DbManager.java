package connect1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DbManager {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public DbManager() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/oesdb?characterEncoding=utf-8", "root", "");
    }
    public boolean insertUpdateDelete(String query) throws SQLException{
        ps = con.prepareStatement(query);
        return ps.executeUpdate()>0;
    }
    public ResultSet select(String query) throws SQLException{
        ps = con.prepareStatement(query);
        rs = ps.executeQuery();
        return rs;
    }
}
