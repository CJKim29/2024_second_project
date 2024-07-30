package dao;

import java.util.List;

import vo.ChatPageVo;

public interface ChatPageDao {

	
	List<ChatPageVo> selectList();
	
	ChatPageVo selectOne(int mem_idx);

	int insert(ChatPageVo vo);
	
}