There are two ways to create a thread.
  
  --> Creating a subclass of Thread Class and then over-riding the "run()" of Thread Class
  --> Implementing the abstract method "run()" in Runnable Interface.
  
Thread Class and Runnable Interface are implemented as Thread.java and Runnable.java in java.lang package
Any java package can contain both a CLASS and INTERFACE. 
A package is a folder which contains CLASSES and INTERFACES related to a particular application

// Creating a Thread by creating a subclass of Thread Class
Step 1: Create a subclass of Thread Class
Step 2 : Create an object for the Thread Class
Step 3 : Using the object of the Subclass , access the start() method of Thread class
Step 4 : Since start() method requires a supporting run() , implement the run() method before the main method.
  
Code No. : 1
import java.lang.*; //*[asterisk is called WILDCARD] and is used for including all the CLASSES and INTERFACES within java.lang package
class Multi extends Thread
{
public void run() // Over-riding "run()" of Thread Class
{
System.out.println("The Thread is Running");
}
public static void main(String args[])
{
Multi m1 = new Multi();// Now we create an object of the "Multi" class by means of "new" operator and empty constructor "Multi()". 
m1.start(); // Now the object m1 acts as a thread. Since "start()" method is invoked , the "run()" gets automatically invoked and the code within it will be executed
}
}

// Creating a Thread by implementing the "run()" method of Runnable Interface
Code No. 2
Step 1: Create a subclass of Thread Class
Step 2 : Create an object for the Thread Class
Step 3 : Create an object for the Sub Class
Step 4 : Pass the object of the subclass as the parameter into the Thread()[Constructor of Thread Class]
Step 5 : Using the object of the Thread class , access the start() of Thread Class
Step 6 : Since start() method requires a supporting run() , implement the run() method before the main method.

import java.lang.*;
class Multi implements Runnable
{
public void run() // Implementing "run()" method of Runnable Interface
{
System.out.println("The Thread is Running");
}
public static void main(String args[])
{
Multi m1 = new Multi();
Thread r1 = new Thread(m1);
r1.start()
}
}

Code No. 3
A same thread cannot be started multiple times. It generates a run-time error called Illegal Thread State Exception.
import java.lang.*;
class Multi implements Runnable
{
	public void run()
	{
		System.out.println("The Thread is running");
	}
	public static void main(String args[])
	{
		Multi m1 = new Multi();
		Thread r1 = new Thread(m1);
		r1.start();
		r1.start(); // Two times r1 is started. This is an exception or error
	}
}  
