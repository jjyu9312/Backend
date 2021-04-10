package com.safetour.myapp;

import java.io.IOException;

import com.safetour.myapp.model.KoNLPYmodel;

public class RestAPITest {
	public static void main(String [] args) {
		KoNLPYmodel restCall = new KoNLPYmodel("오랜 역사를 가진 고궁");
		try {
			System.out.println(restCall.getTheme());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
