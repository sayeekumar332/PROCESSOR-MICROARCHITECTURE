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
