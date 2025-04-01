namespace Program;
public class Program {
  static int programScope = 69;
  public static void Main(string[] args) {
    var mainScope = 20;
    Console.WriteLine("Hello, World!");
    Console.WriteLine(mainScope);
    Test();
  }
  static void Test() {
    bool myBool = true;
    if (myBool) {
      var inIf = "oma";
      Console.WriteLine("Test");
    }
    {
      var variableInOtherScope = 10;
      Console.WriteLine(variableInOtherScope);
    }
    // Console.WriteLine(variableInOtherScope);  -- funktioniert nicht, variable in anderem scope
    Console.WriteLine(programScope);
  }
}
