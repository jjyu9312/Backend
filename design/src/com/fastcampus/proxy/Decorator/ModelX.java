package com.fastcampus.proxy.Decorator;

public class ModelX extends TeslaDecorator {

    public ModelX(ICar tesla, String modelName) {
        super(tesla, modelName, 4000);
    }
}
