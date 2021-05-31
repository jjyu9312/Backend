package com.fastcampus.proxy;

public class Proxy_Main {
    public static void main(String[] args) {
        /*
        Browser browser = new Browser("www.google.com");
        browser.show();
        browser.show();
        browser.show();
         */

        IBrowser browser = new BrowserProxy("www.naver.com");
        browser.show();
        browser.show();
        browser.show();
        browser.show();
        browser.show();
        // 처음에만 로딩 후 cache 기능 사용

        /*
        AOP : 일괄적으로 특정 패키지에 있는 모든 메소드에 기능 추가
         */


    }
}
