package tp.kits3.livedinner.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tp.kits3.livedinner.DAO.MenuDao;
import tp.kits3.livedinner.VO.Menu;

@WebServlet("/menu/list")
public class MenuListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private MenuDao menuDao;

	public MenuListServlet() {
		super();
		//
		this.menuDao = new MenuDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ====================================== Ví dụ JSON  =========================
		/*
		 * Menu menu = new Menu(); menu.setMuid(1); menu.setCtgid(1); Gson gson = new
		 * Gson();
		 * 
		 * String json = gson.toJson(menu); // Object to String //Category
		 * obj=gson.fromJson(json, Category.class); // String to Object
		 * response.getWriter().append(json);
		 * 
		 */

		// ==================================== // Ví dụ JSON ======================
		response.setContentType("text/html;charset=UTF-8");
		
		// *****
		List<Menu> menuList = menuDao.findAll();
		request.setAttribute("MenuList", menuList);

		//ServletContext ctx = getServletContext();

		//ctx.setAttribute("menu", new Menu());

		// RequestDispatcher dispatcher=request.getRequestDispatcher("/category/list");
		// // mapped to servlet
		
		// servlet let, JSP
		// brower URL nothing change
		request.setAttribute("menuName", new Menu());
		
		String prefix = "/WEB-INF/view/";
		String postfix = ".jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(prefix + "menuList" + postfix);
		dispatcher.forward(request, response);

//		response.getWriter().append("");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
