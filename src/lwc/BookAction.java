package lwc;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.opensymphony.xwork2.ActionSupport;

public class BookAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private DBConnection DBC =new DBConnection();
	private Book book;
	private List<Book> list = new ArrayList<Book>();
	public Book getBook(){
		return book;
	}
	public void setBook(Book book){
		this.book = book;
	}
	public List<Book> getList()
	{
		return list;
	}
	public void setList(List<Book> list)
	{
		this.list=list;
	}

//	action  没有作者添加作者，有作者返回主界面
	public String Add() throws SQLException{
		String sql = "INSERT INTO Book (ISBN,Title,AuthorID,Publisher,PublishDate,Price) VALUES('"+book.getISBN()+"','"+book.getTitle()+"','"
	+book.getAuthorID()+"','"+book.getPublisher()+"','"+book.getPublishDate()+"','"+book.getPrice()+"')";
		String sql2 ="select*from Author  where AuthorID ='"+book.getAuthorID()+"'";
		
		if(DBC.executeUpdate(sql) == -1)
			return "ERROR";
		ResultSet rs = DBC.executeQuery(sql2);
		if(rs ==null)
			return "ERROR";
		if (rs.next()==false)
			return "AddAuthor";
		return  "ADD";
			
	}
	
	public String Show() throws SQLException{
		String sql = "select *from Book where Title like '%"+book.getTitle()+"%'";
		ResultSet rs;
		if((rs = DBC.executeQuery(sql)) == null)
			return "ERROR";
		list.clear();
			while(rs.next()){
					Book t = new Book();
					t.setISBN(rs.getString("ISBN"));
					t.setAuthorID(rs.getInt("AuthorID"));
					t.setPrice(rs.getFloat("Price"));
					t.setPublishDate(rs.getString("PublishDate"));
					t.setPublisher(rs.getString("Publisher"));
					t.setTitle(rs.getString("Title"));
					list.add(t);
					}
		
			return "SHOW";
	}
//删除
	public String Del(){
		String sql ="DELETE FROM  BOOK  WHERE  ISBN ='"+book.getISBN()+"'";
		if((DBC.executeUpdate(sql)) == -1)
			return "ERROR";
		else
			return "DELETE";
		
	}
	
	public String Update(){
		String sql="update  Book  set  AuthorID ='"+book.getAuthorID()+"', Publisher ='"
	+book.getPublisher()+"', PublishDate ='"+book.getPublishDate()+"', Price ='"+book.getPrice()+"' where  ISBN ='"+book.getISBN()+"'";
		if(DBC.executeUpdate(sql) == -1)
			return "ERROR";
		else
			return "UPDATE";
	}
	
	public String Select() throws SQLException{
		String sql ="select *from  Book  where  AuthorID ='"+book.getAuthorID()+"'";
		ResultSet rs=DBC.executeQuery(sql);
		if(rs == null)
			return "ERROR";
		list.clear();
		while(rs.next()){
			Book t = new Book();
			t.setISBN(rs.getString("ISBN"));
			t.setAuthorID(rs.getInt("AuthorID"));
			t.setPrice(rs.getFloat("Price"));
			t.setPublishDate(rs.getString("PublishDate"));
			t.setPublisher(rs.getString("Publisher"));
			t.setTitle(rs.getString("Title"));
			list.add(t);
		}
		return "SELECT";
	}
	public String execute(){
		return "SUCCESS";
	}
	public String Change(){
		return "CHANGE";
	}
}