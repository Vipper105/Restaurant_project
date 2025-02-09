package tp.kits3.livedinner.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/bookservlet")
public class BookServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		// TODO Auto-generated method stub
				try {
					Class.forName("org.mariadb.jdbc.Driver");
					Connection conn=DriverManager.getConnection("jdbc:mariadb://localhost:3306/restaurant","root","123123");
					
					// ready SQL
//					Statement vs PerpareStathment
					Statement stmt=conn.createStatement();
					String sql="select * from book";
					// Get result from DB
					stmt.execute(sql);   // when use? just retrieve (select) , return về boolean
					//boolean rsb=stmt.execute(sql);   // check is connect
					ResultSet rs=stmt.executeQuery(sql);  //   executeQuery need get data
					//stmt.executeQuery(sql);  // when use? update,insert, return về ResultSet
					
					while(rs.next()) {
						Integer bkid=rs.getInt("tagid");
						String bkname=rs.getString("tgname");
						String bkmail=rs.getString("bkemail");
						String bkphone=rs.getString("bkphone");
						Date bktime=rs.getDate("bktime");
						Integer bknum=rs.getInt("bknum");
						String booking=rs.getString("booking");
						String bkmemo=rs.getString("bkmemo");
						System.out.printf("id: %s | name: %s | mail: %s | phone: %s | time: %s | num: %s | booking: %s | time: %s"
								+ "| num: %s | booking: %s | memo\n"
								,bkid,bkname,bkmail,bkphone,bktime,bknum,booking,bkmemo);
						
					}
					
					
//					System.out.println("Connect DB successfully");
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				} catch (SQLException e) {
					e.printStackTrace();
				}
	}
	
	

}
