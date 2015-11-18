/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import model.Database;

/**
 *
 * @author easterpa
 */
@WebServlet(name="PledgeServlet", urlPatterns={"/pledge"})
public class PledgeServlet extends HttpServlet {

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
        response.sendRedirect("index.jsp");
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
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String country = request.getParameter("country");
        
        addPledge(name, email, city, state, country);
        response.sendRedirect("index.jsp");
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
    
    
    private boolean addPledge(String name, String email, String city, String state, String country) {
        String insert_user = "INSERT INTO users VALUES(?, ?);";
        try (Connection connection = Database.open();
                PreparedStatement st = connection.prepareStatement(insert_user)) {
            st.setString(1, name);
            st.setString(2, email);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PledgeServlet.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        
        String insert_location = "INSERT INTO locations VALUES(?, ?, ?);";;
        try (Connection connection = Database.open();
                PreparedStatement st = connection.prepareStatement(insert_location)) {
            st.setString(1, city);
            st.setString(2, state);
            st.setString(3, country);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PledgeServlet.class.getName()).log(Level.SEVERE, null, ex);;
            return false;
        }
        
        return true;
    }

}
