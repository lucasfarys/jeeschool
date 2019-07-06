package pl.coderslab.controller;

import pl.coderslab.db.dao.SolutionDao;
import pl.coderslab.db.dao.UserDao;
import pl.coderslab.db.model.Exercise;
import pl.coderslab.db.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/userDetails")
public class UserDetails extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        UserDao userDao = new UserDao();
        SolutionDao solutionDao = new SolutionDao();
        User user = userDao.read(id);
        List<Exercise> exercises = solutionDao.findAllByUserId(id);
        HttpSession session = request.getSession();
        session.setAttribute("user",user);
        session.setAttribute("exercises",exercises);
        getServletContext().getRequestDispatcher("/jsp/userDetails.jsp").forward(request,response);
    }
}
