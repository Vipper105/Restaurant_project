package tp.kits3.livedinner.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tp.kits3.livedinner.DAO.ContactDAO;
import tp.kits3.livedinner.VO.Contact;

@WebServlet("/contact/list")
public class ContactListServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		ContactDAO contactDAO = new ContactDAO();
		List<Contact> listContact = contactDAO.findAllContact();

		if (listContact.size() == 0) {
			System.out.println("We have no entries");
		}

		String divList = "<div class='contactList'>";

		for (Contact con : listContact) {
//			divList+="<p><a href='update?ctgid="+ct.getCtgid()+"'>" + ct.toString() + "</a></p>";
			divList += "<p><a href='update?coid="+con.getCoid()+"'>" + con.toString() + "</a></p>";
		}

		resp.setContentType("text/html;charset:UTF-8");
		resp.getWriter().append(divList);

	}

}
