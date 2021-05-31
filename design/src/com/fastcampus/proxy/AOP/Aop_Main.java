package com.fastcampus.proxy.AOP;

import com.fastcampus.proxy.IBrowser;

import java.util.concurrent.atomic.AtomicLong;

public class Aop_Main {
    public static void main(String[] args) {

        AtomicLong start = new AtomicLong();
        AtomicLong end = new AtomicLong();

        IBrowser aopBrower = new AopBrowser("www.google.com",
                () -> {
                    System.out.println("before");
                    start.set(System.currentTimeMillis());
                },
                () -> {
                    long now = System.currentTimeMillis();
                    end.set(now - start.get());
                });

        aopBrower.show();
        System.out.println("loading time : " + end.get());

        System.out.println("========================");

        aopBrower.show();
        System.out.println("loading time : " + end.get());
        // 처음에는 1.5초가 걸리지만 그 다음부터는 cache를 이용하기 때문에 시간이 소요되지 않음
    }
}
