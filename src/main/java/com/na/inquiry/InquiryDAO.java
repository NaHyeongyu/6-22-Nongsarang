package com.na.inquiry;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.na.util.DBUtil;

public class InquiryDAO {

    public void insert(InquiryDTO dto) {
    	String sql = "INSERT INTO inquiry (title, content, writer_id, file_name, original_file_name) VALUES (?, ?, ?, ?, ?)";
    	
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, dto.getTitle());
            pstmt.setString(2, dto.getContent());
            pstmt.setString(3, dto.getWriter());
            pstmt.setString(4, dto.getFilename());
            pstmt.setString(5, dto.getOriginalName());

            pstmt.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<InquiryDTO> getAll() {
        List<InquiryDTO> list = new ArrayList<>();
        String sql = "SELECT * FROM inquiry ORDER BY id DESC";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            while (rs.next()) {
                InquiryDTO dto = new InquiryDTO();
                dto.setId(rs.getInt("id"));
                dto.setTitle(rs.getString("title"));
                dto.setContent(rs.getString("content"));
                dto.setWriter(rs.getString("writer_id"));
                dto.setCreatedAt(rs.getTimestamp("created_at")); 
                dto.setFilename(rs.getString("file_name")); 
                dto.setOriginalName(rs.getString("original_file_name")); 
                list.add(dto);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
        
    }
    
    public InquiryDTO getById(int id) {
        String sql = "SELECT * FROM inquiry WHERE id = ?";
        InquiryDTO dto = null;

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, id);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    dto = new InquiryDTO();
                    dto.setId(rs.getInt("id"));
                    dto.setTitle(rs.getString("title"));
                    dto.setContent(rs.getString("content"));
                    dto.setWriter(rs.getString("writer_id"));
                    dto.setCreatedAt(rs.getTimestamp("created_at"));
                    dto.setFilename(rs.getString("file_name"));
                    dto.setOriginalName(rs.getString("original_file_name"));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return dto;
    }
    
    public void update(InquiryDTO dto) {
        String sql = "UPDATE inquiry SET title = ?, content = ?, file_name = ?, original_file_name = ? WHERE id = ?";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, dto.getTitle());
            pstmt.setString(2, dto.getContent());
            pstmt.setString(3, dto.getFilename());      
            pstmt.setString(4, dto.getOriginalName());     
            pstmt.setInt(5, dto.getId());

            pstmt.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void delete(int id) {
        String sql = "DELETE FROM inquiry WHERE id = ?";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setInt(1, id);
            pstmt.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}