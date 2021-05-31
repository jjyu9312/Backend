package com.fastcampus.proxy.Decorator;

public class ModelS extends TeslaDecorator {

    public ModelS(ICar tesla, String modelName) {
        super(tesla, modelName, 9000);
    }
}
