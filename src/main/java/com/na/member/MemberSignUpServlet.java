package com.na.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/signup")
public class MemberSignUpServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String id = request.getParameter("userId");
        String pw = request.getParameter("password");
        String name = request.getParameter("userName");

        MemberDTO dto = new MemberDTO(id, pw, name);
        MemberDAO dao = new MemberDAO();

        int result = dao.insertMember(dto);

        if (result > 0) {
            response.sendRedirect("view/signin.jsp");
        } else {
            response.sendRedirect("view/signUp.jsp");
        }
    }
}