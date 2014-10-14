package lwc;

import java.sql.ResultSet;
import java.sql.SQLException;



public class Info {
	private Book book;
	private Author author;
	private DBConnection dbc =new DBConnection();
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	public Author getAuthor() {
		return author;
	}
	public void setAuthor(Author author) {
		this.author = author;
	}
	
	public String execute(){
		
		return "SUCCESS";
	}
	public String Information() throws SQLException{
		//String sql1="select *from[Book] where [Title] = '"+book.getTitle()+"'";
		String sql="select *from Author where AuthorID ='"+book.getAuthorID()+"'";
		ResultSet rs = dbc.executeQuery(sql);
		if(rs==null)
			return "ERROR";
		if(rs.next()==false)
			return "ERROR";
		else{
			Author t = new Author();
			t.setAuthorID(rs.getInt("AuthorID"));
			t.setAge(rs.getInt("Age"));
			t.setName(rs.getString("Name"));
			t.setCountry(rs.getString("Country"));
			setAuthor(t);
		}
		return "INFO";
	}
}
