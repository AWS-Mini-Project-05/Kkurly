package com.ezen.springboard.VO;

import java.sql.Date;

public class CateVO {
	private int cdNo;
	private String cd;
	private String pCd;
	private String cdNm;
	private String cdGroup;
	public int getCdNo() {
		return cdNo;
	}
	public void setCdNo(int cdNo) {
		this.cdNo = cdNo;
	}
	public String getCd() {
		return cd;
	}
	public void setCd(String cd) {
		this.cd = cd;
	}
	public String getpCd() {
		return pCd;
	}
	public void setpCd(String pCd) {
		this.pCd = pCd;
	}
	public String getCdNm() {
		return cdNm;
	}
	public void setCdNm(String cdNm) {
		this.cdNm = cdNm;
	}
	public String getCdGroup() {
		return cdGroup;
	}
	public void setCdGroup(String cdGroup) {
		this.cdGroup = cdGroup;
	}
	public String getUseYn() {
		return useYn;
	}
	public void setUseYn(String useYn) {
		this.useYn = useYn;
	}
	private String useYn;
	@Override
	public String toString() {
		return "CateVO [cdNo=" + cdNo + ", cd=" + cd + ", pCd=" + pCd + ", cdNm=" + cdNm + ", cdGroup=" + cdGroup
				+ ", useYn=" + useYn + "]";
	}

}