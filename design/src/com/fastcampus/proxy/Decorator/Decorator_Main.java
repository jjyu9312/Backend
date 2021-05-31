package com.fastcampus.proxy.Decorator;

public class Decorator_Main {
    public static void main(String[] args) {

        ICar tesla = new Tesla(1000);
        tesla.showPrice();

        // 모델 3
        ICar model3 = new Model3(tesla, "Model3");
        model3.showPrice();

        // 모델 X
        ICar modelX = new ModelX(tesla, "ModelX");
        modelX.showPrice();

        // 모델 S
        ICar modelS = new ModelS(tesla, "ModelS");
        modelS.showPrice();
    }
}
