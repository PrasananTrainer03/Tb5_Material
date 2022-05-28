package com.java.demo;

public class StrExample {

	public void show() {
		String str="Welcome to Java Programming...Segue";
		System.out.println("Length of String is  " +str.length());
		System.out.println("First Occurrence of char 'o' is  " +str.indexOf("o"));
		System.out.println("Last Occurrence of char 'o' is  " +str.lastIndexOf("o"));
		System.out.println("Lower Case String is   " +str.toLowerCase());
		System.out.println("Upper Case String is   " +str.toUpperCase());
		System.out.println("Substring is  " +str.substring(5,10));
		String s1="Java",s2="Sql",s3="Java";
		System.out.println(s1==s2);
		System.out.println(s1.equals(s2));
		System.out.println(s1==s3);
		System.out.println(s1.equals(s3));
		System.out.println(s1.compareTo(s2));
		System.out.println(s1.compareTo(s3));
	}
	
	public static void main(String[] args) {
		StrExample obj = new StrExample();
		obj.show();
	}
}
