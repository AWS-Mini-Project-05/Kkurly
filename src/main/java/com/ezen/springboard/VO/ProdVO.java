package com.ezen.springboard.VO;

import java.sql.Date;

public class ProdVO {
	private int prodNo;
	private String prodCgcd;
	private String prodNm;
	private int prodPrice;
	private int prodQty;
	private Date inputDt;
	private Date updateDt;
	private String prodUnit;
	private String prodVol;
	private char useYn;
	private int saleQty;
	public int getProdNo() {
		return prodNo;
	}
	@Override
	public String toString() {
		return "ProdVO [prodNo=" + prodNo + ", prodCgcd=" + prodCgcd + ", prodNm=" + prodNm + ", prodPrice=" + prodPrice
				+ ", prodQty=" + prodQty + ", inputDt=" + inputDt + ", updateDt=" + updateDt + ", prodUnit=" + prodUnit
				+ ", prodVol=" + prodVol + ", useYn=" + useYn + ", saleQty=" + saleQty + "]";
	}
	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}
	public String getProdCgcd() {
		return prodCgcd;
	}
	public void setProdCgcd(String prodCgcd) {
		this.prodCgcd = prodCgcd;
	}
	public String getProdNm() {
		return prodNm;
	}
	public void setProdNm(String prodNm) {
		this.prodNm = prodNm;
	}
	public int getProdPrice() {
		return prodPrice;
	}
	public void setProdPrice(int prodPrice) {
		this.prodPrice = prodPrice;
	}
	public int getProdQty() {
		return prodQty;
	}
	public void setProdQty(int prodQty) {
		this.prodQty = prodQty;
	}
	public Date getInputDt() {
		return inputDt;
	}
	public void setInputDt(Date inputDt) {
		this.inputDt = inputDt;
	}
	public Date getUpdateDt() {
		return updateDt;
	}
	public void setUpdateDt(Date updateDt) {
		this.updateDt = updateDt;
	}
	public String getProdUnit() {
		return prodUnit;
	}
	public void setProdUnit(String prodUnit) {
		this.prodUnit = prodUnit;
	}
	public String getProdVol() {
		return prodVol;
	}
	public void setProdVol(String prodVol) {
		this.prodVol = prodVol;
	}
	public char getUseYn() {
		return useYn;
	}
	public void setUseYn(char useYn) {
		this.useYn = useYn;
	}
	public int getSaleQty() {
		return saleQty;
	}
	public void setSaleQty(int saleQty) {
		this.saleQty = saleQty;
	}
	

}
