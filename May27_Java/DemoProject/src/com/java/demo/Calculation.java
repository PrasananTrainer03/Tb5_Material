package com.java.demo;

public class Calculation {

	public void calc(int a, int b) {
		int c=a+b;
		System.out.println("Sum is   " +c);
		c=a-b;
		System.out.println("Sub is   " +c);
		c=a*b;
		System.out.println("Mult is   " +c);
	}
	
	public static void main(String[] args) {
		int a,b;
		a = 5;
		b = 7;
		Calculation obj = new Calculation();
		obj.calc(a, b);
	}
}
