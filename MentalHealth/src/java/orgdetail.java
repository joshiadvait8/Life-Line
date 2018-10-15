/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jethava
 */
public class orgdetail extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           String uname = request.getParameter("uname");
           String city = request.getParameter("city");
           String add = request.getParameter("add");
           String help = request.getParameter("help");
           String con = request.getParameter("con");
           String email = request.getParameter("email");
           String link = request.getParameter("link");
           
        String sql="insert into helpline(orgName,city,address,helpline,contact,email,link) values (?,?,?,?,?,?,?)";
	String url = "jdbc:mysql://localhost:3306/hnc?useSSL=FALSE";
	String username = "root";
	String password = "root";
            
            String content = request.getParameter("con");
            
            Class.forName("com.mysql.jdbc.Driver");

    	
            Connection conn= DriverManager.getConnection( url, username, password);
            PreparedStatement ps= conn.prepareStatement(sql);
            ps.setString(1, uname);
            ps.setString(2, city);
            ps.setString(3, add);
            ps.setString(4, help);
            ps.setString(5, con);
            ps.setString(6, email);
            ps.setString(7, link);
            int res=ps.executeUpdate();
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet orgdetail</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet orgdetail at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
        catch(Exception e){}
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

}
