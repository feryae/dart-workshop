// Maps
void main() {
  // Creates an empty map. Not a set. To make a set we need to explicitly say it is a set.
  // var planets = {};

  // You can have any type as the key
  // var planets = {
  //     "first" : "mercury",
  // };
  // var planets = {
  //     1 : "mercury",
  // };

  // Specify type of keys
  Map<String, String> planets = {
    "first": "mercury",
    "second": "venus",
    "third": "earth",
    "fourth": "mars",
    "fifth": "jupiter",
  };

  // print(planets);
  print(planets["fifth"]);

  // Update the value
  planets["fifth"] = "abcdef";
  print(planets["fifth"]);

  // Adding the value
  planets["sixth"] = "uranus";
  print(planets);

  // Check if a key exists
  print(planets.containsKey("third"));
  print(planets.containsKey("seventh"));

  // Check if a value exists
  print(planets.containsValue("earth"));

  // Remove elements
  print(planets.remove("third"));
  print(planets);

  // Get all the keys
  print(planets.keys);

  // Get all values
  print(planets.values);
}
