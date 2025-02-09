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
import tp.kits3.livedinner.VO.Menu;

public class MenuDao implements IMenuDAO<Menu>{

	DataSource dataSource;
	Connection conn;

	public MenuDao() {
		// TODO Auto-generated constructor stub
		try {
			Context ctx = new InitialContext();
			Context envx = (Context) ctx.lookup("java:/comp/env");
			this.dataSource = (DataSource) envx.lookup("jdbc/mariadb");
			this.conn = this.dataSource.getConnection();

			// context.xml -> <Resource name="jdbc/mariadb"
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	public List<Menu> findAll() {
		Connection conn = null;
		ResultSet rs = null;
		PreparedStatement ps = null;
		List<Menu> list = new ArrayList<Menu>();

		try {
			conn = this.dataSource.getConnection();
			String sql_selectAll = "select * from menu";
			ps = conn.prepareStatement(sql_selectAll);
			rs = ps.executeQuery();

			while (rs.next()) {
				Menu menu = new Menu();
				menu.setMuid(rs.getInt("muid"));
				menu.setCtgid(rs.getInt("ctgid"));
				menu.setMuname(rs.getString("muname"));
				menu.setIntro(rs.getString("intro"));
				menu.setDetails(rs.getString("details"));
				menu.setPrice(rs.getDouble("price"));
				menu.setCurrency(rs.getString("currency"));

				list.add(menu);

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

		return list;
	}

	@Override
	public void add(Menu t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Menu t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public List<Menu> findAllByCategoryID(int categoryID) {
		// TODO Auto-generated method stub
		Connection conn = null;
		ResultSet rs = null;
		PreparedStatement ps = null;
		List<Menu> listMenu = new ArrayList<Menu>();

		try {
			conn = this.dataSource.getConnection();
			String sql_selectAll = "select * from menu where ctgid=?";
			ps = conn.prepareStatement(sql_selectAll);
			ps.setInt(1, categoryID);
			rs = ps.executeQuery();

			while (rs.next()) {
				Menu menu = new Menu();
				menu.setMuid(rs.getInt("muid"));
				menu.setCtgid(rs.getInt("ctgid"));
				menu.setMuname(rs.getString("muname"));
				menu.setIntro(rs.getString("intro"));
				menu.setDetails(rs.getString("details"));
				menu.setPrice(rs.getDouble("price"));
				menu.setCurrency(rs.getString("currency"));

				listMenu.add(menu);

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
		
		return listMenu;
	}

	@Override
	public Menu findOne(int id) {
		// TODO Auto-generated method stub
		return null;
	}
}