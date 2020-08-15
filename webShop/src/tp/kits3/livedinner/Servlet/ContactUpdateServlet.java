package tp.kits3.livedinner.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tp.kits3.livedinner.DAO.CategoryDAO;
import tp.kits3.livedinner.DAO.ContactDAO;
import tp.kits3.livedinner.VO.Category;
import tp.kits3.livedinner.VO.Contact;

/**
 * Servlet implementation class ContactUpdateServlet
 */
@WebServlet("/contact/update")
public class ContactUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ContactUpdateServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int contactid = Integer.parseInt(request.getParameter("coid"));
		ContactDAO contactDAO = new ContactDAO();
		
		Contact contact = contactDAO.getOneContact(contactid);

		if (contact == null) {
			System.out.println("have no contact");
		} else {

			String form = "<div>";
			form += "<form method='post' action='update'>";
			form += "Contact.coid <input type='text' name='coid' value='" + contact.getCoid() + "' readonly /><br/><br/>";
			form += "Contact.coname <input type='text' name='coname' value='" + contact.getConame() + "' /><br/><br/>";
			form += "Contact.priphone <input type='text' name='priphone' value='" + contact.getPriphone() + "' /><br/><br/>";
			form += "Contact.subphone <input type='text' name='subphone' value='" + contact.getSubphone() + "' /><br/><br/>";
			form += "Contact.email <input type='text' name='email' value='" + contact.getEmail() + "' /><br/><br/>";
			form += "Contact.address <input type='text' name='address' value='" + contact.getAddress() + "' /><br/><br/>";
			form += "Contact.unused <input type='text' name='unused' value='" + contact.getUnused() + "' /><br/><br/>";
			form += "Contact.opening <input type='text' name='opening' value='" + contact.getOpening() + "' /><br/><br/>";
			form += "Contact.weekday <input type='text' name='weekday' value='" + contact.getWeekday() + "' /><br/><br/>";
			form += "Contact.weekend <input type='text' name='weekend' value='" + contact.getWeekend() + "' /><br/><br/>";
			form += "Contact.aboutus <input type='text' name='aboutus' value='" + contact.getAboutus() + "' /><br/><br/>";
			form += "Contact.latitude <input type='text' name='latitude' value='" + contact.getLatitude() + "' /><br/><br/>";
			form += "Contact.logitude <input type='text' name='logitude' value='" + contact.getLogitude() + "' /><br/><br/>";
		
			form += "<input type='submit' value='Update' />";
			form += "</form></div>";

			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().append(form);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ContactDAO contactDAO=new ContactDAO();
		Contact contact=new Contact();
		
		contact.setCoid(Integer.parseInt(request.getParameter("coid")));
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
		
		contactDAO.update(contact);
		
		response.sendRedirect(request.getContextPath()+"/contact/list");
		
		
	}

}
