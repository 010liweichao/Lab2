package lwc;
import java.sql.*;
//版本2，第三次修改
public class DBConnection {
	Connection con = null;
	Statement sta = null;
	ResultSet rs = null;
	//连接数据库
	public DBConnection(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_2864lwc","4zmk53onm5","jikm35li0i4x5wjj3xjhm32lx2zxkyzmj10mk30y");
			sta = con.createStatement();
		}
		catch(Exception e){
			con = null;
			e.printStackTrace();
		}
	}
	//sql语句 查询
	public ResultSet executeQuery(String sql){
		try {
			rs = sta.executeQuery(sql);
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			rs = null;
		}
		return rs;
	}
	//sql语句插入修改删除
	public int executeUpdate(String sql){
		 try {
			return sta.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			return -1;
		}
	}

}
