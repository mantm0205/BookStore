package BookStore.config;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import java.beans.PropertyVetoException;
import java.sql.Connection;
import java.sql.SQLException;

public class ConnectionPool {
    private static ComboPooledDataSource cpds = new ComboPooledDataSource();
        static {
            try {
                cpds.setDriverClass(DBConfiguration.DbConfiguration.DB_DRIVER);
                cpds.setJdbcUrl(DBConfiguration.DbConfiguration.CONNECTION_URL);
                cpds.setUser(DBConfiguration.DbConfiguration.USER_NAME);
                cpds.setPassword(DBConfiguration.DbConfiguration.PASSWORD);
                cpds.setMinPoolSize(DBConfiguration.DbConfiguration.DB_MIN_CONNECTIONS);
                cpds.setInitialPoolSize(DBConfiguration.DbConfiguration.DB_MIN_CONNECTIONS);
                cpds.setMaxPoolSize(DBConfiguration.DbConfiguration.DB_MAX_CONNECTIONS);
            } catch (PropertyVetoException e) {
                e.printStackTrace();
            }
        }
        public ConnectionPool(){
            super();
        }
        public static Connection getConnection(String task) throws SQLException{
            System.out.println("Getting connection for task" + task);
            Connection conn = cpds.getConnection();
            logPoolStatus(task);
            return conn;
        }
    public synchronized static void logPoolStatus(String task) throws SQLException {
        System.out.println("Received connection for task " + task);
        System.out.println("+ Num of Connections: " + cpds.getNumConnections());
    }

    public static Connection Connection() throws SQLException{
        Connection conn = cpds.getConnection();
        return conn;
    }
}
