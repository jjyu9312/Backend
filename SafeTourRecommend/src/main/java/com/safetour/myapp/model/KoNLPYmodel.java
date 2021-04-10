package com.safetour.myapp.model;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;

public class KoNLPYmodel {
	private String userInput;
	
	public KoNLPYmodel(String userInput) {
		super();
		this.userInput = userInput;
	}
	
	public String getUserInput() {
		return userInput;
	}

	public void setUserInput(String userInput) {
		this.userInput = userInput;
	}

	public String getTheme() throws Exception{
        StringBuilder urlBuilder = new StringBuilder("http://127.0.0.1:5000/"); /*URL*/
//        urlBuilder.append(URLEncoder.encode("predict", "UTF-8")+"/");
        urlBuilder.append(URLEncoder.encode(getUserInput(), "UTF-8"));
        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");
//        System.out.println("Response code: " + conn.getResponseCode());
        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();
        conn.disconnect();
        
		int predictType = Integer.parseInt(sb.toString());
		String themeType;
		if(predictType == 0) {
			themeType = "산";
		}else if(predictType == 1) {
			themeType = "바다";
		}else if(predictType == 2) {
			themeType = "문화";
		}else {
			themeType = "체험";
		}
		return themeType;
    }

}
