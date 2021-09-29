// In this Java program , we obtain the ID of a User thread created. When we create a user thread , it will assigned a value by JVM//
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
