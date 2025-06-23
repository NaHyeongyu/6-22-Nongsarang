package com.na.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.na.util.DBUtil;

public class MemberDAO {

    public int insertMember(MemberDTO dto) {
        String sql = "INSERT INTO member (id, pw, name) VALUES (?, ?, ?)";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, dto.getId());
            pstmt.setString(2, dto.getPassword());
            pstmt.setString(3, dto.getName());


            return pstmt.executeUpdate(); 

        } catch (Exception e) {
            e.printStackTrace();
            return 0; 
        }
    }

    public boolean isIdDuplicate(String id) {
        String sql = "SELECT id FROM member WHERE id = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, id);
            ResultSet rs = pstmt.executeQuery();

            return rs.next(); 

        } catch (Exception e) {
            e.printStackTrace();
            return true; 
        }
    }

    public MemberDTO selectById(String id) {
        String sql = "SELECT * FROM member WHERE id = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, id);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                MemberDTO dto = new MemberDTO();
                dto.setId(rs.getString("id"));
                dto.setPassword(rs.getString("pw"));
                dto.setName(rs.getString("name"));
                return dto;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public int checkSignin(String id, String pw) {
        String sql = "SELECT pw FROM member WHERE id = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, id);
            ResultSet rs = pstmt.executeQuery();

            if (!rs.next()) return 0;

            String dbPw = rs.getString("pw");
            if (dbPw.equals(pw)) return 1;
            else return 2;

        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }
}