//package tp.kits3.livedinner.Servlet;
//
//import java.io.IOException;
//import java.util.List;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import tp.kits3.livedinner.DAO.MenuDao;
//import tp.kits3.livedinner.VO.Menu;
//
////  ai gọi thằng này vậy :)) ???
//@WebServlet("/abc")
//public class GalleryShowServlet extends HttpServlet {
//
//	private static final long serialVersionUID = 1L;
//
//	@Override
//	protected void doGet(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//
//		response.setContentType("text/html;charset=UTF-8");
//		MenuDao menuDao = new MenuDao();
//		List<Menu> listMenu = menuDao.findAllMenu();
//		request.setAttribute("listMenu", listMenu);
//		super.doGet(request, response);
//	}
//
//	@Override
//	protected void doPost(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//
//		super.doPost(request, response);
//	}
//}
