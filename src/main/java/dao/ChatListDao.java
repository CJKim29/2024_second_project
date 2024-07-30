package dao;

import java.util.List;

import vo.ChatListVo;

public interface ChatListDao {

	List<ChatListVo> selectList();

}