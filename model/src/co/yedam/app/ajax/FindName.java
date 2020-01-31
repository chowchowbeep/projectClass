package co.yedam.app.ajax;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FindName
 */
@WebServlet("/FindName.do")
public class FindName extends HttpServlet {
   private static final long serialVersionUID = 1L;
       

    public FindName() {
        super();
        // TODO Auto-generated constructor stub
    }


   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      response.setContentType("text/html; charset=UTF-8"); //한글이 안깨지도록
      // 파라미터 받기 (null인지 아닌지 체크해야함 아니면 nullPointerror뜸)
      String no = request.getParameter("no");
      // 이름 찾기
      String name = "";
      // 1: 홍길동 2: 김기자 //1이면 홍길동, 2면 김기자 출력
      //String 값과 Integer 값이기 때문에 ==을 사용할 수 없음 .equals나 parseInt를 사용해야함
      if (no.equals("1")) { //==Integer.parseInt(no) == 1
         name = "홍길동";
         
      }else {
         name="김기자";
      }
      //이름 출력
      response.getWriter().append(name);
   }

   
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      doGet(request, response);
   }

}