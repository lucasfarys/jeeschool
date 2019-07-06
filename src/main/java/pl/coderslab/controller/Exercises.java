package pl.coderslab.controller;

import pl.coderslab.db.dao.ExerciseDao;
import pl.coderslab.db.model.Exercise;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/exercises")
public class Exercises extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ExerciseDao exerciseDao = new ExerciseDao();
        String newTitle = request.getParameter("newTitle");
        if(newTitle.length()>0) {
            Exercise exercise = new Exercise();
            exercise.setTitle(request.getParameter("newTitle"));
            exercise.setDescription(request.getParameter("newDescription"));
            exerciseDao.create(exercise);
            System.out.println("done");
            viewExercises(request,response);
        }else{
            Exercise exercise = new Exercise();
            exercise.setId(Integer.parseInt(request.getParameter("id")));
            exercise.setTitle(request.getParameter("title"));
            exercise.setDescription(request.getParameter("description"));
            exerciseDao.update(exercise);
            viewExercises(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        viewExercises(request,response);
    }
    protected void viewExercises(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ExerciseDao exerciseDao = new ExerciseDao();
        List<Exercise> exercises = exerciseDao.findAll();
        HttpSession session = request.getSession();
        session.setAttribute("exercises", exercises);
        getServletContext().getRequestDispatcher("/jsp/exercises.jsp").forward(request,response);
    }
}

