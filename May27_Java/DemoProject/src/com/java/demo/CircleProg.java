package com.java.demo;

public class CircleProg {

	public void calc(double radius) {
		double area, circ;
		area = 3.14 * radius * radius;
		circ = 2 * 3.14 * radius;
		System.out.println("Area of Circle   " +area);
		System.out.println("Circumference   " +circ);
	}
	
	public static void main(String[] args) {
		double radius=9.4;
		CircleProg obj = new CircleProg();
		obj.calc(radius);
	}
}
