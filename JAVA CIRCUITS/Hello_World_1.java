// In this Java Program , we implement static keyword for the packages also
// Static keywords in Java could be used under the following conditions:
1. For packages imported in a Java program
2. For classes
3. For data members of a class
4. For method members or functions of a class

Code No. 1:  
import static java.lang.System.*; // Here we import all the static members of the System class
class Hello_World
{
  public static void main(String args[]) //String args[] is a array of the data-type String.
  {
  out.print(args[0] + " " + args[1]);// + serves as String concatenation operator ; The empty double quotes serves as "space" between the two command line arguments. "out" is a static variable of the final class System. Here the class_name has been eliminated. Only the final variable and the corresponding static function println has been included
  out.print(args.length);
  }
}
When we include static word for a package , we need not mention the Class_name whenever we are accessing the static members [Data members or variables and Method members or functions] of a class

Code No. 2:  
import static java.lang.System.out; // Here we specify the static data member "out" of the System class
class Hello_World
{
  public static void main(String args[]) //String args[] is a array of the data-type String.
  {
  out.print(args[0] + " " + args[1]);// + serves as String concatenation operator ; The empty double quotes serves as "space" between the two command line arguments. "out" is a static variable of the final class System. Here the class_name has been eliminated. Only the final variable and the corresponding static function println has been included
  out.print(args.length);
  }
}  
When static keyword are mentioned for packages , we cannot mention the instance members or methods of the classes belonging to the package , in the "import" statement
