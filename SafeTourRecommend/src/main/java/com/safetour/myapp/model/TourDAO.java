package com.safetour.myapp.model;

public class TourDAO {
	private String Title;
	private int Score;
	private String address;
	private double x;
	private double y;
	private String image;
	public TourDAO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TourDAO(String title, int score, String address, double x, double y) {
		super();
		this.Title = title;
		this.Score = score;
		this.address = address;
		this.x = x;
		this.y = y;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public double getX() {
		return x;
	}
	public void setX(double x) {
		this.x = x;
	}
	public double getY() {
		return y;
	}
	public void setY(double y) {
		this.y = y;
	}
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getScore() {
		return Score;
	}
	public void setScore(int score) {
		Score = score;
	}
	@Override
	public String toString() {
		return "TourDAO [Title=" + Title + ", Score=" + Score + ", address=" + address + ", x=" + x + ", y=" + y
				+ ", image=" + image + "]";
	}
	
	
	
	
}
