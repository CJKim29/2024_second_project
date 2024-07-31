package dao;

import java.util.List;
import java.util.Map;

import vo.RegItemVo;

public interface RegItemDao {
    List<RegItemVo> selectList();
    List<RegItemVo> selectList(Map<String, Object> map);

	List<RegItemVo> selectOneReg(int reg_idx);

	int updateIncBiddingPoint(int bidding_point, int reg_idx);
	
	List<RegItemVo> updateIncBiddingPointButton(int bidding_point_button);

	int getLatestPrice();

	RegItemVo selectOneRegItem(int reg_idx);

	int delete(int reg_idx);
	int selectRowTotal();
	
	List<RegItemVo> selectListFromCategory(String category);
	List<RegItemVo> selectListFromGrade(String grade);
	List<RegItemVo> selectListCondition(Map<String, Object> map);
	List<RegItemVo> selectListSearch(Map<String, String> map);

}