package com.company.Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by morganwilde on 31/05/15.
 */
public class Database {

    private Connection connection;

    public Database() {
        try {
            connection = DriverManager.getConnection(Credentials.host, Credentials.user, Credentials.password);
        }
        catch (SQLException exception) {
            System.out.println(exception);
            System.out.println("Could not connect to to database!");
            System.exit(1);
        }
    }

    public void logout() {
        try {
            if (connection != null) {
                connection.close();
            }
        } catch (SQLException exception) {
            System.out.println(exception);
        }
    }

    public PreparedStatement prepareStatement(String sql) {
        try {
            return connection.prepareStatement(sql);
        } catch (SQLException exception) {
            System.out.println(exception);
        }
        return null;
    }
}
