package com.na.inquiry;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;

@WebServlet("/inquiryDelete")
public class InquiryDeleteServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        String idParam = request.getParameter("id");

        if (idParam == null || idParam.isEmpty()) {
        	response.sendRedirect(request.getContextPath() + "/inquiry/list1");            return;
        }

        try {
            int id = Integer.parseInt(idParam);

            InquiryDAO dao = new InquiryDAO();
            InquiryDTO dto = dao.getById(id);

            if (dto != null && dto.getFilename() != null) {
                String uploadPath = getServletContext().getRealPath("/upload");
                File file = new File(uploadPath, dto.getFilename());
                if (file.exists()) file.delete();
            }

            dao.delete(id);

            response.sendRedirect(request.getContextPath() + "/inquiry/list1");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect(request.getContextPath() + "/inquiry/list1");        }
    }
}