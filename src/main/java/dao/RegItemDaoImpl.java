package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.RegItemVo;

@Repository("regitem_dao")
public class RegItemDaoImpl implements RegItemDao {

	@Autowired
	SqlSession sqlSession;
	
	
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	@Override
	public List<RegItemVo> selectList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("regitem.reg_item_list");
	}
	@Override
	public List<RegItemVo> selectList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("regitem.reg_item_page_list", map);
	}
	@Override
	public List<RegItemVo> selectOneReg(int reg_idx) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("regitem.reg_item_idx_list", reg_idx);
	}
	@Override
	public int updateIncBiddingPoint(int bidding_point, int reg_idx) {
        Map<String, Integer> params = new HashMap<>();
        params.put("bidding_point", bidding_point);
        params.put("reg_idx", reg_idx);
        return sqlSession.update("regitem.bidding_point", params);
    }
	@Override
	public List<RegItemVo> updateIncBiddingPointButton(int bidding_point_button) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("regitem.bidding_point_button", bidding_point_button);
	}
	@Override
	public int getLatestPrice() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("regitem.getLatestPrice");
	}
	@Override
	public RegItemVo selectOneRegItem(int reg_idx) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("regitem.selectOneRegItem", reg_idx);
	}
	@Override
	public int delete(int reg_idx) {
		// TODO Auto-generated method stub
		return sqlSession.delete("regitem.deleteRegItem", reg_idx);
	}
	@Override
	public int selectRowTotal() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("regitem.reg_item_row_total");
	}
	@Override
	public List<RegItemVo> selectListFromCategory(String category) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("regitem.reg_item_list_category", category);
	}
	@Override
	public List<RegItemVo> selectListFromGrade(String grade) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("regitem.reg_item_list_grade", grade);
	}
	@Override
	public List<RegItemVo> selectListCondition(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("regitem.regitem_list_condition" , map);
	}
	@Override
	public List<RegItemVo> selectListSearch(Map<String, String> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("regitem.regitem_list_search", map);
	}

}
