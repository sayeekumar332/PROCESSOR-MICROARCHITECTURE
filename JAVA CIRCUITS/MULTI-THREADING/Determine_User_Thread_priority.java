import java.lang.*;
class Multi extends Thread // If a child thread does not accompany a run method outside the main method , then it is called idle thread. Only one run method is enough. If "Thread.currentThread().getName()" is placed in the run() of child thread , then it will display the name of the child thread ; Similarly if "Thread.currentThread().getId()" is placed in run() of child thread , then it will display the ID of the child thread , which has invoked. A main thread does not require any dedicated run(). It is the one which is started by default by JVM.
{
	public static void main(String args[])
	{
		Thread t1 = new Thread("First Thread"); // t1 and t2 are child Threads. A child Thread will have the same priority as the parent thread. When no priorities are assigned to a thread , the default value of 5 will be assigned to all the threads.
		Thread t2 = new Thread("Second Thread");
		t1.start();
		t2.start();
		System.out.println("The currently executing thread is " + Thread.currentThread().getName());// This is will display the name of the parent thread(i.e. main thread)
	        System.out.println("The currently executing thread is " + Thread.currentThread().getPriority());// This will display the priority of the main thread. The default value of 5 will be displayed
	
}
}
Code No:2
A Child Thread need not be necessarily started in order to set its priority
import java.lang.*;
class Multi extends Thread
{
	public static void main(String args[])
	{
		Thread t1 = new Thread("First Thread"); // t1 and t2 are child Threads. A child Thread will have the same priority as the parent thread. When no priorities are assigned to a thread , the default value of 5 will be assigned to all the threads.
		Thread t2 = new Thread("Second Thread");
		t1.setPriority(5);// Default priority of a thread in Java
		t2.setPriority(10);// Max. priority of a thread in Java
		System.out.println("The currently executing thread is " + t1.getPriority());// Here we will get the Priority of the Thread to be 5
		System.out.println("The currently executing thread is " + t2.getPriority());// Here we will get the Priority of the Thread to be 10.
}
}

Code No: 3
Two or more child threads can be set to same priority
import java.lang.*;
class Multi extends Thread
{
	public static void main(String args[])
	{
		Thread t1 = new Thread("First Thread"); // t1 and t2 are child Threads. A child Thread will have the same priority as the parent thread. When no priorities are assigned to a thread , the default value of 5 will be assigned to all the threads.
		Thread t2 = new Thread("Second Thread");
		t1.setPriority(10);// Default priority of a thread in Java
		t2.setPriority(10);// Max. priority of a thread in Java
		System.out.println("The currently executing thread is " + t1.getPriority());
		System.out.println("The currently executing thread is " + t2.getPriority());
}
}
