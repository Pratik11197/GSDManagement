package model;

public class Registration {
	 private String first_name;
	 private String last_name;
	 private String designation;
	 private String empId;
	 private String seatNo;
	 private String PcNo;
	 private String Ip;
	 private String contact;
	 private String password;
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public String getSeatNo() {
		return seatNo;
	}
	public void setSeatNo(String seatNo) {
		this.seatNo = seatNo;
	}
	public String getPcNo() {
		return PcNo;
	}
	public void setPcNo(String pcNo) {
		PcNo = pcNo;
	}
	public String getIp() {
		return Ip;
	}
	public void setIp(String ip) {
		Ip = ip;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Registration(String first_name, String last_name, String designation, String empId, String seatNo,
			String pcNo, String ip, String contact, String password) {
		super();
		this.first_name = first_name;
		this.last_name = last_name;
		this.designation = designation;
		this.empId = empId;
		this.seatNo = seatNo;
		PcNo = pcNo;
		Ip = ip;
		this.contact = contact;
		this.password = password;
	}
	 
	 
	 

}
