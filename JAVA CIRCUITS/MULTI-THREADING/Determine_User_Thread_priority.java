import java.lang.*;
class Multi extends Thread
{
	public static void main(String args[])
	{
		Thread t1 = new Thread("First Thread"); // t1 and t2 are child Threads. A child Thread will have the same priority as the parent thread. When no priorities are assigned to a thread , the default value of 5 will be assigned to all the threads.
		Thread t2 = new Thread("Second Thread");
		//t1.setPriority(2);// Default priority of a thread in Java
		//t2.setPriority(4);// Max. priority of a thread in Java
		t1.start();
		t2.start();
		System.out.println("The currently executing thread is " + Thread.currentThread().getName());
	    System.out.println("The currently executing thread is " + Thread.currentThread().getPriority());
		System.out.println("The currently executing thread is " + t1.getPriority());
}
}
