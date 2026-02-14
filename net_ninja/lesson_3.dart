void main() {
  // var name = "mario"; // Dart infers the type to be a string

  // Explicitly adding type annotation
  String name = "mario";
  // const String name = "mario"; // You can declare const or final with type annotation
  name = "luigi"; // You can change the value, but not the type
  print(name);

  int age = 25;
  print(age);

  bool isOpen = true;
  print(isOpen);

  double averageRating = 7;
  averageRating = 7.9;
  print(averageRating);

  // Null Safety, so in order to use the variable you need to assigned it first
  // Example on printing variable point resulting in errors.
  // int point;
  // print(point);

  // To allow null just add ?
  int? point;
  print(point);
}
