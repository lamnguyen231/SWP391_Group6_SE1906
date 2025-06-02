/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.UserAccess;

import DAO.UserDAO;
import Model.User.Role;
import Model.User.User;
import Model.User.Account;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import util.Hashing;
import util.Validate;

/**
 *
 * @author hbtth
 */
public class registerController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet registerController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet registerController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ArrayList<String> listDay = new ArrayList(),
                listMonth = new ArrayList(),
                listYears = new ArrayList();
        // create list day 
        for (int i = 0; i < 31; ++i) {
            listDay.add((i + 1) + "");
        }
        // create list month
        listMonth.add("Jan");
        listMonth.add("Feb");
        listMonth.add("Mar");
        listMonth.add("Apr");
        listMonth.add("May");
        listMonth.add("Jun");
        listMonth.add("Jul");
        listMonth.add("Aug");
        listMonth.add("Sep");
        listMonth.add("Oct");
        listMonth.add("Nov");
        listMonth.add("Dec");
        Date now = new Date();
        // traversal from date now into 120 year ago to add into list
        for (int i = now.getYear(); i >= now.getYear() - 120; --i) {
            listYears.add((i + 1900) + "");
        }
        HttpSession session = request.getSession();
        session.setAttribute("listDay", listDay);
        session.setAttribute("listMonth", listMonth);
        session.setAttribute("listYears", listYears);
        request.getRequestDispatcher("view/loginView/registerPage.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      

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
