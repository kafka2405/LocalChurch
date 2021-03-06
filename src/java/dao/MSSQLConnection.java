package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.naming.Context;
import javax.naming.InitialContext;

public class MSSQLConnection {

    private static Connection con = null;
    private static String connectionURL = "";
    private static String databaseUsername = "";
    private static String databasePassword = "";
    private static String photoPath = "";

    /**
     * Get data about database from context.xml
     */
    
    static {
        try {
            InitialContext initialContext = new InitialContext();
            Context environmentContext = (Context) initialContext.lookup("java:/comp/env");
            connectionURL = (String) environmentContext.lookup("connectionURL");
            databaseUsername = (String) environmentContext.lookup("databaseUsername");
            databasePassword = (String) environmentContext.lookup("databasePassword");
            photoPath = (String) environmentContext.lookup("photoPath");
        } catch (Exception e) {
            System.out.println("Can't read the config!");
            e.printStackTrace();
        }
    }
    
    
    /**
     * Get connection to MSSQL Server
     *
     * @return Connection
     */
    public static Connection getConnection() throws Exception {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con = DriverManager.getConnection(connectionURL, databaseUsername, databasePassword);
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        }
        return con;
    }

    public static String getPhotoPath() {
        return photoPath;
    }
}
