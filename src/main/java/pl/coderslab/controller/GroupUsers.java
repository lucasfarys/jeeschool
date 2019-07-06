package pl.coderslab.controller;

import pl.coderslab.db.dao.SolutionDao;
import pl.coderslab.db.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/groupUsers")
public class GroupUsers extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        SolutionDao solutionDao = new SolutionDao();
        List<User> users = solutionDao.loadAllByGroupId(id);
        HttpSession session=request.getSession();
        session.setAttribute("users",users);
        getServletContext().getRequestDispatcher("/jsp/usersByGroup.jsp").forward(request,response);
    }
}
