package dao;

import java.util.List;


import vo.RegItemVo;

public interface RegItemDao {
    List<RegItemVo> selectList();

	List<RegItemVo> selectOneReg(int reg_idx);

	List<RegItemVo> updateIncBiddingPoint(int bidding_point);
	
	List<RegItemVo> updateIncBiddingPointButton(int bidding_point_button);

	int getLatestPrice();

	RegItemVo selectOneRegItem(int reg_idx);
}