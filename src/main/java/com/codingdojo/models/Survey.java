package com.codingdojo.models;

public class Survey {
	// Attributes
	private String name;
	private String location;
	private String language;
	private String comments;
	
	// Constructor
	public Survey( String name, String location, String language, String comments ) {
		this.name = name;
		this.location = location;
		this.language = language;
		this.comments = comments;
		
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

}
