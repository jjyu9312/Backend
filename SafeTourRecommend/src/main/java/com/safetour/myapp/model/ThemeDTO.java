package com.safetour.myapp.model;

import java.io.Serializable;

public class ThemeDTO implements Serializable{
	private String Sentence;
	private String partner;
	private String address;
	
	public ThemeDTO() {
		// TODO Auto-generated constructor stub
	}

	public ThemeDTO(String sentence, String partner, String address) {
		
		this.Sentence = sentence;
		this.partner = partner;
		this.address = address;
	}

	public String getSentence() {
		return Sentence;
	}

	public void setSentence(String sentence) {
		Sentence = sentence;
	}

	public String getPartner() {
		return partner;
	}

	public void setPartner(String partner) {
		this.partner = partner;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "UserDTO [Sentence=" + Sentence +  ", partner=" + partner
				+ ", address=" + address + "]";
	}	
}
