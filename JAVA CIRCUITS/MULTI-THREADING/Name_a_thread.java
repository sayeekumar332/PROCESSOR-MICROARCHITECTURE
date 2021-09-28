// In this Java program , we create a thread using Thread constructor of Thread class and give a name to the thread and then get that name of the thread and display it
import java.lang.*;
class Multi
{
		public static void main(String[] args)
	{
		Thread t1 = new Thread("First Thread");
		t1.start(); // A start() method need not necessarily accompany a run() method
		String str = t1.getName();// getName() is the method of the Thread class , to fetch the name given to the thread using the Thread Constructor
		System.out.println(str);
	}

}
