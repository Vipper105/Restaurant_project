package tp.kits3.livedinner.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tp.kits3.livedinner.DAO.MenuDao;
import tp.kits3.livedinner.VO.Menu;

/**
 * Servlet implementation class HomePageServlet
 */

//  
@WebServlet("")
public class HomePageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	public HomePageServlet() {
		super();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		String prefix = "/WEB-INF/view/";
//		String postfix = ".jsp";
		MenuDao menuDao = new MenuDao();
		List<Menu> listMenu = menuDao.findAllMenu();
//		for(Menu menu : listMenu) {
//			System.out.println("menu " + menu.getMuname());
//		}
		request.setAttribute("listMenu", listMenu);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/view/index.jsp");
		requestDispatcher.forward(request, response);

//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
