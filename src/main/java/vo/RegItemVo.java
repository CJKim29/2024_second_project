package vo;

public class RegItemVo {

	int		reg_idx;
	String	filename;
	String	reg_name;
	int		reg_price;
	int		auction_price;
	String	reg_date;
	
	public int getReg_idx() {
		return reg_idx;
	}
	public void setReg_idx(int reg_idx) {
		this.reg_idx = reg_idx;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getReg_name() {
		return reg_name;
	}
	public void setReg_name(String reg_name) {
		this.reg_name = reg_name;
	}
	public int getReg_price() {
		return reg_price;
	}
	public void setReg_price(int reg_price) {
		this.reg_price = reg_price;
	}
	public int getAuction_price() {
		return auction_price;
	}
	public void setAuction_price(int auction_price) {
		this.auction_price = auction_price;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
}