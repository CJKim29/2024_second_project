package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import vo.MemberVo;
import vo.TransactionVo;

public class TransactionDao {
	
	SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public List<TransactionVo> selectListTran() {

		return sqlSession.selectList("transaction.transaction_list");
	}

	/*
	 * public List<MemberVo> updateIncPoint(int charge_point, int mem_idx) {
	 * 
	 * return sqlSession.update("transaction.updateInc_point", charge_point,
	 * mem_idx); }
	 */
	public int updateIncPoint(int charge_point, int mem_idx) {
	    Map<String, Object> params = new HashMap<>();
	    params.put("charge_point", charge_point);
	    params.put("mem_idx", mem_idx);

	    return sqlSession.update("transaction.updateInc_point", params);
	}
	
	public int transaction(int transaction_point, int mem_idx) {
	    Map<String, Object> params = new HashMap<>();
	    params.put("transaction_point", transaction_point);
	    params.put("mem_idx", mem_idx);

	    return sqlSession.update("transaction.transaction_point", params);
	}

	public List<TransactionVo> transactionAuction(int transaction_point) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("transaction.transaction_point", transaction_point);
	}

	public MemberVo selectMember(int mem_idx) {
	    return sqlSession.selectOne("member.member_one_idx", mem_idx);
	}
}