package dao;

import java.util.List;

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
	public List<RegItemVo> selectOneReg(int reg_idx) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("regitem.reg_item_idx_list", reg_idx);
	}
	@Override
	public List<RegItemVo> updateIncBiddingPoint(int bidding_point) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("regitem.bidding_point", bidding_point);
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

}
