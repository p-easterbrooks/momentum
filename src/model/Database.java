package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Provides access to the underlying PostgreSQL database.
 */
public class Database {

    /** JDBC driver name. */
    private static final String DRIVER = "org.postgresql.Driver";

    /** Database connection string. */
    private static final String DB_URL = "jdbc:postgresql://kindnessismomentum.org/momentum";

    /** Database user name. */
    private static final String DB_USER = "postgres";

    /** Database password. */
    private static final String DB_PASS = "dukeDOG15";

    /**
     * Static block; loads the JDBC driver.
     */
    static {
        try {
            Class.forName(DRIVER);
        } catch (ClassNotFoundException exc) {
            exc.printStackTrace();
        }
    }

    /**
     * Opens a new connection to the database.
     */
    public static Connection open() throws SQLException {
        return DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
    }
}