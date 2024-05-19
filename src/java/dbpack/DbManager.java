package dbpack;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DbManager {
    Connection con=null; 
    PreparedStatement ps=null;
    ResultSet rs=null;
    public DbManager()
    {
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306","root","");
        }
        catch(ClassNotFoundException | SQLException e1)
        {
            e1.printStackTrace();
        }
    }
    public boolean insertUpdateDelete(String query)
    {
        try
        {
            ps=con.prepareStatement(query);
            return ps.executeUpdate()>0;
        }
        catch(SQLException e)
        {
            e.printStackTrace();
            return false;
        }
    }
    public ResultSet select(String query)
    {
        try
        {
            ps=con.prepareStatement(query);
            rs=ps.executeQuery();
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
        return rs;
    }
}
