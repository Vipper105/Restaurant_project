package tp.kits3.livedinner.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tp.kits3.livedinner.DAO.CategoryDAO;
import tp.kits3.livedinner.DAO.ICategoryDAO;
import tp.kits3.livedinner.DAO.I_Restaurant;
import tp.kits3.livedinner.VO.Category;

@WebServlet("/category/add")
public class CategoryAddServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO show form to insert

		String form="<div>";
		form+="<form method='post' action='add'>";
		form+="Category.name <input type='text' name='ctgname' required />";
		form+="Category.service <input type='text' name='service' required />";
		form+="<input type='submit' value='Add' />";
		form+="</form></div>";
		
		resp.setContentType("text/html;charset=UTF-8");
		resp.getWriter().append(form);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO : save to DB
		ICategoryDAO<Category> categoryDAO=new CategoryDAO();
		//CategoryDAO categoryDAO=new CategoryDAO();
		Category category=new Category();
		category.setCtname(req.getParameter("ctgname"));

		if(req.getParameter("service").length()==1) {
			category.setService(req.getParameter("service"));
			categoryDAO.add(category);
			
		}else {
			System.out.println("not valid data: must be a char");
		}
		
		
		doGet(req, resp);
	}
}
