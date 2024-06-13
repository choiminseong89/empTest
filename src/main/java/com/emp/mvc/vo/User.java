package com.emp.mvc.vo;

import java.util.List;

import com.emp.mvc.util.PagingVO;

public class User {
	
    private String id;
    
    private String name;
    
    private String email;
    
	/** ∆‰¿Ã¬°. */
	private PagingVO pagingVO;
	
    private List<FileVO> fileVO;
	
    
    
    
    
    public List<FileVO> getFileVO() {
		return fileVO;
	}

	public void setFileVO(List<FileVO> fileVO) {
		this.fileVO = fileVO;
	}

	public PagingVO getPaging() {
		return pagingVO;
	}

	public void setPaging(PagingVO pagingVO) {
		this.pagingVO = pagingVO;
	}
    

    public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
