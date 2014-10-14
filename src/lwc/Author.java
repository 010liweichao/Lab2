package lwc;

public class Author {
	private String Name;
	private int  Age;
	private String Country;
	private int AuthorID;
	
	public String getName(){
		return Name;
	}
	public void setName(String name){
		this.Name = name;
	}
	public int getAge(){
		return Age;
	}
	public void setAge(int age){
		this.Age = age;
	}
	public String getCountry(){
		return Country;
	}
	public void setCountry(String country){
		this.Country = country;
	}
	public int getAuthorID(){
		return AuthorID;
	}
	public void setAuthorID(int AuthorID){
		this.AuthorID = AuthorID;
	}
}
