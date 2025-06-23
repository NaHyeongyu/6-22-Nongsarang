package com.na.inquiry;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@WebServlet("/inquiry/write")
@MultipartConfig(maxFileSize = 1024 * 1024 * 10) 
public class InquiryWriteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        String title = request.getParameter("title");
        String content = request.getParameter("content");

        HttpSession session = request.getSession();
        String writer = (String) session.getAttribute("userId");

        Part filePart = request.getPart("files");
        String originalName = null;
        String savedName = null;

        if (filePart != null && filePart.getSize() > 0) {
            originalName = filePart.getSubmittedFileName();

            String saveDir = getServletContext().getRealPath("/upload");
            File uploadDir = new File(saveDir);
            if (!uploadDir.exists()) {
                uploadDir.mkdirs();
            }

            savedName = System.currentTimeMillis() + "_" + originalName;
            filePart.write(saveDir + File.separator + savedName);
        }

        InquiryDTO dto = new InquiryDTO();
        dto.setTitle(title);
        dto.setContent(content);
        dto.setWriter(writer);
        dto.setCreatedAt(new Timestamp(System.currentTimeMillis())); 
        dto.setFilename(savedName);           
        dto.setOriginalName(originalName);    

        InquiryDAO dao = new InquiryDAO();
        dao.insert(dto);
        
        response.sendRedirect(request.getContextPath() + "/inquiry/list1");        

    
    }
    
 
}