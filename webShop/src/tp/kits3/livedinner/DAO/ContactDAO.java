package tp.kits3.livedinner.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import tp.kits3.livedinner.VO.Category;
import tp.kits3.livedinner.VO.Contact;

public class ContactDAO {

	DataSource dataSource;
	Connection conn;

	public ContactDAO() {

		try {
			Context ctx = new InitialContext();
			Context envx = (Context) ctx.lookup("java:/comp/env");
			this.dataSource = (DataSource) envx.lookup("jdbc/mariadb");
			this.conn = this.dataSource.getConnection();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

	}

	// Get all list
	public List<Contact> findAllContact() {

		Connection conn = null;
		ResultSet rs = null;
		PreparedStatement ps = null;

		List<Contact> listContact = new ArrayList<Contact>();

		try {
			conn = this.dataSource.getConnection();
			String sql_selectAll = "select * from contact";
			ps = conn.prepareStatement(sql_selectAll);
			rs = ps.executeQuery();

			while (rs.next()) {
				Contact con = new Contact();
				con.setCoid(rs.getInt("coid"));
				con.setConame(rs.getString("coname"));
				con.setPriphone(rs.getString("priphone"));
				con.setEmail(rs.getString("email"));
				con.setAddress(rs.getString("address"));

				boolean isCheckUnused;
				if (rs.getInt("unused") == 1) {
					isCheckUnused = true;
				} else {
					isCheckUnused = false;
				}

				con.setUnused(isCheckUnused);
				con.setOpening(rs.getString("opening"));
				con.setWeekday(rs.getString("weekday"));
				con.setAboutus(rs.getString("aboutus"));
				con.setLatitude(rs.getDouble("latitude"));
				con.setLogitude(rs.getDouble("logitude"));

				listContact.add(con);

			}

		} catch (Exception e) {
			e.printStackTrace();

		} finally {

			if (conn != null) {
				try {
					conn.close();
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}

			if (rs != null) {
				try {
					rs.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}

			if (ps != null) {
				try {
					ps.close();
				} catch (Exception e3) {
					e3.printStackTrace();
				}
			}

		}

		return listContact;
	}

	// Add contact
	public void addContact(Contact contact) {
		Connection conn = null;
		ResultSet rs = null;
		PreparedStatement ps = null;

		try {
			conn = this.dataSource.getConnection();
			String queryAdd = "INSERT INTO contact (coname,priphone,email,address,unused,opening,weekday,aboutus,latitude,logitude) "
					+ "values (?,?,?,?,?,?,?,?,?,?)";

			ps = conn.prepareStatement(queryAdd);
			ps.setString(1, contact.getConame());
			ps.setString(2, contact.getPriphone());
			ps.setString(3, contact.getEmail());
			ps.setString(4, contact.getAddress());
			int unused;
			if (contact.getUnused() == true) {
				unused = 1;
			} else {
				unused = 0;
			}

			ps.setInt(5, unused);
			ps.setString(6, contact.getOpening());
			ps.setString(7, contact.getWeekday());
			ps.setString(8, contact.getAboutus());
			ps.setDouble(9, contact.getLatitude());
			ps.setDouble(10, contact.getLogitude());
			ps.executeUpdate();

		} catch (Exception e) {

		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}

			if (rs != null) {
				try {
					rs.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}

			if (ps != null) {
				try {
					ps.close();
				} catch (Exception e3) {
					e3.printStackTrace();
				}
			}
		}

	}

	public Contact getOneContact(int idContact) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		Contact contact = null;
		try {
			conn = this.dataSource.getConnection();
			String sql_GetOne = "select * from contact where coid=?";
			ps = conn.prepareStatement(sql_GetOne);
			ps.setInt(1, idContact);
			rs = ps.executeQuery();

			if (rs.next()) {
				contact = new Contact();
				contact.setCoid(rs.getInt("coid"));
				contact.setConame(rs.getString("coname"));
				contact.setPriphone(rs.getString("priphone"));
				contact.setSubphone(rs.getString("subphone"));
				contact.setEmail(rs.getString("email"));
				contact.setAddress(rs.getString("address"));
				boolean isUnused;
				if (rs.getInt("unused") == 1) {
					isUnused = true;
				} else {
					isUnused = false;
				}
				contact.setUnused(isUnused);
				contact.setOpening(rs.getString("opening"));
				contact.setWeekday(rs.getString("weekday"));
				contact.setWeekend(rs.getString("weekend"));
				contact.setAboutus(rs.getString("aboutus"));
				contact.setLatitude(rs.getDouble("latitude"));
				contact.setLogitude(rs.getDouble("logitude"));
			}

		} catch (Exception ex) {
			ex.printStackTrace();

		} finally {

			if (conn != null) {
				try {
					conn.close();
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}

			if (rs != null) {
				try {
					rs.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}

			if (ps != null) {
				try {
					ps.close();
				} catch (Exception e3) {
					e3.printStackTrace();
				}
			}

		}

		return contact;
	}

	public void update(Contact contact) {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = this.dataSource.getConnection();
			
			String sql_update="Update contact SET coname =?,priphone=?,subphone=?,email=?,address=?,"
					+"unused=?,opening=?,weekday=?,weekend=?,aboutus=?,latitude=?,logitude=? WHERE coid=?";
		
			pstmt = conn.prepareStatement(sql_update);
			
			pstmt.setString(1, contact.getConame());
			pstmt.setString(2, contact.getPriphone());
			pstmt.setString(3, contact.getSubphone());
			pstmt.setString(4, contact.getEmail());
			pstmt.setString(5, contact.getAddress());

			int unused;
			if (contact.getUnused() == true) {
				unused = 1;
			} else {
				unused = 0;
			}

			pstmt.setInt(6, unused);
			pstmt.setString(7, contact.getOpening());
			pstmt.setString(8, contact.getWeekday());
			pstmt.setString(9, contact.getWeekend());
			pstmt.setString(10, contact.getAboutus());
			pstmt.setDouble(11, contact.getLatitude());
			pstmt.setDouble(12, contact.getLogitude());

			pstmt.setInt(13, contact.getCoid());

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}

			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}

	
		}

	}

}
