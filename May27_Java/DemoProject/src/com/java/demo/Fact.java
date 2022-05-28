package com.java.demo;

public class Fact {

	public void calc(int n) {
		int f=1,i=1;
		while(i <= n) {
			f=f*i;
			i++;
		}
		System.out.println("Factorial Value is   " +f);
	}
	public static void main(String[] args) {
		int n=8;
		Fact obj = new Fact();
		obj.calc(n);
	}
}
