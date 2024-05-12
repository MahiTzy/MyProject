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
            con=DriverManager.getConnection("jdbc:mysql://i943okdfa47xqzpy.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306/upq1cmnbwlabn917","isbc2taclic5th83","ddrhl8rggzbp74ht");
        }
        catch(ClassNotFoundException e1)
        {
            e1.printStackTrace();
        }
        catch(SQLException e2)
        {
            e2.printStackTrace();
        }
    }
    public boolean insertUpdateDelete(String query)
    {
        try
        {
            ps=con.prepareStatement(query);
            if(ps.executeUpdate()>0)
            {
                return true;
            }
            else
            {
                return false;
            }
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
