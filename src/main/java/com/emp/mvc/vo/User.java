package com.emp.mvc.vo;

import com.emp.mvc.util.PagingVO;

public class User {
    private Long id;
    private String name;
    private String email;
    
    /** ∆‰¿Ã¬°. */
	private PagingVO pagingVO;
    
    public PagingVO getPaging() {
		return pagingVO;
	}

	public void setPaging(PagingVO pagingVO) {
		this.pagingVO = pagingVO;
	}
    
    // getters and setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
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
