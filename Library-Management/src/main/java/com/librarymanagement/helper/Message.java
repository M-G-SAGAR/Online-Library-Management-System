package com.librarymanagement.helper;

public class Message {

	private String contain;
	private String type;
	
	public Message(String contain, String type) {
		super();
		this.contain = contain;
		this.type = type;
	}

	public String getContain() {
		return contain;
	}

	public void setContain(String contain) {
		this.contain = contain;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	
}
