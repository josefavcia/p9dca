import std.stdio;
import std.algorithm;
import std.range;
import std.conv; 

class RPoint
{
  int x;
  int y;
  string text;
  this()
  {
    x = 0;
    y = 0;
    text = "";
  }
  this(int a, int b, string t)
  in { assert(a >=0); assert(b >=0); }
  out (result){ assert(result.x >= 0 && result.y >= 0); }
  do {
    x = a;
    y = b;
    text = t;
    
  }
  void move(int a, int b)
  {
    x += b;
    y += b;
  }
  override string toString()
  {
    return "(x: " ~ to!string(x) ~ ", y: " ~ to!string(y) ~ ")";
  }
  invariant()
  {
    //assert(x >= 0 && y >= 0);
    assert(text != "");
  }
}
/*
class RPointD : RPoint
{
  override void move(int a, int b)
  in { assert(a >=0); assert(b >=0); }
  do {
    x += a;
    y += b;
  }
}
*/
void main()
{
    // Let's get going!
    writeln("Hello World!");

    // An example for experienced programmers:
    // Take three arrays, and without allocating
    // any new memory, sort across all the
    // arrays inplace
    //int[] arr1 = [4, 9, 7];
    //int[] arr2 = [5, 2, 1, 10];
    //int[] arr3 = [6, 8, 3];
    //sort(chain(arr1, arr2, arr3));
    // writefln("%s\n%s\n%s\n", arr1, arr2, arr3);
    // To learn more about this example, see the
    // "Range algorithms" page under "Gems"
    
    //RPoint point = new RPoint();
    RPoint p = new RPoint(2, 0, "si");
    writeln(p.toString());
    p.move(1,1);
    writeln(p.toString());
    
    
    RPoint error = new RPoint(2, 0, "a");
}
