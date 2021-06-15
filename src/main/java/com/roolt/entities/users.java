	package com.roolt.entities;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="users", schema="deplom")
public class users {

	private long id_user;
	private String pass;
	private String login ;
	private int roll ;
	private String name ;
	private String foto ;
	private String lotstime ;
	private String vk ;
	private String inst ;
	
	
	
	private ankets Zakaz_info;
	
	
	
	
	
	private Collection<den> orders;
	
	private Collection<mes> orders1;
	
	
	public users() { 

	}

	public users(String pass, String login, int roll, String name,String foto) {
		
		this.pass = pass;
		this.login = login;
		this.roll = roll;
		this.name = name;
		this.foto = foto;
	}

	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_user", nullable=false)
	public long getId_user() {
		return id_user;
	}
	public void setId_user(long id_user) {
		this.id_user = id_user;
	}

	
	
	
	@Column(name="pass", length=20, nullable=false)
	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	
	@Column(name="login", length=20, nullable=false)
	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	
	@Column(name="roll", length=2, nullable=false)
	public int getRoll() {
		return roll;
	}

	public void setRoll(int roll) {
		this.roll = roll;
	}

	
	@Column(name="name", length=35)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	@Column(name="foto", length=255)
	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}
	@Column(name="lotstime", length=255)
	public String getLotstime() {
		return lotstime;
	}

	public void setLotstime(String lotstime) {
		this.lotstime = lotstime;
	}
	@Column(name="vk", length=255)
	public String getVk() {
		return vk;
	}

	public void setVk(String vk) {
		this.vk = vk;
	}

	@Column(name="inst", length=255)
	public String getInst() {
		return inst;
	}

	public void setInst(String inst) {
		this.inst = inst;
	}

	
	
	
	@Override
	public String toString() {
		return "users [id_user=" + id_user + ", pass=" + pass + ", login=" + login + ", roll=" + roll + ", name=" + name
				+ ", foto=" + foto + ", lotstime=" + lotstime + ", vk=" + vk + ", inst=" + inst + ", Zakaz_info="
				+ Zakaz_info + ", orders=" + orders + ", orders1=" + orders1 + "]";
	}

	
	
	
	@OneToOne(mappedBy = "idZakaz")
	public ankets getZakaz_info() {
		return Zakaz_info;
	}

	public void setZakaz_info(ankets zakaz_info) {
		Zakaz_info = zakaz_info;
	}

	
	
	@OneToMany(mappedBy="user", fetch=FetchType.LAZY)
	public Collection<den> getOrders() {
		return orders;
	}

	public void setOrders(Collection<den> orders) {
		this.orders = orders;
	}







	
	
	@OneToMany(mappedBy="user1", fetch=FetchType.LAZY)
	public Collection<mes> getOrders1() {
		return orders1;
	}

	public void setOrders1(Collection<mes> orders1) {
		this.orders1 = orders1;
	}
	
	
	

	
}
