Code No.1 : Declare a object of String class and assign a String to it and then print it.
  public class String_1
{
public static void main(String args[])
{
String s1 = "Welcome";// s1 is the object of the String class ; String class supports immutable strings ; s1 is stored in Heap memory and the string "Welcome" stored in "String Constant Pool";
System.out.println(s1);// s1 points to the location in the String constant pool where the String is stored. Hence the string object is a pointer to string.
}
}

Code No.2 : Another way to print a string is to get an array of characters in to a character variable and pass it as a parameter to String class constructor
public class String_1
{
public static void main(String args[])
{
char ch[] = {'W','e','l','c','o','m','e'};// ch is an array of 7 characters
String s1 = new String(ch); // Converting a character array to string
System.out.println(s1);
}
} 

Code No.3 : Another way to print a string is to pass the string as parameter into the String class constructor
public class String_1
{
public static void main(String args[])
{
String s1 = new String("Welcome"); 
System.out.println(s1);
}
} 


