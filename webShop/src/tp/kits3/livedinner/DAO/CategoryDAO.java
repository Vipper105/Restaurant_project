package tp.kits3.livedinner.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

// JNDI (Java Naming DI )
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import tp.kits3.livedinner.VO.Category;

public class CategoryDAO implements ICategoryDAO<Category> {

	/*
	 * use DataSource and ConnectionPool
	 * 
	 */

	DataSource datasource;
	Connection conn;

	public CategoryDAO() {

		try {
			Context ctx = new InitialContext();
			// get info of Tomcat
			Context envCtx = (Context) ctx.lookup("java:/comp/env");
			// get info in context.xml
			this.datasource = (DataSource) envCtx.lookup("jdbc/mariadb");
			this.conn = this.datasource.getConnection();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public List<Category> findAll() {
		// if you don't close, your app die
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Connection conn = null;
		List<Category> list = new ArrayList<Category>();

		try {
			conn = this.datasource.getConnection();
			String selectAll = "select * from cateory";
			pstmt = conn.prepareStatement(selectAll);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				Category category = new Category();
				category.setCtgid(rs.getInt("ctgid"));
				category.setCtname(rs.getString("ctname"));
				category.setService(rs.getString("service"));

				list.add(category);

			}
		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (rs != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (rs != null) {
				try {
					conn.close();// maxTotal="50"
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

		}
		return list; // not null check .size() == 0 means empty list
	}

	public Category findOne(int ctgid) {

		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Category category = null;
		try {
			Connection conn = this.datasource.getConnection();
			String selectOne = "select * from cateory where ctgid=?";
			pstmt = conn.prepareStatement(selectOne);
			pstmt.setInt(1, ctgid);
			rs = pstmt.executeQuery();

			// select one so use if
			if (rs.next()) {
				category = new Category();
				category.setCtgid(rs.getInt("ctgid"));
				category.setCtname(rs.getString("ctname"));
				category.setService(rs.getString("service"));

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return category;
	}

	public void update(Category category) {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = datasource.getConnection();
			String sql_update = "Update cateory SET ctname=?, service =? WHERE ctgid=?";
			pstmt = conn.prepareStatement(sql_update);
			pstmt.setString(1, category.getCtname());
			pstmt.setString(2, category.getService());
			pstmt.setInt(3, category.getCtgid());
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}

	@Override
	public void add(Category category) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = datasource.getConnection();
			String insert = "insert into cateory (ctname,service) value(?,?)";
			pstmt = conn.prepareStatement(insert);
			pstmt.setString(1, category.getCtname());
			pstmt.setString(2, category.getService());
			pstmt.executeUpdate();

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}

	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub

	}

}
