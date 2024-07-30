package vo;

public class MessageVo {

	int		msd_idx;
	int		chat_idx;
	int		mem_idx;
	String	mem_name;
	String	mem_text;
	String	msg_time;
	
	public int getMsd_idx() {
		return msd_idx;
	}
	public void setMsd_idx(int msd_idx) {
		this.msd_idx = msd_idx;
	}
	public int getChat_idx() {
		return chat_idx;
	}
	public void setChat_idx(int chat_idx) {
		this.chat_idx = chat_idx;
	}
	public int getMem_idx() {
		return mem_idx;
	}
	public void setMem_idx(int mem_idx) {
		this.mem_idx = mem_idx;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_text() {
		return mem_text;
	}
	public void setMem_text(String mem_text) {
		this.mem_text = mem_text;
	}
	public String getMsg_time() {
		return msg_time;
	}
	public void setMsg_time(String msg_time) {
		this.msg_time = msg_time;
	}
}