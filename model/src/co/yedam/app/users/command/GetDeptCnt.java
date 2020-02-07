package co.yedam.app.users.command;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.ajax.ChartDAO;
import co.yedam.app.common.Command;
import net.sf.json.JSONArray;

public class GetDeptCnt implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//ChartDAO 
		ChartDAO dao = new ChartDAO();
		List<Map<String, Object>> list = dao.getDeptCnt();
		//JSON STRING으로 변환
		String result = JSONArray.fromObject(list).toString();
		System.out.println(result);
		return "ajax:"+ result;
	}

}
