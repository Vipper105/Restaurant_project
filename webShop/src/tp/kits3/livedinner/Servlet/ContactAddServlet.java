package tp.kits3.livedinner.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tp.kits3.livedinner.DAO.ContactDAO;
import tp.kits3.livedinner.VO.Contact;

@WebServlet("/contact/add")
public class ContactAddServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String form = "<div>";
		form += "<form method='post' action='add'>";
		form += "Contact.coname <input type='text' name='coname' required />";
		form += "Contact.priphone <input type='text' name='priphone' required />";
		form += "Contact.email <input type='text' name='email' required />";
		form += "Contact.address <input type='text' name='address' required />";
		form += "Contact.unused <input type='text' name='unused' required />";
		form += "Contact.opening <input type='text' name='opening' required />";
		form += "Contact.weekday <input type='text' name='weekday' required />";
		form += "Contact.aboutus <input type='text' name='aboutus' required />";
		form += "Contact.latitude <input type='text' name='latitude' required />";
		form += "Contact.logitude <input type='text' name='logitude' required />";

		form += "<input type='submit' value='Add contact' />";
		form += "</form></div>";

		resp.setContentType("text/html;charset=UTF-8");
		resp.getWriter().append(form);

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		ContactDAO contactDAO = new ContactDAO();

		Contact contact = new Contact();
		contact.setConame(request.getParameter("coname"));
		contact.setPriphone(request.getParameter("priphone"));
		contact.setEmail(request.getParameter("email"));
		contact.setAddress(request.getParameter("address"));

		boolean unused;
		if (request.getParameter("unused") == "1") {
			unused = true;
		} else {
			unused = false;
		}
		contact.setUnused(unused);
		contact.setOpening(request.getParameter("opening"));
		contact.setWeekday(request.getParameter("weekday"));
		contact.setAboutus(request.getParameter("aboutus"));

		contact.setLatitude(Double.parseDouble(request.getParameter("latitude")));
		contact.setLogitude(Double.parseDouble(request.getParameter("logitude")));

		contactDAO.addContact(contact);

	}

}
