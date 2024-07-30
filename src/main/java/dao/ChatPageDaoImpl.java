package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import vo.ChatPageVo;

public class ChatPageDaoImpl implements ChatPageDao {

	@Autowired
	SqlSession sqlSession;
	
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<ChatPageVo> selectList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("chat_page.chat_page_list");
	}
	
	@Override
	public ChatPageVo selectOne(int mem_idx) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("chat_page.chat_page_onelist", mem_idx);
	}

	@Override
	public int insert(ChatPageVo vo) {
		// TODO Auto-generated method stub
		return sqlSession.insert("chat_page.chat_insert", vo);
	}

}