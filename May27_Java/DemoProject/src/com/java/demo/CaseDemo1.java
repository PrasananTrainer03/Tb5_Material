package com.java.demo;

public class CaseDemo1 {

	public void show(int choice) {
		switch(choice) {
		case 1 : 
			System.out.println("Hi I am Mohan...");
			break;
		case 2 : 
			System.out.println("Hi I am Sailaja..");
			break;
		case 3 : 
			System.out.println("HI i am Dharani...");
			break;
		case 4 : 
			System.out.println("Hi I am banarji...");
			break;
		case 5 : 
			System.out.println("Hi I am Yellaji");
			break;
		default : 
			System.out.println("Invalid Choice...");
			break;
		}
	}
	public static void main(String[] args) {
		int choice=2;
		CaseDemo1 obj = new CaseDemo1();
		obj.show(choice);
	}
}
