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

Code No.2 : Displaying the information of a child thread
import java.lang.*;
class Multi extends Thread
{
	public void run()
      {
       System.out.println(Thread.currentThread()); // Here instead of Thread.currentThread() method , if we mention the name of the child thread object , we will be getting an error "the variable m1 is not found"
      }
  public static void main(String args[])
	{
		Multi m1 = new Multi(); // Whenever currentThread() is invoked within the main method , when asked to display , it will provide the name of the current Thread to be main ; Only when placed within the run() , it will display the name of the child Thread which invoked the run method through the start method
		
		m1.start();
         } // In the present case it will display : Thread = Thread [Thread-0 , 5 , main] ; Thread is the name of the Class ; First main is the name of the child thread (Thread-0) , second 1 is the priority of the thread[default priority for any thread i.e. for child or main is 5 , third main is the name of the thread group.
   }

Code No.3 : Displaying the name of the main thread as set by the user:
import java.lang.*;
class Multi extends Thread
{
	public static void main(String args[])
	{
		Thread t = Thread.currentThread();
		t.setName("Admin Thread");
		System.out.println(t.getName()); // Here the name of the main thread is "Admin Thread"
	}
}

Code No. 4 : Determining the currently active threads
import java.lang.*;
class Multi extends Thread
{
	public static void main(String args[])
	{
		Thread t = Thread.currentThread();
		t.setName("Admin Thread");
		t.setPriority(1);
		Multi m1 = new Multi();
		m1.setName("First Child Thread");
		m1.start();
		Multi m2 = new Multi();
                m2.setName("Second Child Thread");
		m2.start();
		System.out.println("Thread = " + t.activeCount());// Here we use the object of the main thread to determine the number of currently running threads within it. (i) Main Thread (ii) m1 child Thread (iii) m2 child Thread
		
	} // Only the threads that are in started condition , will be taken into consideration by activeCount method.
}
