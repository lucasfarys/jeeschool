package pl.coderslab.controller;

import pl.coderslab.db.dao.GroupDao;
import pl.coderslab.db.model.Group;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/groupUsersAdmin")
public class GroupUsersAdmin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String newName = request.getParameter("newName");
        if(newName.length()>0){
            Group group = new Group();
            group.setName(newName);
            GroupDao groupDao = new GroupDao();
            groupDao.create(group);
            List<Group> groups = groupDao.findAll();
            request.setAttribute("groups", groups);
            getServletContext().getRequestDispatcher("/jsp/groups.jsp").forward(request, response);
        }else {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            Group group = new Group(name, id);
            GroupDao groupDao = new GroupDao();
            System.out.println(id);
            groupDao.update(group);
            List<Group> groups = groupDao.findAll();
            request.setAttribute("groups", groups);
            getServletContext().getRequestDispatcher("/jsp/groups.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        GroupDao groupDao = new GroupDao();
        List<Group> groups = groupDao.findAll();
        HttpSession session = request.getSession();
        session.setAttribute("groups",groups);
        getServletContext().getRequestDispatcher("/jsp/groups.jsp").forward(request,response);
    }
}
