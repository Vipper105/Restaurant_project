package tp.kits3.livedinner.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.xerces.internal.impl.xpath.regex.REUtil;

import tp.kits3.livedinner.DAO.CategoryDAO;
import tp.kits3.livedinner.VO.Category;

@WebServlet("/category/list")
public class CategoryServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.getAttribute("menuName");
		
		CategoryDAO categoryDAO = new CategoryDAO();
		List<Category> list = categoryDAO.findAll();
		
		if(list.size()==0) {
			System.out.println("Have no entries");
		}	

		String divList = "<div class='ctgList'>";
		
		for(Category ct:list) {
//			divList+="<p><a href='update?ctgid="+ct.getCtgid()+"'>"+ct.toString()+"</a></p>";
			// Chuyển trang
			divList+="<p><a href='update?ctgid="+ct.getCtgid()+"'>" + ct.toString() + "</a></p>";
		}
		
		divList += "</div>";
		response.setContentType("text/html;charset=UTF-8");
		response.getWriter().append(divList);

	}
}