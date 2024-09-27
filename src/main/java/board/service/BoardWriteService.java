package board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.control.CommandProcess;

import board.bean.BoardDTO;
import board.dao.BoardDAO;
import member.bean.MemberDTO;

public class BoardWriteService implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		String subject = request.getParameter("subject");
		String content = request.getParameter("content"); //수정은 seq를 가지고 온다. 

		HttpSession session = request.getSession();
		
		MemberDTO memberDTO = (MemberDTO) session.getAttribute("memberDTO");
		String email = (String) session.getAttribute("memberEmail");
		
		BoardDTO boardDTO = new BoardDTO();
		boardDTO.setId(memberDTO.getId());  // 반드시 id 값을 넣어주세요
		boardDTO.setEmail(email);
		boardDTO.setSubject(subject);
		boardDTO.setContent(content);

		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.boardWrite(boardDTO);
		/*
		 * boardMapper.boardWrite(boardDTO); Map<String, String> map = new HashMap<>();
		 * map.put("id", id); map.put("email", email); map.put("subject", subject);
		 * map.put("content", content);
		 * 
		 * id = "dd";
		 * 
		 * BoardDAO boardDAO = BoardDAO.getInstance(); boardDAO.boardWrite(map);
		 */
		
		//System.out.println(test);
		return "none";
	}

}
