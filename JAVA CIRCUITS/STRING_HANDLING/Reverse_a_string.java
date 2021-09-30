Code No.1 : Reversing a string using reverse() method and toString() of String Builder class.
String class is used for creating immutable strings. String Buffer and String Builder class is used for creating mutable strings

String_1.java :[Separate Java File]
public class String_1
{
public static void main(String args[])
{
System.out.println(Rev_String.reverseString("My name is Sayeekumar"));
}
}

Rev_String.java:[Separate Java File]
public class Rev_String
{
public static String reverseString(String str) // return type of the function is String object
{
StringBuilder sb = new StringBuilder(str);// sb will be in heap memory and the string "str" will be in 
sb.reverse();// This reverses string in the object "sb"
return sb.toString();// This converts the object "sb" into String
}
}
