package com.guibiaoguo.myapplication;

public class Banana extends Fruit {

    private static String COLOR = "黄色的";
    private static String SIZE = "BIG";
    private String place = "here";

    public Banana() {}

    public String getPlace() {
        return place;
    }

    public static final String getColor() {
        return COLOR;
    }

    private static String getSize() {
        return SIZE;
    }

    public String getBananaInfo() {
        return flavor() + getColor();
    }

    private String flavor() {
        return "甜甜的";
    }

    public final boolean isLike() {
        return true;
    }

    private final String getPrice() {
        return "10";
    }

    public String privateFinal() {
        return getPrice();
    }
}