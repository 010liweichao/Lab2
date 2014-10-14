package lwc;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
public class AuthorAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private DBConnection DBC =new DBConnection();
	private Author author;
	
	private List<Author> ID = new ArrayList<Author> ();
	public Author getAuthor(){
		return author;
	}
	public void setAuthor(Author author){
		this.author = author;
	}
	
	public List<Author> getID() {
		return ID;
	}
	public void setID(List<Author> iD) {
		ID = iD;
	}
	public String Add(){
		String sql = "INSERT INTO Author (AuthorID,Name,Age,Country) VALUES('"+author.getAuthorID()+"','"+author.getName()+"','"+author.getAge()+"','"+author.getCountry()+"')";
		if(DBC.executeUpdate(sql) == -1)
			return "ERROR";
		else
			return "ADD";
	}
	public String Select() throws SQLException{
		String sql = "select *from Author  where  Name  like '%"+author.getName()+"%'";
		ResultSet rs=DBC.executeQuery(sql);
		if(rs == null)
			return "ERROR";
		while(rs.next()){
			Author t = new Author();
			t.setAuthorID(rs.getInt("AuthorID"));
			t.setAge(rs.getInt("Age"));
			t.setName(rs.getString("Name"));
			t.setCountry(rs.getString("Country"));
			ID.add(t);
		}
		return "SELECT";
	}
	
	public String execute(){
		return "SUCCESS";
	}
}
