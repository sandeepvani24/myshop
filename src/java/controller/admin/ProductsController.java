
package controller.admin;

import dao.ProductsDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Product;


public class ProductsController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        ProductsDao productDao = new ProductsDao();
        List<Product> products = productDao.getProducts();
        
        request.setAttribute("products", products);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/products.jsp");
        dispatcher.forward(request, response);
    } 
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }
}
