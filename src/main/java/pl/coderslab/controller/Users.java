package pl.coderslab.controller;

import pl.coderslab.db.dao.UserDao;
import pl.coderslab.db.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/users")
public class Users extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String newUserName = request.getParameter("newUserName");
        UserDao userDao = new UserDao();
        if(newUserName.length()>0){
            User user = new User();
            user.setUserName(newUserName);
            user.setEmail(request.getParameter("newEmail"));
            user.setPassword(request.getParameter("newPassword"));
            userDao.create(user);
            viewUsers(request,response);
        }else{
            User user = new User();
            user.setUserName(newUserName);
            user.setId(Integer.parseInt(request.getParameter("id")));
            user.setUserName(request.getParameter("userName"));
            user.setEmail(request.getParameter("email"));
            user.setPassword(request.getParameter("password"));
            userDao.update(user);
            viewUsers(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        viewUsers(request,response);
    }
    protected void viewUsers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao userDao = new UserDao();
        List<User> users = userDao.findAll();
        HttpSession session = request.getSession();
        session.setAttribute("users",users);
        getServletContext().getRequestDispatcher("/jsp/users.jsp").forward(request,response);
    }
}
