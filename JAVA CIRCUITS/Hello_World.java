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
// exception will be generated when we are trying to print an empty array or when we are trying to print elements of an array beyond its index value.
// The set of codings starting from the main method is called "Thread" 
// The number of strings you give in command prompt , while executing java program , is the length of the argument array. (args[])
// In Command Prompt , the maximum number of command line arguments that can be given is 8191.
