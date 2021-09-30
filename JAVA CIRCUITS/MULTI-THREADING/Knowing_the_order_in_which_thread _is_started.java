
Code No.1 : In this program , we create three threads namely main thread , child thread m1 , child thread m2. Then we start it and see how are they scheduled
import java.lang.*;
class Multi extends Thread
{
	public void run()
	{
		System.out.println("Currently this is the thread which is running " + Thread.currentThread());
		
	}
	public static void main(String args[])
	{
		Thread t = Thread.currentThread();
		t.setName("Admin Thread");
		t.setPriority(1);
		Multi m1 = new Multi();
		m1.setName("First Child Thread");
		Multi m2 = new Multi();
    m2.setName("Second Child Thread");
		m1.start(); // Here I have mentioned m1 is the child thread which has to be first started and then followed by m2.
		m2.start();
		System.out.println("Thread = " + t);
			}
}
The output will be:
First the main thread will be executed and its information will be printed - Thread = Thread[Admin Thread,1,main]
Then the child thread m2 is allowed to run - Currently this is the thread which is running Thread[Second Child Thread,1,main]
Then the child thread m1 is allowed to run - Currently this is the thread which is running Thread[First Child Thread,1,main]

So a start method does not guarantee the order in which the child threads will be executed. It is entirely upto the CPU.
