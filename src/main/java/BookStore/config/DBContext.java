package BookStore.config;
import java.sql.Connection;
import java.sql.DriverManager;


public class DBContext {


    public Connection getConnection()throws Exception {
        String url = "jdbc:mysql://localhost/bookstore?useUnicode=true&characterEncoding=utf-8";
        if(instance == null || instance.trim().isEmpty())
            url ="jdbc:mysql://localhost/bookstore?useUnicode=true&characterEncoding=utf-8";
        Class.forName("com.mysql.jdbc.Driver");
        return DriverManager.getConnection(url, userID, password);
    }

    private final String serverName = "localhost";
    private final String dbName = "bookstore";
    private final String portNumber = "1433";
    private final String instance="";//LEAVE THIS ONE EMPTY IF YOUR SQL IS A SINGLE INSTANCE
    private final String userID = "root";
    private final String password = "";
    public static void main(String[] args) {
        try {
            System.out.println(new DBContext().getConnection());
        } catch (Exception e) {
        }
    }
}
