package lwc;
import java.sql.*;
//�汾2���������޸�
public class DBConnection {
	Connection con = null;
	Statement sta = null;
	ResultSet rs = null;
	//�������ݿ�
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
	//sql��� ��ѯ
	public ResultSet executeQuery(String sql){
		try {
			rs = sta.executeQuery(sql);
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			rs = null;
		}
		return rs;
	}
	//sql�������޸�ɾ��
	public int executeUpdate(String sql){
		 try {
			return sta.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			return -1;
		}
	}

}
