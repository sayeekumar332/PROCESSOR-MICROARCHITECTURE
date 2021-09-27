Code No : 1
// In this Java Program , the string Hello World is given as command line argument in command prompt
class Hello_World
{
  public static void main(String args[]) //String args[] is a array of the data-type String.
  {
    System.out.print(args[0] + " " + args[1]);// + serves as String concatenation operator ; The empty double quotes serves as "space" between the two command line arguments
  }
}

Code No:2

// Another way of writing the same program
class Hello_World
{
  public static void main(String[] args) // The empty square braces can be placed even before the keyword "args" ; String[] args is a array of the data-type String.
  {
    System.out.print(args[0] + " " + args[1]); // + serves as String concatenation operator ; The empty double quotes serves as "space" between the two command line arguments
  }
}


// In command prompt , the way of compiling[i.e. creating .class files[or Bytecode] is to give the following text
javac class_name.java

// In command prompt , the way of executing Java Program is to give the following text
java class_name args[0] args[1]........... and so on

// The command line arguments "args[n]" , where "n" represents an integer , when separated by white spaces will be considered as separate arguments
// The first command line argument is indexed at 0 , the second at 1 and so on.
// Class name mismatches with file name is considered a run-time error. Compiler allows file-name and class_name mismatches.
// Giving the command line arguments during execution of java program is compulsory
// Using the command line arguments in a java program , but not giving them during execution of java program from command prompt will generate "ArrayIndexOutofBounds" Exception. This
// exception will be generated when we are trying to print an empty array or when we are trying to print elements of an array beyond its index value. This is a run-time error.
// The set of codings starting from the main method is called "Thread" 
// The number of strings you give in command prompt , while executing java program , is the length of the argument array. (args[])
// In Command Prompt , the maximum number of command line arguments that can be given is 8191.


// public static void main - All these keywords are for facilitating JVM[Java Virtual Machine] - a Stack based Processor Micro-architecture , with 65,536 Stack Locations
// public - The main method can be accessed by JVM , which is outside the class implemented here
// static - The main method can be accessed by JVM before creating an object for the class
// void - The main method does not return any value.

// JVM[Java Virtual Machine] is present as .dll[Dynamic Link Library] within the JRE folder which is installed along with the JDK in a particular drive
// jre 1.x.y_zzz ---> bin --> server or client --> jvm.dll
x - refers to the version
y - refers to the subversion of x
zzz - refers to sub-version of y
