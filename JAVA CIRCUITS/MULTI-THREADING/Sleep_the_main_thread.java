// In this program , we make the main thread sleep for 5000 ms or 5 seconds and then print the message "The main thread is now only started".
// Whenever we are trying to sleep a thread , we need to define try and catch blocks for it.
// In the try block , the sleep method will be defined
// In the catch block , we will catch the exception when the thread is in sleep state and then print using e.printStackTrace();
class Multi_1 extends Thread
{
	public static void main(String args[])
	{
		Thread t = Thread.currentThread(); 
		try
		{
			t.sleep(5000);

		}
		catch (Exception e)
		{
           e.printStackTrace();
		}
		System.out.println("The main thread is now only started");
	}
}
