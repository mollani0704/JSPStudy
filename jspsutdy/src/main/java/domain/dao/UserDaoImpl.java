package domain.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import domain.entity.User;
import domain.jdbc.DBConnectionMgr;

public class UserDaoImpl implements UserDao{
	private DBConnectionMgr pool;
	
	private String sql;
	
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	
	public UserDaoImpl() {
		pool = DBConnectionMgr.getInstance();
	}
	
	@Override
	public int save(User user) throws Exception {
		int result = 0;
		
		sql = "INSERT INTO\r\n"
				+ "	user_mst\r\n"
				+ "VALUES(\r\n"
				+ "	0, \r\n"
				+ "	?,\r\n"
				+ "	?,\r\n"
				+ "	?,\r\n"
				+ "	?,\r\n"
				+ "	?,\r\n"
				+ "	?,\r\n"
				+ "	NOW(),\r\n"
				+ "	NOW()\r\n"
				+ ");";
		
		con = pool.getConnection(); // DB 연결
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, user.getName()); //pstmt.setString에서는 작은따옴표가 자동으로 붙는다. 
			pstmt.setString(2, user.getEmail());
			pstmt.setString(3, user.getUsername());
			pstmt.setString(4, user.getPassword());
			pstmt.setString(5, user.getRoles());
			pstmt.setString(6, user.getProvider());
			
			result = pstmt.executeUpdate(); // 쿼리 실행하는 것(int를 반환하는데 이는 성공한 횟수를 return 해준다)
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return result;
	}

	@Override
	public User findUserByUsername(String username) throws Exception {
		
		return null;
	}

	@Override
	public int modify(int user_code) throws Exception {
		
		return 0;
	}

	@Override
	public int remove(int user_code) throws Exception {
		
		return 0;
	}
	
}
