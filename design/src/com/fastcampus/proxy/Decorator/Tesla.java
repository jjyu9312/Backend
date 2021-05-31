package com.fastcampus.proxy.Decorator;

public class Tesla implements ICar {

    private int price;

    public Tesla(int price) {
        this.price = price;
    }

    @Override
    public int getPrice() {
        return price;
    }

    @Override
    public void showPrice() {
        System.out.println("Tesla 차의 가격은 " + this.price + " 입니다.");
    }
}
