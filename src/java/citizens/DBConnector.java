
package citizens;

import java.sql.*;

public class DBConnector {
    // JDBC driver name and database URL
    static final String JDBC_DRIVER = "com.postgresql.jdbc.driver";  
    static final String DB_URL = "jdbc:postgresql://localhost:5432/citizens";

    // Database credentials
    static final String USER = "postgres";
    static final String PASS = "Iqex1234";
   
    public void start() {
        Connection conn = null;
        Statement stmt = null;
    
        try{
            // Register JDBC driver
            Class.forName("com.postgresql.jdbc.driver");

            // Open a connection
            System.out.println("Connecting to database...");
            conn = DriverManager.getConnection(DB_URL,USER,PASS);

            // Execute a query
            System.out.println("Creating statement...");
            stmt = conn.createStatement();
            String sql;
            sql = "SELECT n.nationality, n.incipience\n" +
                "FROM nationality n\n" +
                "WHERE n.incipience = (SELECT MIN(n.incipience) FROM nationality n)";
            ResultSet rs = stmt.executeQuery(sql);

            // Extract data from result set
            while(rs.next()){
                // Retrieve by column name
                String nationality = rs.getString("nationality");
                int incipience  = rs.getInt("incipience");

                // Display values
                System.out.println("Национальность: " + nationality);
                System.out.println("Образование государственности, в: " + incipience);
            }
            // Clean-up environment
            rs.close();
            stmt.close();
            conn.close();
        }
        catch(SQLException se){
            // Handle errors for JDBC
            se.printStackTrace();
        }
        catch(Exception e){
            // Handle errors for Class.forName
            e.printStackTrace();
        }
        finally{
            // finally block used to close resources
            try{
                if(stmt!=null)
                    stmt.close();
            }
            catch(SQLException se2){}
            try{
                if(conn!=null)
                    conn.close();
            }
            catch(SQLException se){
                se.printStackTrace();
            }
        }
        
        System.out.println("Goodbye!");
        
    }
}