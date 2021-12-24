package com.dogether.controller.mypage;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dogether.domain.BoardVO;
import com.dogether.domain.Board_LikeVO;
import com.dogether.domain.Board_ReplyVO;
import com.dogether.domain.MemberVO;
import com.dogether.service.BoardService;
import com.dogether.service.MemberService;
import com.dogether.service.TestServiceImpl;

@Controller
@RequestMapping("userMyPage")
public class UserMyPageController {

	@Autowired
	private MemberService memberService;
	@Autowired
	private BoardService boardService;
	@Autowired
	public TestServiceImpl testService;

	// 마이페이지 메인화면
	@RequestMapping("myPage.do")
	public String myPage(String memberID, Model m, HttpSession session, Board_LikeVO vo) {
		String sessionok = (String) session.getAttribute("username");
		if (sessionok == null) {
			m.addAttribute("msg", "로그인이 필요한 서비스입니다.");
			return "redirect";
		}
		memberID = session.getAttribute("username").toString();
		MemberVO result = memberService.getMemberInfo(memberID);// 멤버정보 불러오기
		List<BoardVO> result2 = memberService.myBoardList(memberID);// 내 게시글 목록 불러오기
		List<Board_ReplyVO> reply_list = boardService.getReplyList();// 댓글 목록 가져오기
		vo.setLiker(session.getAttribute("username").toString().trim());
		List<Board_LikeVO> like_list = boardService.getLikeList(vo);
		if (result2.size() == 0) {
			m.addAttribute("nullCheck", "작성한 게시글이 존재하지 않습니다.");
		}

		m.addAttribute("member", result);
		m.addAttribute("list", result2);
		m.addAttribute("reply_list", reply_list);
		m.addAttribute("like_list", like_list);

		return "userMyPage/myPage";
	}

	// 포인트 결제
	@PostMapping("paypoint.do")
	@ResponseBody
	public String payPoint(String memberID, int price) {
		System.out.println("포인트 충전을 시작합니다.");
		memberService.updatePoint(memberID, price);
		return "포인트 충전 완료!!!";
	}

	// 좋아요 업데이트
	@GetMapping(value = "updateLike.do", produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String updateBoardLike(Board_LikeVO vo) {
		int result = 0;
		// 이미 좋아요에서 좋아요를 취소할시..
		if (vo.getLikeY().equals("Y")) {
			System.out.println(vo.getBoard_like_no());
			System.out.println();
			result = boardService.deleteLike(vo);

			// 좋아요를 안한상태에서 좋아요를 눌렀을 때,
		} else if (vo.getLikeY().equals("N")) {
			System.out.println(vo.getBoard_like_no());
			System.out.println();
			result = boardService.insertLike(vo);
		}

		return Integer.toString(result);
	}

	// 댓글 등록
	@PostMapping(value = "reply.do", produces = "application/text; charset=UTF-8")
	@ResponseBody
	public void insert(Board_ReplyVO vo, HttpSession session) {
		System.out.println(vo.getBoardID());
		System.out.println(vo.getReply());
		vo.setReplyer(session.getAttribute("username").toString().trim());

		boardService.insertReply(vo);
	}

	// 아이디 중복확인
	@GetMapping(value = "idCheck.do", produces = "application/text; charset=UTF-8")
	@ResponseBody // ************************************* 비동기통신을 의미 ajax
	public String idCheck(MemberVO vo) {
		System.out.println("아이디체크-------------------------------------------------------------");
		MemberVO result = testService.idCheck_Login(vo);
		String message = "사용가능한 아이디입니다";
		if (result != null)
			return "중복된 아이디입니다";
		return message;
	}

	// 닉네임 중복확인
	@GetMapping(value = "nickNameCheck.do", produces = "application/text; charset=UTF-8")
	@ResponseBody // ************************************* 비동기통신을 의미 ajax
	public String nickNameCheck(MemberVO vo) {
		System.out.println("닉네임체크-------------------------------------------------------------");
		MemberVO result = testService.nickName_Check(vo);
		String message = "사용가능한 닉네임입니다";
		if (result != null)
			return "중복된 닉네임입니다";
		return message;
	}

	// 내 정보 수정하기
	@PostMapping(value = "updateMemberInfo.do", produces = "application/text; charset=UTF-8")
	public String userinsert(MemberVO vo) {
		int result = memberService.updateMemberInfo(vo);
		System.out.println("내정보 수정 완료!");
		return "redirect:myPage.do";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
