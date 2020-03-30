package com.dbal.app;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dbal.insa.test.TestVO;

@Controller
public class TestController {

	@RequestMapping("test.do")
	public @ResponseBody String test(TestVO vo) {
		System.out.println(vo);
		return "";
	}
}
