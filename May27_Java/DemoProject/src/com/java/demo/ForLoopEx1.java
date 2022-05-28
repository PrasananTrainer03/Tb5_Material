package com.java.demo;

public class ForLoopEx1 {

	public void show(int n) {
		for(int i=1;i<n;i+=2) {
			System.out.println("Odd  " +i);
		}
	}
	
	public static void main(String[] args) {
		int n=21;
		ForLoopEx1 obj = new ForLoopEx1();
		obj.show(n);
	}
	
}
