// Dart looks for this void main() when we run the code.
void main() {
  // Multiple Hellos in dart.
  for (var i = 0; i < 4; i++) {
    print('Hello $i');
  }

  // ================================
  // Variables in dart
  var name = "mario"; // This can only be a string once you set it
  name = "luigi"; // but the same string type will work
  print(name);

  // Other keywords for variable final and const
  final age = 25; // final can't be changed after. runtime constant
  // Using final if we don't know what value will be at compile time.
  // example if we fetch some data and the value depends on the return value of some other function

  const isOpen =
      true; // constant also can't be changed after. compile time constant.
  print(isOpen);
  print(age);

  // Numerical Operations
  print(age + 10);
  print(age - 10);
  print(age * 10);
  print(age / 5);
  print(age % 10);

  // String Concantenation
  print("my name is " + name);
  // String Interpolation
  print("my name is $name and my age is $age");
  // print("my name is ${person.name}");

  /*
    Multiple line comment
  */
}
