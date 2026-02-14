void main() {
  // List of Integers
  // var scores = [50, 75, 20, 99];

  // You can add multiple types to a list
  // var scores = [50, 75, 20, "mario"];

  // var scores = [50, 75, 20, 99];
  // You can also declare it explicitly integers
  List<int> scores = [50, 75, 20, 99, 20];

  // change the value
  scores[0] = 25;
  print(scores[0]);

  // adding new values
  scores.add(100);
  print(scores);

  // remove the first value of 20
  scores.remove(20);
  print(scores);

  // removeLast
  scores.removeLast();
  print(scores);

  // Length
  print(scores.length);

  // Shuffle
  scores.shuffle();
  print(scores);

  // Index of an element
  print(scores.indexOf(20));

  // Sets (not ordered, hates duplicate values)
  // var names = {"mario", "luigi", "peach"};
  Set<String> names = {"mario", "luigi", "peach"};

  print(names);

  // add elements to a set
  names.add("bowser");
  names.add("peach");

  print(names);

  // remove element
  names.remove("luigi");
  print(names);

  // Name length
  print(names.length);
}
