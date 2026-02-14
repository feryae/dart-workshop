void main() {
  // final greeting = greet("mario", 25); // Positioned arguments, so in order
  //print(greeting);

  // Named Parameters
  final greeting = greet(name: "mario", age: 25); // order doesn't matter
  print(greeting);
}

/*  
 greet(name, age) {
   return "Hi, my name is $name and I am $age";
 }
 Not good because you can pass it like
 final greeting = greet(10, true);
 and it is still true
*/

/* 
 With type annotation
 String greet(String name, int age) {
   return "Hi, my name is $name and I am $age";
 }
*/

// with named parameters, {}
// ? for nullable or required for required
String greet({String? name, required int age}) {
  return "Hi, my name is $name and I am $age";
}
