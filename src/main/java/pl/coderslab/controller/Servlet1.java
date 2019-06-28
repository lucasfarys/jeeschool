package pl.coderslab.controller;


import pl.coderslab.db.dao.SolutionDao;
import pl.coderslab.db.model.Solution;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/")
public class Servlet1 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Integer limit = Integer.parseInt(request.getParameter("limit"));
        SolutionDao solutionDao = new SolutionDao();
        List<Solution> solutions = solutionDao.findRecent(5);
        HttpSession session = request.getSession();
        session.setAttribute("solutions", solutions);
        getServletContext().getRequestDispatcher("/jsp/index.jsp").forward(request,response);
    }
}
