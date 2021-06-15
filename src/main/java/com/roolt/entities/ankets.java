package com.roolt.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="ankets", schema="deplom")
public class ankets {

	
	private long id_anketa ;
	private long id_userD ;
	private String name  ; 
	private String nameBY ;
	private String fam ;
	private String famBY ;
	private String otch ;
	private String otchBY ;
	private String telefon ;
	private String email ;
	private String cpecialnost ;
	private String form_obuchen ;
	private String baz_obuchen ;
	private String chlen_brsm ;
	private String trebuets_obcaga ;
	private String pol ;
	private String lgota ;
	private String data_okonchanie_obrazov ;
	private String okonchil_klasov ;
	private String vid_obraz_organ ;
	private String gorod_obraz_organiz ;
	private String name_uchedn_zaveden ;
	private String c_otlichem_medal ;
	private String prohodil_voinskue_uchet ;
	private String izuchemue_lang ;
	private float crednie_bal;
	private String data_rochden ;
	private String mecto_rochdenie ;
	private String istochnik_info ;
	private String kanal_reclamnogo_vozdei ;
	private String adres_dle_inform ;
	private String kak_abitur_urnal_o_nas ;
	private String pocechali_kyrs ;
	private String uvlechenie ;
	private String dataP;
	
	private users idZakaz;
	
	
	public ankets() { 

	}
	
	
	
	
	
	public ankets(long id_userD, String name, String nameBY, String fam, String famBY, String otch,
			String otchBY, String telefon, String email, String cpecialnost, String form_obuchen, String baz_obuchen,
			String chlen_brsm, String trebuets_obcaga, String pol, String lgota, String data_okonchanie_obrazov,
			String okonchil_klasov, String vid_obraz_organ, String gorod_obraz_organiz, String name_uchedn_zaveden,
			String c_otlichem_medal, String prohodil_voinskue_uchet, String izuchemue_lang, float crednie_bal,
			String data_rochden, String mecto_rochdenie, String istochnik_info, String kanal_reclamnogo_vozdei,
			String adres_dle_inform, String kak_abitur_urnal_o_nas, String pocechali_kyrs, String uvlechenie , String dataP) {	
				
		this.id_userD = id_userD;
		this.name = name;
		this.nameBY = nameBY;
		this.fam = fam;
		this.famBY = famBY;
		this.otch = otch;
		this.otchBY = otchBY;
		this.telefon = telefon;
		this.email = email;
		this.cpecialnost = cpecialnost;
		this.form_obuchen = form_obuchen;
		this.baz_obuchen = baz_obuchen;
		this.chlen_brsm = chlen_brsm;
		this.trebuets_obcaga = trebuets_obcaga;
		this.pol = pol;
		this.lgota = lgota;
		this.data_okonchanie_obrazov = data_okonchanie_obrazov;
		this.okonchil_klasov = okonchil_klasov;
		this.vid_obraz_organ = vid_obraz_organ;
		this.gorod_obraz_organiz = gorod_obraz_organiz;
		this.name_uchedn_zaveden = name_uchedn_zaveden;
		this.c_otlichem_medal = c_otlichem_medal;
		this.prohodil_voinskue_uchet = prohodil_voinskue_uchet;
		this.izuchemue_lang = izuchemue_lang;
		this.crednie_bal = crednie_bal;
		this.data_rochden = data_rochden;
		this.mecto_rochdenie = mecto_rochdenie;
		this.istochnik_info = istochnik_info;
		this.kanal_reclamnogo_vozdei = kanal_reclamnogo_vozdei;
		this.adres_dle_inform = adres_dle_inform;
		this.kak_abitur_urnal_o_nas = kak_abitur_urnal_o_nas;
		this.pocechali_kyrs = pocechali_kyrs;
		this.uvlechenie = uvlechenie;
		this.dataP = dataP;
	}





	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_anketa", nullable=false)
	public long getId_anketa() {
		return id_anketa;
	}
	public void setId_anketa(long id_anketa) {
		this.id_anketa = id_anketa;
	}
	
	@Column(name="id_userD", nullable=false)
	public long getId_userD() {
		return id_userD;
	}
	public void setId_userD(long id_userD) {
		this.id_userD = id_userD;
	}
	
	@Column(name="name", length=255, nullable=false)
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@Column(name="nameBY", length=255, nullable=false)
	public String getNameBY() {
		return nameBY;
	}
	public void setNameBY(String nameBY) {
		this.nameBY = nameBY;
	}
	
	@Column(name="fam", length=255, nullable=false)
	public String getFam() {
		return fam;
	}
	public void setFam(String fam) {
		this.fam = fam;
	}
	
	@Column(name="famBY", length=255, nullable=false)
	public String getFamBY() {
		return famBY;
	}
	public void setFamBY(String famBY) {
		this.famBY = famBY;
	}
	
