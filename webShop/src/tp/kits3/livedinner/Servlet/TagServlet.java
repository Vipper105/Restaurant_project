//package tp.kits3.livedinner.Servlet;
//
//import java.io.IOException;
//import java.util.List;
//
//import javax.print.attribute.standard.Severity;
//import javax.servlet.ServletContext;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import tp.kits3.livedinner.DAO.TagDAO;
//import tp.kits3.livedinner.VO.Tag;
//
///**
// * Servlet implementation class TagServlet
// */
//@WebServlet("/TagServlet")
//public class TagServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//
//	/**
//	 * @see HttpServlet#HttpServlet()
//	 */
//	public TagServlet() {
//		super();
//		// TODO Auto-generated constructor stub
//	}
//
//	/**
//	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
//	 *      response)
//	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		// javaweb/tag/insert
//		// uri[0]=javaweb
//		// uri[1]="tag"
//		// uri[2]="insert"
//		// TODO Auto-generated method stub
//		// Lấy thông tin từ khách hàng dùng uri hoặc queryString
//		// Dùng uri
//		ServletContext ctx=getServletContext();
//		ctx.getAttribute("menu");   // data is shared to all servlets
//		
//		
//		String[] uri = request.getRequestURI().split("/");
//		String command = uri[uri.length - 1]; // < - what command
//
//		// Dùng queryString
//		// String command=request.getParameter("cmd");
//		TagDAO dao=new TagDAO();
//		if("insert".equals(command)) {
//			Tag tag=new Tag();
//			String tgname=request.getParameter("tgname");
//			tag.setTgname(tgname);
//			dao.save(tag);
//			
//		}
//		
//		if ("list".equals(command)) {
//
//			dao = new TagDAO();
//			List<Tag> list = dao.findAll();
//
//			String table = "<table>";
//			// for or for-each
//			for (Tag t : list) {
//				int tid = t.getTagid();
//				String tname = t.getTgname();
//				table += "<tr><td>" + tid + "</td><td>" + tname + "</td></td>";
////			table +=t.toString();
//			}
//
//			table += "</table>";
//			response.getWriter().append("Served at: ").append(command);
//		}
//	}
//
//	public static void main(String[] args) {
//
//	}
//
//}
