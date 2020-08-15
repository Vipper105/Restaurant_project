package tp.kits3.livedinner.DAO;
//package tp.kits3.livedinner.DAO;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.util.List;
//
//import javax.naming.Context;
//import javax.naming.InitialContext;
//import javax.sql.DataSource;
//
//import tp.kits3.livedinner.VO.Category;
//import tp.kits3.livedinner.VO.Menu;
//
//     =====================================   SOLUTION 2: tạo ra 1 class lưu query  ===========================================
//public class RestaurantDAO<T extends Object> implements I_Restaurant<T>{
//
//	DataSource dataSource;
//	Connection conn;
//
//	public RestaurantDAO() {
//
//		try {
//			Context ctx = new InitialContext();
//			Context envx = (Context) ctx.lookup("java:/comp/env");
//			this.dataSource = (DataSource) envx.lookup("jdbc/mariadb");
//			this.conn = this.dataSource.getConnection();
//		} catch (Exception ex) {
//			ex.printStackTrace();
//		}
//
//	}
//	
//	@Override
//	public void add(T t) {
//		Connection conn = null;
//		ResultSet rs = null;
//		PreparedStatement ps = null;
//
//		try {
//			conn = this.dataSource.getConnection();
//			if(t instanceof Category) {
//				// Query 1
//			}
//			
//			if(t instanceof Menu) {
//				//Query 2
//			}
//			
//			
//
////			String queryAdd = "INSERT INTO contact (coname,priphone,email,address,unused,opening,weekday,aboutus,latitude,logitude) "
////					+ "values (?,?,?,?,?,?,?,?,?,?)";
////
////			ps = conn.prepareStatement(queryAdd);
////			ps.setString(1, contact.getConame());
////			ps.setString(2, contact.getPriphone());
////			ps.setString(3, contact.getEmail());
////			ps.setString(4, contact.getAddress());
////			int unused;
////			if (contact.getUnused() == true) {
////				unused = 1;
////			} else {
////				unused = 0;
////			}
////
////			ps.setInt(5, unused);
////			ps.setString(6, contact.getOpening());
////			ps.setString(7, contact.getWeekday());
////			ps.setString(8, contact.getAboutus());
////			ps.setDouble(9, contact.getLatitude());
////			ps.setDouble(10, contact.getLogitude());
////			ps.executeUpdate();
//
//		} catch (Exception e) {
//
//		} finally {
//			if (conn != null) {
//				try {
//					conn.close();
//				} catch (Exception ex) {
//					ex.printStackTrace();
//				}
//			}
//
//			if (rs != null) {
//				try {
//					rs.close();
//				} catch (Exception e2) {
//					e2.printStackTrace();
//				}
//			}
//
//			if (ps != null) {
//				try {
//					ps.close();
//				} catch (Exception e3) {
//					e3.printStackTrace();
//				}
//			}
//		}
//		
//		
//		
//	}
//
//	@Override
//	public void update(T t) {
//		// TODO Auto-generated method stub

//	}
//
//	@Override
//	public void delete(int id, int flag) {     // flag: để xác định loại đối tượng truyền vào
//		// TODO Auto-generated method stub
//		if(flag==1){
//		 // Query 1
//		}
//
//		if(flag==2){
//		// Query 2
//}	
//		
//	}
//
//	@Override
//	public <T> List<T> findAll() {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	@Override
//	public T findOne(int id, int flag) {
//		// TODO Auto-generated method stub
//    if(flag==1){
//	    // Query 1
//	  }
//
//	  if(flag==2){
//	   // Query 2
//	 return null;
//	}
//
//}
