package tp.kits3.livedinner.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import tp.kits3.livedinner.VO.Tag;

public class TagDAO {
	// data DAO == give data to me
	// Connection here
	// CRUD here
	// request to DB
	// return to Servlet
	private final String driver = "org.mariadb.jdbc.Driver"; // nếu muốn sửa driver thì bỏ final
	private final String url = "jdbc:mariadb://localhost:3306/restaurant";
	private final String id = "root";
	private final String pass = "123123";
	private Connection conn; // vì nó thường xuyên đóng mở nên ko tạo final cho conn được

	protected void connectDB() {
		try {
			Class.forName(driver);
			this.conn = DriverManager.getConnection(url, id, pass);

		} catch (Exception e) {
			String message = "";
			// Nếu class nào có vấn đề thì nó báo lỗi class đó
			message += TagDAO.class.getSimpleName();
			message += " : connectDB()";
			System.out.println(message);

		}

	}

	public List<Tag> findAll() {
		// Connect here
		connectDB();
 
		// CRUD here
		// request to DB
		Statement stmt=null;
		ResultSet rs=null;
		String sql_selectAll="select * from tag";
		//
		List<Tag> list=null;
		try {
			// 
			stmt =conn.createStatement();
			rs=stmt.executeQuery(sql_selectAll);
			list=new ArrayList<Tag>();
			while(rs.next()) {
				Tag tag=new Tag();
				tag.setTagid(rs.getInt("tagid"));
				tag.setTgname(rs.getString("tgname"));
				list.add(tag);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace(); // show message about SQL error
		}finally {
			try {stmt.close();} catch (SQLException e) {}
			try {rs.close();} catch (SQLException e) {}
			try {conn.close();} catch (SQLException e) {}
			// Chỉnh kết nối DB, maxAccess=50
			
		}

		// return to servlet
		return list;
	}

	public void save(Tag tag) {
		// Connect here
		connectDB();
 
		// CRUD here
		// request to DB
		Statement stmt=null;
		ResultSet rs=null;  // Nếu ko sử dụng mà khai báo sẽ bị lỗi
		// insert means save data in DB table
		String sql_insert="insert into tag(tgname) values('"+tag.getTgname()+"')";
		//
		try {
			// 
			stmt =conn.createStatement();
			if(stmt.execute(sql_insert)) {
				System.out.println("insert success");
			}else {
				System.out.println("insert fail");
			}
			
		}catch(Exception e) {
			e.printStackTrace(); // show message about SQL error
		}finally {
			try {stmt.close();} catch (SQLException e) {}
			try {rs.close();} catch (SQLException e) {}
			try {conn.close();} catch (SQLException e) {}
			// Chỉnh kết nối DB, maxAccess=50
			
		}
			
	}
	
	//
	public void update(Tag tag) {
		// insert,update
		if(tag.getTagid()==null || tag.getTagid()==0) {
			System.out.println("can't invoke update statement");
			return;
		}
		
		
		// Connect here
		connectDB();
 
		// CRUD here
		// request to DB
		Statement stmt=null;
		ResultSet rs=null;
		// insert means save data in DB table
		String sql_insert="insert into tag(tgname) values('"+tag.getTgname()+"')";
		//
		try {
			// 
			stmt =conn.createStatement();
			if(stmt.execute(sql_insert)) {
				System.out.println("insert success");
			}else {
				System.out.println("insert fail");
			}
			
		}catch(Exception e) {
			e.printStackTrace(); // show message about SQL error
		}finally {
			try {stmt.close();} catch (SQLException e) {}
			try {rs.close();} catch (SQLException e) {}
			try {conn.close();} catch (SQLException e) {}
			// Chỉnh kết nối DB, maxAccess=50
			
		}
			
	}
	
	

}
