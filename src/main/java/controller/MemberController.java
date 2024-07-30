package controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import dao.MemberDao;
import vo.MemberVo;

@Controller
@RequestMapping("/member/")
public class MemberController {
	
	// 생성자 만들어 질 때 dao injection(주입) 받겠다
	@Autowired
	MemberDao member_dao;		// context-3-dao 여기서 만들어짐(초기화)

	// 요청 시 마다 injection
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpSession session;

	@Autowired
	ServletContext application;		// 절대경로 구하기 위해 필요 <- 파일 업로드 기능 시 필요한 정보
	
	// 생성자 만들어지는 확인하기 위한 코드 굳이 만들 필요X
	public MemberController() {
		// TODO Auto-generated constructor stub
		System.out.println("--- MemberController() ---");
	}
	
	
	// 회원 전체 목록
	@RequestMapping("list.do")
	public String list(Model model) {
		//회원목록 가져오기
		List<MemberVo> list = member_dao.selectList();		// dao에 selectList 추가
		
		model.addAttribute("list", list);
		
		return "member/member_list";
	}
	
	// 회원가입 폼 띄우기
	@RequestMapping("insert_form.do")
	public String insert_form() {
		
		return "member/member_insert_form";
	}

	
	// 아이디 중복체크
	@RequestMapping(value="check_id.do", produces="application/json; charset=utf-8;")
	@ResponseBody
	public String check_id(String mem_id) {
		
		// mem_id에 해당 되는 유저정보 검색
		MemberVo vo = member_dao.selectOne(mem_id);
		// vo에 없다면 중복되는 id가 없다는 뜻
		boolean bResult = (vo==null);
		
		JSONObject json = new JSONObject();
		json.put("result", bResult);
		
		return json.toString();
	}
	
	
	// 닉네임 중복체크
	@RequestMapping(value="check_nickname.do", produces="application/json; charset=utf-8;")
	@ResponseBody
	public String check_nickname(String mem_nickname) {
		
		// mem_id에 해당 되는 유저정보 검색
		MemberVo vo = member_dao.selectOne_nickname(mem_nickname);
		// vo에 없다면 중복되는 id가 없다는 뜻
		boolean bResult = (vo==null);
		
		JSONObject json = new JSONObject();
		json.put("result", bResult);
		
		return json.toString();
	}
	
	// 회원가입하기 + 프로필 사진 등록(파일업로드 기능)
	@RequestMapping("insert.do")
	public String insert(MemberVo vo, RedirectAttributes ra) throws IllegalStateException, IOException {
		
		// 다른 파라미터는 MemberVo 써놓았으니까 spring이 알아서 해줄 것임
		// ip 구해서 vo에 넣기
		String mem_ip = request.getRemoteAddr();
		vo.setMem_ip(mem_ip);
		
		// 회원가입 정보 DB에 넣기
		int res = member_dao.insert(vo);		// dao에 insert 추가
		
		return "redirect:login_form.do";   // 회원 가입 후 로그인창으로 이동
	}
	
	// 로그인 폼 띄우기
	// class RequestMapping + metode RequestMapping => /member/ + login_form.do
	@RequestMapping("login_form.do")
	public String login_form() {
		
		return "member/member_login_form";
	}
	
	// 로그인
	@RequestMapping("login.do")						// redirect할 때 넘어가는 정보들을 DS에게 전달
	public String login(String mem_id, String mem_pwd, RedirectAttributes ra) {
		
		MemberVo user = member_dao.selectOne(mem_id);
		
		// id 틀렸을 경우
		if(user==null) {
			// RedirectAttributes => redirect 시 parameter로 이용된다.
			ra.addAttribute("reason", "fail_id");	// 아이디 틀렸다는 정보를 DS에 넘겨줌
			
			System.out.println("--fail_id--");
			
			return "redirect:login_form.do";		// 로그인 창으로 돌아가기
		}
		
		// 비번 틀린 경우
		if(user.getMem_pwd().equals(mem_pwd)==false) {
			// RedirectAttributes => redirect 시 parameter로 이용된다.
			ra.addAttribute("reason", "fail_pwd");
			ra.addAttribute("mem_id", mem_id);
			
			return "redirect:login_form.do";		// 로그인 창으로 돌아가기
		}
		
		// 로그인 처리 : 현재 로그인 된 객체 user의 정보를 session에 저장
		session.setAttribute("user", user);
		
		return "redirect:../member/list.do";
	}// end : login
	
	
	
