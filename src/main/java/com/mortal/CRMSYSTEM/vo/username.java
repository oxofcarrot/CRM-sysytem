package com.mortal.CRMSYSTEM.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.GenericGenerator;

@Entity

@Table(name = "user", uniqueConstraints = {@UniqueConstraint(columnNames = "code")})
public class username {
	
    @Id
    @GenericGenerator(name = "hibernate-uuid", strategy = "uuid")
    @GeneratedValue(generator = "hibernate-uuid")
    @Column(name = "id",columnDefinition = "varchar(32)")
    private String id;

	
    @Column(nullable = false,columnDefinition = "varchar(20) comment '工号'" )
	private String code;
    @Column(nullable = false,columnDefinition = "varchar(50) comment '姓名'" )
	private String username;
    @Column(nullable = false,columnDefinition = "varchar(50) comment '密码'" )
	private String password;
    @Column(nullable = false,columnDefinition = "int(1)  comment '身份类型'" )
	private int idtype;
    
    
    
    
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getIdtype() {
		return idtype;
	}
	public void setIdtype(int idtype) {
		this.idtype = idtype;
	}
	
    
    
    
    
    
    
    }