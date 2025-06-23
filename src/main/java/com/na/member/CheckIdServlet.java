package com.na.member;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;

@WebServlet("/checkId")
public class CheckIdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String id = request.getParameter("userId");
        MemberDAO dao = new MemberDAO();
        boolean isDuplicate = dao.isIdDuplicate(id);  

        response.setContentType("text/plain;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.print(isDuplicate ? "duplicate" : "available");
    }
}