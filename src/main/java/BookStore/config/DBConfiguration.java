package BookStore.config;

public class DBConfiguration {
    public class DbConfiguration{
        public static final String USER_NAME = "root";
        public static final String PASSWORD = "";
        public static final String DB_DRIVER = "com.mysql.jdbc.Driver";
        public static final int DB_MIN_CONNECTIONS = 2;
        public static final int DB_MAX_CONNECTIONS = 5;
        public static final String CONNECTION_URL = "jdbc:mysql://localhost/bookstore?useUnicode=true&characterEncoding=utf-8";
        private DbConfiguration(){
            super();
        }
    }
}
