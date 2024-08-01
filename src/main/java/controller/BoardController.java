package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import dao.BoardDao;
import util.MyCommon;
import util.Paging;
import vo.BoardVo;
import vo.MemberVo;

@Controller
@RequestMapping("/board/")
public class BoardController {

	public BoardController() {
		// TODO Auto-generated constructor stub
		System.out.println("--BoardController()--");
	}
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	BoardDao board_dao;
	
	
	@RequestMapping("list.do")
	public String list(	
						@RequestParam(name ="page", defaultValue = "1") int nowPage,
						Model model) {
		
		// 세션에 기록되어있는 show 삭제 (view.do에서 조회수 증가시 refresh인가 증가방지)
		session.removeAttribute("show");
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		int start   = (nowPage - 1) * MyCommon.Board.BLOCK_LIST + 1;
		int end		= start + MyCommon.Board.BLOCK_LIST - 1;
		
		map.put("start", start);
		map.put("end", end);
		
		// 게시판 목록 가져오기
		List<BoardVo> list = board_dao.selectList(map);
		//System.out.println(list.size());
		
		// 전체 게시물 수
		int rowTotal = board_dao.selectRowTotal(map);
		
		// pageMenu 생성하기
		String pageMenu = Paging.getPaging("list.do",
											nowPage,
											rowTotal,
											MyCommon.Board.BLOCK_LIST,
											MyCommon.Board.BLOCK_PAGE
											);
		
		// DS가 전달해주 Model을 통해서 데이터를 넣는다
		// DS는 model에 저장된 데이터를 request binding 시킨다
		model.addAttribute("list", list);
		model.addAttribute("pageMenu", pageMenu);
		
		return "board/board_list";
	}
	
	// 새 글 쓰기 폼 띄우기
	@RequestMapping("insert_form.do")
	public String insert_form() {
		
		return "board/board_insert_form";
	}
	
	// /board/insert.do?b_subject=제목&b_content=내용
	@RequestMapping("insert.do")
	public String insert(BoardVo vo,RedirectAttributes ra) {
		
		MemberVo user = (MemberVo) session.getAttribute("user");
		
		if(user == null) {
			ra.addAttribute("reason", "session_timeout");
			
			return "redirect:../member/login_form.do";
		}
		
		// 사용자정보 vo에 등록
		vo.setMem_idx(user.getMem_idx());
		vo.setMem_name(user.getMem_name());
		
		// 작성자 IP
		String b_ip = request.getRemoteAddr();
		vo.setB_ip(b_ip);
		
		// \x -> <br>
		String b_content = vo.getB_content().replaceAll("\n", "<br>");
		vo.setB_content(b_content);
		
		// DB insert
		int res = board_dao.insert(vo);
		
		return "redirect:list.do";
	}
	
	// 상세보기
	// /board/view.do?b_idx=5
	@RequestMapping("view.do")
	public String view(int b_idx, Model model) {
		
		// b_idx에 해당되는 게시물 1건 얻어오기
		BoardVo vo = board_dao.selectOne(b_idx);
		
		// 안봤으면 (refresh에 의한 조회수 증가 차단)
		if(session.getAttribute("show") == null) {
			// 조회수 증가
			int res = board_dao.update_readhit(b_idx);
			
			session.setAttribute("show", true);
		}
		
		// 결과적으로 request binding
		model.addAttribute("vo", vo);
		
		return "board/board_view";
	}
	
	// 삭제
	// /board/delete.do?b_idx=9
	@RequestMapping("delete.do")
	public String delete(int b_idx) {
		// 삭제처리 : b_use = 'n' 변경
		int res = board_dao.update_delete(b_idx);
		
		return "redirect:list.do";
	}
	
	// 수정하기 폼 띄우기
	// /board/modify_form.do?b_idx=9
	@RequestMapping("modify_form.do")
	public String modify_form(int b_idx, Model model) {
		
		// 수정할 원본 데이터
		BoardVo vo = board_dao.selectOne(b_idx);
		
		// <br> -> \n로 변경
		String b_content = vo.getB_content().replaceAll("<br>", "\n");
		vo.setB_content(b_content);
		
		model.addAttribute("vo", vo);
		
		return "board/board_modify_form";
	}
	
	 @RequestMapping("modify.do")
	    public String modify(BoardVo vo, RedirectAttributes ra) {
	        
	        MemberVo user = (MemberVo) session.getAttribute("user");
	        
	        if(user == null) {
	            
	            ra.addAttribute("reason", "session_timeout");
	            
	            return "redirect:../member/login_form.do";
	        }
	        
	        //vo.setMem_idx(user.getMem_idx());
	        //vo.setMem_name(user.getMem_name());
	        
	        // 작성자 IP
	        String b_ip = request.getRemoteAddr();
	        vo.setB_ip(b_ip);
	        
	        String b_content = vo.getB_content().replaceAll("\n", "<br>");
	        vo.setB_content(b_content);
	        
	        int res = board_dao.update(vo);
	        
	        ra.addAttribute("b_idx", vo.getB_idx());
	        
	        return "redirect:view.do";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
