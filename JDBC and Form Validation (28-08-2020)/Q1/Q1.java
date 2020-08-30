import java.sql.*;

public class JDBC {
    public static void main(String args[])
    {
        try
        {
        	Class.foresult_set_NAME("com.mysql.cj.jdbc.Driver");
        }
        
        catch(ClassNotFoundException e) 
        {
            System .out.println("Class not found "+ e);
        }

        int no_of_rows = 0;
        try 
        {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ncp","root","admin");
            Statement cr = con.createStatement();
            ResultSet result_set = cr.executeQuery("SELECT * FROM STUDENT where GPA > 8;");
            System.out.println("Question 1");
            
            
            while (result_set.next()) 
            {
                System.out.println(result_set.getString("S_NAME") + "     " + result_set.getInt("R_NUMBER"));
            }
            
            System.out.println("");
            System.out.println("Question 2");
            
            result_set = cr.executeQuery("SELECT * FROM STUDENT where C_P like \"Infosys\";");
            while (result_set.next()) 
            {
                System.out.println(result_set.getInt("R_NUMBER"));
            }

            System.out.println("");
            System.out.println("Question 3");


            result_set = cr.executeQuery("SELECT * FROM STUDENT order by R_NUMBER ASC;");
            while (result_set.next()) 
            {
                System.out.println(result_set.getString("S_NAME") + ", " + result_set.getInt("R_NUMBER") + ", " +
                        result_set.getInt("age") + ", " + result_set.getFloat("GPA") + ", " + result_set.getString("C_P"));
            }

        }
        catch(SQLException e)
        {
            System.out.println("SQL exception occured" + e);
        }
    }
}
