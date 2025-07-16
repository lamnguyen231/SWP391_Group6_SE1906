/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.Customer;

import DAO.CategoryDAO;
import DAO.FilterDAO;
import DAO.ProductDAO;
import DAO.TypeDAO;
import Model.Product.Category;
import Model.Product.Product;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author Tuan
 */
public class listAllProduct extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet listAllProduct</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet listAllProduct at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");

        }
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
        String index = request.getParameter("index");
        if (index == null) {
            index = "1";
        }
        int i = Integer.parseInt(index);
        FilterDAO df = new FilterDAO();
        ProductDAO db = new ProductDAO();
        CategoryDAO dc = new CategoryDAO();
        int numberPage = db.getNumberPageForListAllProduct();
        List<Category> listC = dc.getListCategory();
        request.setAttribute("listC", listC);
        TypeDAO td = new TypeDAO();
        request.setAttribute("df", df);
        List<Product> listAll = db.getAllProductForPaging(i);
        request.setAttribute("listAll", listAll);
        request.setAttribute("numPage", numberPage);
        request.setAttribute("index", i);
        request.setAttribute("td", td);
//            String txtSearch = request.getParameter("txt");
//            List<Product> listS = db.searchByName(txtSearch);
//            request.setAttribute("listProduct", listS);
        request.getRequestDispatcher("view/CustomerView/viewAllListProduct.jsp").forward(request, response);
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
