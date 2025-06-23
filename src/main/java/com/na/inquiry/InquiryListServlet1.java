package com.na.inquiry;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/inquiry/list1") 
public class InquiryListServlet1 extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            InquiryDAO dao = new InquiryDAO();
            List<InquiryDTO> list = dao.getAll();

            request.setAttribute("list", list);
            request.getRequestDispatcher("/view/inquiryList.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("/error.jsp");
        }
    }
}