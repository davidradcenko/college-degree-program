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
@Table(name="den", schema="deplom")
public class den {

	private long id_den;
	private long id_userD;
	private String text ;
	private String data ;	
	
	private users user;
	
	
	public den() { 

	}

	public den(long id_userD, String text, String data) {
		
		this.id_userD = id_userD;
		this.text = text;
		this.data = data;
	}

	

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_den", nullable=false)
	public long getId_den() {
		return id_den;
	}
	public void setId_den(long id_den) {
		this.id_den = id_den;
	}

	
	
	@Column(name="id_userD", nullable=false)
	public long getId_userD() {
		return id_userD;
	}
	public void setId_userD(long id_userD) {
		this.id_userD = id_userD;
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
		return "den [id_den=" + id_den + ", id_userD=" + id_userD + ", text=" + text + ", data=" + data + ", user="
				+ user + "]";
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="id_userD", referencedColumnName="id_user", insertable = false, updatable = false)
	public users getUser() {
		return user;
	}

	public void setUser(users user) {
		this.user = user;
	}
	
	
	
	
	
	

	
}