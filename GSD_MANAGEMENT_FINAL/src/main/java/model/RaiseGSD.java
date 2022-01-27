package model;

public class RaiseGSD {
	private int id;
	private String remedy;
	private String description;
	private String contact;
	private String Pc;
	private String GsdNumber;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRemedy() {
		return remedy;
	}
	public void setRemedy(String remedy) {
		this.remedy = remedy;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getPc() {
		return Pc;
	}
	public void setPc(String pc) {
		Pc = pc;
	}
	public String getGsdNumber() {
		return GsdNumber;
	}
	public void setGsdNumber(String gsdNumber) {
		GsdNumber = gsdNumber;
	}
	public RaiseGSD(int id, String remedy, String description, String contact, String pc, String gsdNumber) {
		super();
		this.id = id;
		this.remedy = remedy;
		this.description = description;
		this.contact = contact;
		Pc = pc;
		GsdNumber = gsdNumber;
	}
	public RaiseGSD(String remedy, String description, String contact, String pc, String gsdNumber) {
		super();
		this.remedy = remedy;
		this.description = description;
		this.contact = contact;
		Pc = pc;
		GsdNumber = gsdNumber;
	}
	
	

	
	
}
