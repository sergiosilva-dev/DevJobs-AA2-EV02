package com.devjobs.web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet(name = "HelloServlet", urlPatterns = { "/hello" })
public class HelloServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        process(req, resp, "GET");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        process(req, resp, "POST");
    }

    private void process(HttpServletRequest req, HttpServletResponse resp, String method)
            throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String[] techArr = req.getParameterValues("tech");
        List<String> tech = techArr != null ? Arrays.asList(techArr) : List.of();

        req.setAttribute("method", method);
        req.setAttribute("name", name);
        req.setAttribute("email", email);
        req.setAttribute("tech", tech);

        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");

        req.getRequestDispatcher("/result.jsp").forward(req, resp);
    }
}