	@Column(name="otch", length=255, nullable=false)
	public String getOtch() {
		return otch;
	}
	public void setOtch(String otch) {
		this.otch = otch;
	}
	
	@Column(name="otchBY", length=255, nullable=false)
	public String getOtchBY() {
		return otchBY;
	}
	public void setOtchBY(String otchBY) {
		this.otchBY = otchBY;
	}
	
	@Column(name="telefon", length=255, nullable=false)
	public String getTelefon() {
		return telefon;
	}
	public void setTelefon(String telefon) {
		this.telefon = telefon;
	}
	
	@Column(name="email", length=255, nullable=false)
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Column(name="cpecialnost", length=255, nullable=false)
	public String getCpecialnost() {
		return cpecialnost;
	}
	public void setCpecialnost(String cpecialnost) {
		this.cpecialnost = cpecialnost;
	}
	
	@Column(name="form_obuchen", length=255, nullable=false)
	public String getForm_obuchen() {
		return form_obuchen;
	}
	public void setForm_obuchen(String form_obuchen) {
		this.form_obuchen = form_obuchen;
	}
	
	@Column(name="baz_obuchen", length=255, nullable=false)
	public String getBaz_obuchen() {
		return baz_obuchen;
	}
	public void setBaz_obuchen(String baz_obuchen) {
		this.baz_obuchen = baz_obuchen;
	}
	
	@Column(name="chlen_brsm", length=255, nullable=false)
	public String getChlen_brsm() {
		return chlen_brsm;
	}
	public void setChlen_brsm(String chlen_brsm) {
		this.chlen_brsm = chlen_brsm;
	}
	
	@Column(name="trebuets_obcaga", length=255, nullable=false)
	public String getTrebuets_obcaga() {
		return trebuets_obcaga;
	}
	public void setTrebuets_obcaga(String trebuets_obcaga) {
		this.trebuets_obcaga = trebuets_obcaga;
	}
	
	@Column(name="pol", length=255, nullable=false)
	public String getPol() {
		return pol;
	}
	public void setPol(String pol) {
		this.pol = pol;
	}
	
	@Column(name="lgota", length=255, nullable=false)
	public String getLgota() {
		return lgota;
	}
	public void setLgota(String lgota) {
		this.lgota = lgota;
	}
	
	@Column(name="data_okonchanie_obrazov", length=255, nullable=false)
	public String getData_okonchanie_obrazov() {
		return data_okonchanie_obrazov;
	}
	public void setData_okonchanie_obrazov(String data_okonchanie_obrazov) {
		this.data_okonchanie_obrazov = data_okonchanie_obrazov;
	}
	
	@Column(name="okonchil_klasov", length=255, nullable=false)
	public String getOkonchil_klasov() {
		return okonchil_klasov;
	}
	public void setOkonchil_klasov(String okonchil_klasov) {
		this.okonchil_klasov = okonchil_klasov;
	}
	
	@Column(name="vid_obraz_organ", length=255, nullable=false)
	public String getVid_obraz_organ() {
		return vid_obraz_organ;
	}
	public void setVid_obraz_organ(String vid_obraz_organ) {
		this.vid_obraz_organ = vid_obraz_organ;
	}
	
	@Column(name="gorod_obraz_organiz", length=255, nullable=false)
	public String getGorod_obraz_organiz() {
		return gorod_obraz_organiz;
	}
	public void setGorod_obraz_organiz(String gorod_obraz_organiz) {
		this.gorod_obraz_organiz = gorod_obraz_organiz;
	}
	
	@Column(name="name_uchedn_zaveden", length=255, nullable=false)
	public String getName_uchedn_zaveden() {
		return name_uchedn_zaveden;
	}
	public void setName_uchedn_zaveden(String name_uchedn_zaveden) {
		this.name_uchedn_zaveden = name_uchedn_zaveden;
	}
	
	@Column(name="c_otlichem_medal", length=255, nullable=false)
	public String getC_otlichem_medal() {
		return c_otlichem_medal;
	}
	public void setC_otlichem_medal(String c_otlichem_medal) {
		this.c_otlichem_medal = c_otlichem_medal;
	}
	
	@Column(name="prohodil_voinskue_uchet", length=255, nullable=false)
	public String getProhodil_voinskue_uchet() {
		return prohodil_voinskue_uchet;
	}
	public void setProhodil_voinskue_uchet(String prohodil_voinskue_uchet) {
		this.prohodil_voinskue_uchet = prohodil_voinskue_uchet;
	}
	
	@Column(name="izuchemue_lang", length=255, nullable=false)
	public String getIzuchemue_lang() {
		return izuchemue_lang;
	}
	public void setIzuchemue_lang(String izuchemue_lang) {
		this.izuchemue_lang = izuchemue_lang;
	}
	
	@Column(name="crednie_bal", nullable=false)
	public float getCrednie_bal() {
		return crednie_bal;
	}
	public void setCrednie_bal(float crednie_bal) {
		this.crednie_bal = crednie_bal;
	}
	
