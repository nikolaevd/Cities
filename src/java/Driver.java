import java.sql.*;

public class Driver {
    static final String DB_URL = "jdbc:postgresql://localhost:5432/cities";
    static final String USER = "postgres";
    static final String PASS = "Iqex1234";
    
    public void start(){
        Connection connection = null;
        Statement statement = null;
        ResultSet rs = null;
        
        try{
            // открываем соединение с базой
            connection = DriverManager.getConnection(DB_URL, USER, PASS);
            
            // создаем запрос к базе 
            statement = connection.createStatement();
            String sql = "SELECT n.nationality, n.incipience\n" +
                "FROM nationality n\n" +
                "WHERE n.incipience = (SELECT MIN(n.incipience) FROM nationality n)";
            
            // выполняем запрос
            rs = statement.executeQuery(sql);
            
            // выводим результат исполнения запроса
            while(rs.next()){
                // извлекаем значения из каждой клонки
                String nationality = rs.getString("nationality");
                int incipience  = rs.getInt("incipience");

                // выводим значения
                System.out.println("Национальность: " + nationality);
                System.out.println("Образование государственности: " + incipience + " век");
            }
            
            rs.close();
            statement.close();
            connection.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
}
