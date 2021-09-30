Code No. 1 : We create a string as an array of characters. The Index of the character array starts at 0. If we specify the character variable and the index which we want to access , we get that character from the array
public class String_1
{
public static void main(String args[])
{
char ch[] = {'W','e','l','c','o','m','e'};// ch is an array of 7 characters
System.out.println(ch[4]);
}
}

Code No.2 : Another method is to assign a string to a string object. Then using charAt() method of String class , to access the desired character
public class String_1
{
public static void main(String args[])
{
String s1 = "Welcome";
char ch = s1.charAt(4);
System.out.println(ch);//ch is the character variable , which holds the character at position 4 of the string "Welcome"
}
}

Code 3 : If we try to access a location beyond the allotted indices , then we get String Out of Bounds Exception at run-time
public class String_1
{
public static void main(String args[])
{
String s1 = "Welcome";
char ch = s1.charAt(8);
System.out.println(ch);//This generates String Out of Bounds Exception , because the number of indices in the string "Welcome" ranges from 0 to 7 , since the string "Welcome" is a 7 characters string
}
}

Code No.4 : Access the first character and last character of a string stored in the String object
public class String_1
{
public static void main(String args[])
{
String s1 = "Welcome";
int strlength = s1.length();// length() method is used to determine the number of indices in a given string object
char ch = s1.charAt(0);// This displays the first character of string
System.out.println(ch);
char ch_1 = s1.charAt(strlength-1); //The last character is present at the index = Number of characters in the string - 1
System.out.println(ch_1);// This prints the last character of the string
}
}
 
