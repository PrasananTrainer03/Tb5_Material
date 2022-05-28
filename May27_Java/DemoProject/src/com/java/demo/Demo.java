package com.java.demo;

class Data {
	
	public void satish() {
		System.out.println("Hi I am Satish...");
	}
	
	private void dharani() {
		System.out.println("Hi I am Dharani...");
	}
	
	void mohan() {
		System.out.println("Hi I am Mohan...");
	}
}

public class Demo {
	
	public static void main(String[] args) {
		Data obj = new Data();
		obj.mohan();
		obj.satish();
	}
}
