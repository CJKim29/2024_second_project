package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import vo.MemberVo;

// MemberDao를 재정의한 객체
public class MemberDaoImpl implements MemberDao{
	
	// mybatis
	SqlSession sqlSession;  // SqlSessionTemplate의 interface

	// setter injection을 위한 setter 만들기
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	// 전체조회
	@Override
	public List<MemberVo> selectList() {
		// TODO Auto-generated method stub
		
		return sqlSession.selectList("member.member_list");
	}

	// mem_idx에 해당되는 1건의 정보 얻어오기
	public MemberVo selectOne(int mem_idx) {

		return sqlSession.selectOne("member.member_one_idx", mem_idx);
	}
	
	
	// mem_id 에 해당되는 1건의 정보 얻어오기
	public MemberVo selectOne(String mem_id) {

		return sqlSession.selectOne("member.member_one_id", mem_id);
	}
	
	// mem_id 에 해당되는 1건의 정보 얻어오기
	@Override
	public MemberVo selectOne_nickname(String mem_nickname) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("member.member_one_nickname", mem_nickname);
	}

	// 회원가입
	public int insert(MemberVo vo) {
		
		return sqlSession.insert("member.member_insert", vo);

	}//end:insert()

	// 회원 탈퇴 - 삭제
	public int delete(int mem_idx) {
		
		return sqlSession.delete("member.member_delete", mem_idx);

	}//end:delete()

	// 회원 정보 수정
	public int update(MemberVo vo) {
		
		return sqlSession.update("member.member_update", vo);

	}//end:update()

	// 프로필 업로드(파일 업로드 기능)
	@Override
	public int update_filename(MemberVo vo) {
		// TODO Auto-generated method stub
		return sqlSession.update("member.member_update_filename", vo);
	}


	

}