	@Column(name="data_rochden", length=255, nullable=false)
	public String getData_rochden() {
		return data_rochden;
	}
	public void setData_rochden(String data_rochden) {
		this.data_rochden = data_rochden;
	}
	
	@Column(name="mecto_rochdenie", length=255, nullable=false)
	public String getMecto_rochdenie() {
		return mecto_rochdenie;
	}
	public void setMecto_rochdenie(String mecto_rochdenie) {
		this.mecto_rochdenie = mecto_rochdenie;
	}
	
	@Column(name="istochnik_info", length=255, nullable=false)
	public String getIstochnik_info() {
		return istochnik_info;
	}
	public void setIstochnik_info(String istochnik_info) {
		this.istochnik_info = istochnik_info;
	}
	
	@Column(name="kanal_reclamnogo_vozdei", length=255, nullable=false)
	public String getKanal_reclamnogo_vozdei() {
		return kanal_reclamnogo_vozdei;
	}
	public void setKanal_reclamnogo_vozdei(String kanal_reclamnogo_vozdei) {
		this.kanal_reclamnogo_vozdei = kanal_reclamnogo_vozdei;
	}
	
	@Column(name="adres_dle_inform", length=255, nullable=false)
	public String getAdres_dle_inform() {
		return adres_dle_inform;
	}
	public void setAdres_dle_inform(String adres_dle_inform) {
		this.adres_dle_inform = adres_dle_inform;
	}
	
	@Column(name="kak_abitur_urnal_o_nas", length=255, nullable=false)
	public String getKak_abitur_urnal_o_nas() {
		return kak_abitur_urnal_o_nas;
	}
	public void setKak_abitur_urnal_o_nas(String kak_abitur_urnal_o_nas) {
		this.kak_abitur_urnal_o_nas = kak_abitur_urnal_o_nas;
	}
	
	@Column(name="pocechali_kyrs", length=255, nullable=false)
	public String getPocechali_kyrs() {
		return pocechali_kyrs;
	}
	public void setPocechali_kyrs(String pocechali_kyrs) {
		this.pocechali_kyrs = pocechali_kyrs;
	}
	
	@Column(name="uvlechenie", length=255, nullable=false)
	public String getUvlechenie() {
		return uvlechenie;
	}
	public void setUvlechenie(String uvlechenie) {
		this.uvlechenie = uvlechenie;
	}
	
	
	
	
	@Column(name="dataP", length=100, nullable=false)
	public String getDataP() {
		return dataP;
	}
	public void setDataP(String dataP) {
		this.dataP = dataP;
	}





	@Override
	public String toString() {
		return "ankets [id_anketa=" + id_anketa + ", id_userD=" + id_userD + ", name=" + name + ", nameBY=" + nameBY
				+ ", fam=" + fam + ", famBY=" + famBY + ", otch=" + otch + ", otchBY=" + otchBY + ", telefon=" + telefon
				+ ", email=" + email + ", cpecialnost=" + cpecialnost + ", form_obuchen=" + form_obuchen
				+ ", baz_obuchen=" + baz_obuchen + ", chlen_brsm=" + chlen_brsm + ", trebuets_obcaga=" + trebuets_obcaga
				+ ", pol=" + pol + ", lgota=" + lgota + ", data_okonchanie_obrazov=" + data_okonchanie_obrazov
				+ ", okonchil_klasov=" + okonchil_klasov + ", vid_obraz_organ=" + vid_obraz_organ
				+ ", gorod_obraz_organiz=" + gorod_obraz_organiz + ", name_uchedn_zaveden=" + name_uchedn_zaveden
				+ ", c_otlichem_medal=" + c_otlichem_medal + ", prohodil_voinskue_uchet=" + prohodil_voinskue_uchet
				+ ", izuchemue_lang=" + izuchemue_lang + ", crednie_bal=" + crednie_bal + ", data_rochden="
				+ data_rochden + ", mecto_rochdenie=" + mecto_rochdenie + ", istochnik_info=" + istochnik_info
				+ ", kanal_reclamnogo_vozdei=" + kanal_reclamnogo_vozdei + ", adres_dle_inform=" + adres_dle_inform
				+ ", kak_abitur_urnal_o_nas=" + kak_abitur_urnal_o_nas + ", pocechali_kyrs=" + pocechali_kyrs
				+ ", uvlechenie=" + uvlechenie + ", dataP=" + dataP + ", idZakaz=" + idZakaz + "]";
	}





	@OneToOne
	@JoinColumn(name = "id_userD", referencedColumnName = "id_user", insertable = false, updatable = false)
	public users getIdZakaz() {
		return idZakaz;
	}
	public void setIdZakaz(users idZakaz) {
		this.idZakaz = idZakaz;
	}
	
	
	
}
