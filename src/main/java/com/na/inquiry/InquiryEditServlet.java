package com.na.inquiry;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
import java.nio.file.Files;
import java.nio.file.Paths;

@WebServlet("/inquiry/edit")
@MultipartConfig(
    maxFileSize = 1024 * 1024 * 10, // 10MB
    maxRequestSize = 1024 * 1024 * 20
)
public class InquiryEditServlet extends HttpServlet {

    private static final String UPLOAD_DIR = "/upload";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        try {
        	int id = Integer.parseInt(request.getParameter("id"));
            String title = request.getParameter("title");
            String content = request.getParameter("content");

            InquiryDAO dao = new InquiryDAO();
            InquiryDTO dto = dao.getById(id); 

            if (dto == null) {
                response.sendRedirect("inquiryList.jsp");
                return;
            }

            String uploadPath = getServletContext().getRealPath(UPLOAD_DIR);
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) uploadDir.mkdirs();

            Part filePart = request.getPart("file");
            String fileName = filePart.getSubmittedFileName();

            if (fileName != null && !fileName.isEmpty()) {
                if (dto.getFilename() != null) {
                    File oldFile = new File(uploadPath, dto.getFilename());
                    if (oldFile.exists()) oldFile.delete();
                }

                String savedName = System.currentTimeMillis() + "_" + fileName;
                filePart.write(uploadPath + File.separator + savedName);

                dto.setFilename(savedName);
                dto.setOriginalName(fileName);
            }
         

            dto.setTitle(title);
            dto.setContent(content);

            dao.update(dto);

            response.sendRedirect(request.getContextPath() + "/view/inquiryView.jsp?id=" + id);
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("inquiryList.jsp");
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        int id = Integer.parseInt(request.getParameter("id"));

        InquiryDAO dao = new InquiryDAO();
        InquiryDTO dto = dao.getById(id);

        if (dto == null) {
            response.sendRedirect(request.getContextPath() + "/inquiry/list1");
            return;
        }

        request.setAttribute("inquiry", dto);
        request.getRequestDispatcher("/view/inquiryEdit.jsp").forward(request, response);
    }
}