Code No.1 : Displaying the information of the main thread.
import java.lang.*;
class Multi 
{
	public static void main(String args[])
	{
		Thread t = Thread.currentThread(); // Whenever currentThread() is invoked within the main method , when asked to display , it will provide the name of the current Thread to be main ; Only when placed within the run() , it will display the name of the child Thread which invoked the run method through the start method
		t.setPriority(1); // Min value of priority
		System.out.println("Thread = " + t); // When a thread object is printed the "toString()" is invoked and three informations are printed ; First is the name of the child Thread , priority of the child Thread , Thread Group to which child thread belongs
	} // In the present case it will display : Thread = Thread [main , 1 , main] ; Thread is the name of the Class ; First main is the name of the thread , second 1 is the priority of the thread , third main is the name of the thread group.
}

import java.lang.*;
class Multi 
{
  public void run()
  {
    System.out.println("Thread = " + m1);
  }
	public static void main(String args[])
	{
		Multi m1 = new Multi(); // Whenever currentThread() is invoked within the main method , when asked to display , it will provide the name of the current Thread to be main ; Only when placed within the run() , it will display the name of the child Thread which invoked the run method through the start method
		Thread t = new Thread();
    t.setPriority(1); // Min value of priority
		System.out.println("Thread = " + t); // When a thread object is printed the "toString()" is invoked and three informations are printed ; First is the name of the child Thread , priority of the child Thread , Thread Group to which child thread belongs
	} // In the present case it will display : Thread = Thread [main , 1 , main] ; Thread is the name of the Class ; First main is the name of the thread , second 1 is the priority of the thread , third main is the name of the thread group.
}