	// 로그아웃
	@RequestMapping("logout.do")
	public String logout() {
		session.removeAttribute("user");
		return "redirect:../member/list.do";
	}
	
	
	// 회원 삭제
	// delete 할 때 넘어오는 것
	// /member/delete.do?mem_idx=3
	@RequestMapping("delete.do")
	public String delete(int mem_idx, RedirectAttributes ra) {
		
		MemberVo user = (MemberVo) session.getAttribute("user");
		
		// 로그인 삭제 작업을 하는 사람이 일반 유저일 경우
		if(user.getMem_grade().equals("일반")) {
			session.removeAttribute("user");
		}
		
		if(user.getMem_grade().equals("관리자") && user.getMem_idx() == mem_idx) {
			ra.addAttribute("reason", "not_admin_delete");
			return "redirect:list.do";
		}
		// 3. DB delete : delete from member where mem_idx
		int res = member_dao.delete(mem_idx);		// Dao가서 delete 메소드 만들기
	
		return "redirect:list.do";		// 삭제 후 메인화면으로 이동
	}
	
	// 회원 수정폼 띄우기
	// // /member/modify_form.do?mem_idx=2
	@RequestMapping("modify_form.do")
	public String modify_form(int mem_idx, Model model) {
		
		MemberVo vo = member_dao.selectOne(mem_idx);
		
		model.addAttribute("vo", vo);
		
		return "member/member_modify_form";
	}
	
	// 회원 수정하기(기본 정보들)
	@RequestMapping("modify.do")
	public String modify(MemberVo vo) {
		
		// ip받기
		String mem_ip = request.getRemoteAddr();
		vo.setMem_ip(mem_ip);
		
		// DB에 수정 값 넣기
		int res = member_dao.update(vo);	// Dao에 추가 -> DaoImpl에 추가 -> mapper에 sql문 추가
		
		MemberVo loginUser = (MemberVo) session.getAttribute("user");
		
		// 현재 수정 정보가 로그인한 유저일 경우에만 수정할 수 있게 처리
		if(loginUser.getMem_idx()==vo.getMem_idx()) {

			// 로그인 상태 정보
			MemberVo user = member_dao.selectOne(vo.getMem_idx());
			
			// session.removeAttribute("user"); -> 삭제
			// scope내에 저장 방식 Map 형식 key/value
			// 동일 key로 저장하면 수정 처리 됨 -> 삭제 안 해도 되는 이유
			session.setAttribute("user", user);
		}
		
		return "redirect:../member/list.do";		// 수정 후 메인화면으로 이동
	}
	
	
	// 회원 수정하기(프로필 이미지)
	@RequestMapping(value="photo_modify.do", produces="application/json; charset=utf-8;")
	@ResponseBody
	public String photo_modify(int mem_idx, @RequestParam MultipartFile photo) throws IllegalStateException, IOException {
		
		// 파일 업로드 처리
		String absPath = application.getRealPath("/resources/images/");  // 파일 절대경로, 상대경로
		String mem_filename = "no_file";
		
		
		if(!photo.isEmpty()) {
			
			// 업로드 된 파일 이름 얻어오기
			mem_filename = photo.getOriginalFilename();
			
			File f = new File(absPath, mem_filename);
			
			if(f.exists()) {	// 저장 경로에 동일한 파일이 존재하면 파일명 바꾸기
				// 원래 파일명 = 시간_원래파일명
				long tm = System.currentTimeMillis();
				mem_filename = String.format("%d_%s", tm, mem_filename);
				
				f = new File(absPath, mem_filename);
			}
			// 임시 파일 => 내가 지정한 위치로 복사
			photo.transferTo(f);  // 예외 처리 넘기기
			
		}
		// 업로드 된 파일 이름 저장
		//MemberVo vo.setMem_filename(mem_filename);
		
		// 이전에 있던 파일 삭제
		 MemberVo vo = member_dao.selectOne(mem_idx);
		 File delFile = new File(absPath, vo.getMem_filename());
		 delFile.delete();
		 
		 // update된 file 이름수정
		 vo.setMem_filename(mem_filename);	// 새로 업로드 된 파일 이름?
		 int res = member_dao.update_filename(vo);	//Dao에 추가 -> DaoImpl에 추가 -> mapper에 sql문 추가
		
		//변경화일명 JSON형식으로 반환
		// {"p_filename":"a.jpg"}
		JSONObject json = new JSONObject();
		json.put("mem_filename", mem_filename);
		
		return json.toString();
	}
	
	
}
