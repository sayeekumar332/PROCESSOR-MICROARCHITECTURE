Code 1:
// In this Java program , we create a thread using Thread constructor of Thread class and give a name to the thread and then get that name of the thread and display it
import java.lang.*;
class Multi
{
		public static void main(String[] args)
	{
		Thread t1 = new Thread("First Thread"); // We pass the thread name as the parameter to the Thread Constructor. Here the name of the thread is "First Thread"
		t1.start(); // A start() method need not necessarily accompany a run() method
		String str = t1.getName();// getName() is the method of the Thread class , to fetch the name given to the thread using the Thread Constructor
		System.out.println(str);
	}
}

Code 2:
// In this Java program , we create a thread by creating a subclass of Thread class. Here m1 is the object of the "Multi" class which is the subclass of Thread class and get its name and print it
import java.lang.*;
class Multi extends Thread
{
public static void main(String args[])
{
Multi m1 = new Multi();
System.out.println(m1.getName());// When we are not assigning any name to a thread and invoke getName() method for the subclass of the Thread class , jdk provides a name "Thread-0"
}
}

Code 3:
// In this Java program , we create a thread by creating a subclass of Thread class. Here m1 is the object of the "Multi" class which is the subclass of Thread class and assign a name to it using "setName()" , fetch the name using "getName()" and print it
import java.lang.*;
class Multi extends Thread
{
public static void main(String args[])
{
Multi m1 = new Multi();
m1.setName("First Thread");
System.out.println(m1.getName());
}
}

