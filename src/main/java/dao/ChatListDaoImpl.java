package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import vo.ChatListVo;

public class ChatListDaoImpl implements ChatListDao {

	@Autowired
	SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<ChatListVo> selectList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("chat_page.chat_list");
	}

}