package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import vo.ItemVo;

public class ItemDao {
	
	@Autowired
	SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public List<ItemVo> selectList() {

		return sqlSession.selectList("item.item_list");
	}

	public List<ItemVo> selectListFromCategory(String category) {

		return sqlSession.selectList("item.item_list_category", category);
	}

	public List<ItemVo> selectListFromGrade(String grade) {

		return sqlSession.selectList("item.item_list_grade", grade);
	}

	public List<ItemVo> selectList(Map<String, Object> map) {

		return sqlSession.selectList("item.item_list_condition" , map);
	}

	public List<ItemVo> selectListSearch(Map<String, String> map) {

		return sqlSession.selectList("item.item_list_search", map);
	}//end:selectList(map)
	
}