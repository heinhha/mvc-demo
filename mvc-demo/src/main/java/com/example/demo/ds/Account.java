package com.example.demo.ds;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.*;


@Entity

public class Account {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String name;
	private BigDecimal balance = new BigDecimal("1000");
	
	@Temporal(TemporalType.DATE)
    private Date renewDate = new Date(new Date().getTime() + 21232323L);

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public BigDecimal getBalance() {
		return balance;
	}
	public void setBalance(BigDecimal balance) {
		this.balance = balance;
	}
	public Date getRenewDate() {
		return renewDate;
	}
	public void setRenewDate(Date renewDate) {
		this.renewDate = renewDate;
	}

	
	
	
	
}
