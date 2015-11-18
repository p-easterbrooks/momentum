/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Database;

/**
 *
 * @author pauleasterbrooks
 */
@WebServlet(name = "CounterServlet", urlPatterns = {"/count"})
public class CounterServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int pledge = getPledgeCount();
        Logger.getLogger(CounterServlet.class.getName()).log(Level.SEVERE, null, "Count: " + pledge);
        System.out.println("Count: " + pledge);
        
        request.setAttribute("pledge", pledge);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
        response.sendRedirect("index.jsp");
        
        /*RequestDispatcher dispatcher = request.getRequestDispatcher("/body.jsp");
         if (dispatcher != null)
         {
            dispatcher.forward(request, response);
         }*/ 
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    
    /**
     * Accesses database and retrieve number of rows from the user table
     * @return 
     */
    private int getPledgeCount()
    {
        int rv = -1;
        String count_users = "SELECT COUNT(name) FROM users;";
        
        try (
                Connection connection = Database.open();
                Statement st = connection.createStatement();
                ResultSet rs = st.executeQuery(count_users);  
            ) {
            rs.next();
            rv = rs.getInt(1);
            //free up assets
            st.close();
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(PledgeServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return rv;
    }

}
