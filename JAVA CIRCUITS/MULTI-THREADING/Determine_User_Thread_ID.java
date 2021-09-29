// In this Java program , we obtain the ID of a User thread created. When we create a user thread , it will assigned a value by JVM//
Code 1:
import java.lang.*;
class Multi
{
		public static void main(String[] args)
	{
		Thread t1 = new Thread("First Thread"); // The new keyword makes the thread to be in Runnable State
		t1.start(); // When the start method is invoked , the thread goes into start state and executes implicitly the run method
		System.out.println(t1.getId()); // When this program is executed , thread is assigned a ID of 10. If a subsequent thread is created , it will be assigned as 11 and so on.
	}
}

Code 2: Another way of determining the ID of the child Thread
import java.lang.*; // Mentioning the keyword "extends Thread" is optional.
class Multi extends Thread
{
	public void run() // The run() method is exclusively associated with child thread. It contains the code that has to be performed by a child thread that has started.
	{
		System.out.print(Thread.currentThread().getId());
	}
	public static void main(String args[])
	{
		Multi m1 = new Multi();
		m1.start();
}
}
Code 3 : Determining the thread ID of the main thread and child thread using the currentThread().getId() within main method
class Multi extends Thread
{
	public static void main(String args[])
	{
		Multi m1 = new Multi();
		m1.start();
		System.out.println(Thread.currentThread().getId());
		System.out.println(m1.currentThread().getId()); // Here both the child thread m1 and parent thread Thread have the same ID
	}
}
Code 4 : Determining the thread ID of the main thread
class Multi extends Thread
{
	public static void main(String args[])
	{
		Multi m1 = new Multi();
		m1.start();
		System.out.println(Thread.currentThread().getId()); or System.out.println(Multi.currentThread().getId()); // Either you can specify the Thread class or the name of the subclass of Thread class in order to obatin the ID of the main thread
	}
}
