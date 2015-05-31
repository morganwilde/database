package com.company;

import com.company.Model.Buckets;
import com.company.Model.Database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

/**
 * Created by morganwilde on 31/05/15.
 */
public class UserInterface {

    private final static String commandQuit = "quit";
    private final static String commandHelp = "help";
    private final static String commandBuckets = "buckets";

    private String commandString = null;
    public Database database = new Database();

    // Setters
    public void readCommand() {
        Scanner scanner = new Scanner(System.in);
        commandString = scanner.nextLine();
    }

    // Getters
    public boolean commandIs(String command) {
        try {
            return commandString.equals(command);
        }
        catch (NullPointerException exception) {
            return false;
        }
    }

    public UserInterface() {
    }
    private void cleanup() {
        database.logout();
    }

    public void runLoop() {
        while (commandIs(commandQuit) == false) {
            commandPrompt();
            readCommand();
            interpretCommand();
        }
        cleanup();
    }

    public void commandPrompt() {
        System.out.print("<- ");
    }

    public void interpretCommand() {
        if (commandIs(commandHelp)) {
            doHelp();
        } else if (commandIs(commandBuckets)) {
            doBuckets();
        }
    }

    // List of commands

    public void doHelp() {
        System.out.println("This is a english language learning flash card database management program.");
        System.out.println("Below is a list of commands to navigate the program:");
        System.out.println("    1. 'buckets' - navigate flash card categories");
        System.out.println("    2. 'cards' - navigate cards themselves\n");
    }

    public void doBuckets() {
        PreparedStatement statement = database.prepareStatement(Buckets.selectAllBuckets);
        try {
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                String categoryName = result.getString("category_name");
                System.out.println(categoryName);
            }
        } catch (SQLException exception) {
            System.out.println(exception);
        }
    }
}
