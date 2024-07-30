package vo;

public class TransactionVo {

	int		idx;
	String	mem_id;
	int		inc_point;
	int		dec_point;
	
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getInc_point() {
		return inc_point;
	}
	public void setInc_point(int inc_point) {
		this.inc_point = inc_point;
	}
	public int getDec_point() {
		return dec_point;
	}
	public void setDec_point(int dec_point) {
		this.dec_point = dec_point;
	}
}