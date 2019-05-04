
package controller.admin;

import dao.CategoryDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;


public class CategoryController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        CategoryDao categoryDao = new CategoryDao();
        List<Category> categories = categoryDao.getCategory();
        
        request.setAttribute("categories", categories);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/category.jsp");
        dispatcher.forward(request, response);
    } 
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }     
}