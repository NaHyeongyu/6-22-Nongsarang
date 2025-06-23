package com.na.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/signin")
public class MemberSignInServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("userId");
        String pw = request.getParameter("password");

        MemberDAO dao = new MemberDAO();

        int result = dao.checkSignin(id, pw);

        if (result == 1) {
            HttpSession session = request.getSession();
            MemberDTO member = dao.selectById(id);
            session.setAttribute("userId", member.getId());
            session.setAttribute("userName", member.getName());
            response.sendRedirect("index.jsp");
        } else {
            String reason = "";
            if (result == 0) reason = "no_id";
            else if (result == 2) reason = "wrong_pw";
            else reason = "error";
            response.sendRedirect("view/signin.jsp?error=" + reason);
        }
    }
}
