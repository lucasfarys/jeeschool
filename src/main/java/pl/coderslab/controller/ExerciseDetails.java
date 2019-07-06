package pl.coderslab.controller;

import pl.coderslab.db.dao.ExerciseDao;
import pl.coderslab.db.dao.SolutionDao;
import pl.coderslab.db.model.Exercise;
import pl.coderslab.db.model.Solution;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/exerciseDetails")
public class ExerciseDetails extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int exerciseId = Integer.parseInt(request.getParameter("exercise_id"));
        int userId = Integer.parseInt(request.getParameter("user_id"));
        Exercise exercise;
        ExerciseDao exerciseDao = new ExerciseDao();
        exercise =exerciseDao.loadById(exerciseId,userId);
        request.setAttribute("exercise", exercise);
        getServletContext().getRequestDispatcher("/jsp/exerciseDetails.jsp").forward(request,response);


    }
}
