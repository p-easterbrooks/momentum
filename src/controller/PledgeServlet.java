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
import model.Pledge;

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
        Pledge p = new Pledge(request.getParameter("name"), 
                request.getParameter("email"), request.getParameter("city"), 
        request.getParameter("state"), request.getParameter("country"));
        
        addPledge(p);
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
    
    
    private boolean addPledge(Pledge p) {
        String insert_user = "INSERT INTO users VALUES(?, ?);";
        try (Connection connection = Database.open();
                PreparedStatement st = connection.prepareStatement(insert_user)) {
            st.setString(1, p.getName());
            st.setString(2, p.getEmail());
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PledgeServlet.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        
        String insert_location = "INSERT INTO locations VALUES(?, ?, ?);";;
        try (Connection connection = Database.open();
                PreparedStatement st = connection.prepareStatement(insert_location)) {
            st.setString(1, p.getCity());
            st.setString(2, p.getState());
            st.setString(3, p.getCountry());
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PledgeServlet.class.getName()).log(Level.SEVERE, null, ex);;
            return false;
        }
        
        return true;
    }

}
