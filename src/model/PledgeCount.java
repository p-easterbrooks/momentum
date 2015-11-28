/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import controller.PledgeServlet;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Provides a model to retrieve a count of current pledges from the database
 * 
 * @author pauleasterbrooks
 */
public class PledgeCount {
    private int count;
    
    public PledgeCount() {
        count = retrievePledgeCount();
    }
   
    private int retrievePledgeCount()      
    {
           int pledgeCount = -1;
           String count_users = "SELECT COUNT(name) FROM users;";

           try (
                   Connection connection = Database.open();
                   Statement st = connection.createStatement();
                   ResultSet rs = st.executeQuery(count_users);  
               ) {
               rs.next();
               pledgeCount = rs.getInt(1);
               //free up assets
               st.close();
               rs.close();
           } catch (SQLException ex) {
               Logger.getLogger(PledgeServlet.class.getName()).log(Level.SEVERE, null, ex);
           }

           //Old servlet code
           //Logger.getLogger(MainServlet.class.getName()).log(Level.SEVERE, null, "Count: " + pledge);
           //System.out.println("Count: " + pledge);

           return pledgeCount;
       }
    
        public int getPledgeCount()
        {
            return this.count;
        }
   }
