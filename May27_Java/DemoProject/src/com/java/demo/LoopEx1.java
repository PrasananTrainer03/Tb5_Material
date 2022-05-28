package com.java.demo;

public class LoopEx1 {

	public void show() {
		int i = 0;
		int n = 10;
		while(i < n) {
			System.out.println("Welcome to Java Programming...");
			i++;
		}
	}
	public static void main(String[] args) {
		LoopEx1 obj = new LoopEx1();
		obj.show();
	}
}
