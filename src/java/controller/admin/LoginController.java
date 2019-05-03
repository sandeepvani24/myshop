/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;

import dao.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author Mohit
 */
public class LoginController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       RequestDispatcher dispatcher =  request.getRequestDispatcher("login_register.jsp");
       dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        RequestDispatcher dispatcher;
        String email = request.getParameter("username");
        String password = request.getParameter("password");
        
        UserDao userDao = new UserDao();
        User user = userDao.loginAttempt(email,password);
        
        if(user.getId() != null && user.getEmail() != "" && user.getEmail() != null){
            
            HttpSession session = request.getSession(true);
            session.setAttribute("userId", user.getId());
            session.setAttribute("username", user.getFullname());
            session.setAttribute("email", user.getEmail());
            session.setAttribute("phone", user.getPhone());     
            session.setAttribute("isLogin", true);
            response.sendRedirect("/MyShop/admin/dashboard");  
        }else{
            request.setAttribute("error", "Invalid Credetials");            
            dispatcher = request.getRequestDispatcher("login_register.jsp");
            dispatcher.forward(request, response);            
        }
    }    
}
