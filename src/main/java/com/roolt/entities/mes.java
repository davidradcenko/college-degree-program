package com.roolt.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name="mes", schema="deplom")
public class mes {

	private long id_mes;
	private long id_userR;
	private String text ;
	private String data ;	
	
	private users user1;
	
	
	public mes() { 

	}

	public mes(long id_userR, String text, String data) {
		
		this.id_userR = id_userR;
		this.text = text;
		this.data = data;
	}

	

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_mes", nullable=false)
	public long getId_mes() {
		return id_mes;
	}

	public void setId_mes(long id_mes) {
		this.id_mes = id_mes;
	}

	
	
	@Column(name="id_userR", nullable=false)
	public long getId_userR() {
		return id_userR;
	}
	public void setId_userR(long id_userR) {
		this.id_userR = id_userR;
	}

	
	
	
	@Column(name="text", length=255 , nullable=false)
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}

	
	
	
	@Column(name="data", length=255 , nullable=false)
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}

	

	@Override
	public String toString() {
		return "mes [id_mes=" + id_mes + ", id_userD=" + id_userR + ", text=" + text + ", data=" + data + ", user="
				+ user1 + "]";
	}



	
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="id_userR", referencedColumnName="id_user", insertable = false, updatable = false)
	public users getUser1() {
		return user1;
	}

	public void setUser1(users user1) {
		this.user1 = user1;
	}
	
	
	
	
	
	

	
}