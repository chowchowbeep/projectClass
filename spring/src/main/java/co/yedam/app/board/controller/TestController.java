package co.yedam.app.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import co.yedam.app.board.BoardDTO;
import co.yedam.app.board.service.impl.BoardService;

@Controller //빈등록, 디스패쳐 서블릿이 호출하도록 커맨드화(컨트롤화)
public class TestController {
	
	@Autowired 
	BoardService boardService;
	
	//하나의 값만 primitive(원시) string, int....
	@RequestMapping("/cont1")
	//public String cont1(@RequestParam String name) { //name 파라미터를 필수로 받는경우
	public String cont1(@RequestParam
	(
	required=false, //name파라미터가 필수가 아니어도 됨
	defaultValue = "syoon", 
	name="username" //파라미터명을 변수인 name대신 username으로 사용
	// => http://localhost:9090/app/cont1?username=dd
	) 
	String name) 
	{ 
		//@RequestParam == request.getPrameter("name") //파라미터 속성명, 변수명이 일치해야 함
		System.out.println("파라미터값은 "+name);
		return "redirect:/";
	}
	
	
	
	//커맨드 객체
	@RequestMapping(value="/cont2", method=RequestMethod.POST)
	//http://localhost:9090/app/cont2?poster=hong //POST일 경우 405에러
	public String cont2(BoardDTO dto) 
	{ //파라미터명과 dto의 필드명이 동일해야 함
		System.out.println("파라미터값은 "+dto);
		//http://localhost:9090/app/cont2?poster=chorong&subject=title
		//=>파라미터값은 BoardDTO [no=0, poster=chorong, subject=title, contents=null, lastpost=null, views=0, file=null, image=null, page=0, start=0, end=0, lastPage=0]
		return "redirect:/";
	}
	
	//경로변수
	@RequestMapping(value="/cont3/{id}/{username}")
	//http://localhost:9090/app/cont3/choid/choname
	//http://localhost:9090/app/cont3?id=choid&username=choname과 동일
	public String cont3(
			@PathVariable (name="id")String userid, 
			@PathVariable String username
			) 
	{ 
		System.out.println("파라미터값은 "+userid+" and "+username);
		return "redirect:/";
	}
	
	
	
	
	//ajax응답 ( 자바객체 -> json String )
	//Autowired어노테이션은 상단에 입력함
	@RequestMapping(value="/cont4")
	@ResponseBody //자바객체 -> json String 변환 어노테이션
	public List<BoardDTO> cont4(BoardDTO dto)
	
	{ 
		List<BoardDTO> list = boardService.selectList(dto);
		return list;
	}
	
	@RequestMapping(value="/board1")
	@ResponseBody //자바객체 -> json String 변환 어노테이션
	public BoardDTO boardOne(@RequestParam int no)
	
	{ 
		BoardDTO dto = boardService.boardOne(no);
		return dto;
	}
	
	
	
	
	
}
