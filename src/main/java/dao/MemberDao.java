package dao;

import java.util.List;

import vo.MemberVo;

public interface MemberDao {

	// 전체조회
	List<MemberVo> selectList();
	
	// mem_idx에 해당되는 1건의 정보 얻어오기
	public MemberVo selectOne(int mem_idx);
	
	// mem_id에 해당되는 1건의 정보 얻어오기
	public MemberVo selectOne(String mem_id);
	
	public MemberVo selectOne_nickname(String mem_nickname);

	public int insert(MemberVo vo);

	public int delete(int mem_idx);

	public int update(MemberVo vo);

	// 프로필 사진 업로드 기능(파일 업로드)
	int update_filename(MemberVo vo);
	

}
