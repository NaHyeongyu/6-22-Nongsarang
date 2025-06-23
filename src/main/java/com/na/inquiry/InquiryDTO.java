package com.na.inquiry;
import java.sql.Timestamp;

public class InquiryDTO {
	   private int id;
	    private String title;
	    private String content;
	    private String writer;
	    private Timestamp createdAt;
	    private String filename;       
	    private String originalName;   

	    public InquiryDTO() {}


	    public int getId() {
	        return id;
	    }
	    public void setId(int id) {
	        this.id = id;
	    }

	    public String getTitle() {
	        return title;
	    }
	    public void setTitle(String title) {
	        this.title = title;
	    }

	    public String getContent() {
	        return content;
	    }
	    public void setContent(String content) {
	        this.content = content;
	    }

	    public String getWriter() {
	        return writer;
	    }
	    public void setWriter(String writer) {
	        this.writer = writer;
	    }

	    public Timestamp getCreatedAt() {
	        return createdAt;
	    }
	    public void setCreatedAt(Timestamp createdAt) {
	        this.createdAt = createdAt;
	    }

	    public String getFilename() {
	        return filename;
	    }
	    public void setFilename(String filename) {
	        this.filename = filename;
	    }

	    public String getOriginalName() {
	        return originalName;
	    }
	    public void setOriginalName(String originalName) {
	        this.originalName = originalName;
	    }
	}
	 

