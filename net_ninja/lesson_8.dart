// classes

void main() {
  // title, price, format() -> string

  var noodles = MenuItem('veg noodles', 9.99);
  var pizza = Pizza(["mushrooms", "peppers"], "veg volcano", 15.99);

  print(noodles.title);
  print(noodles.price);
  print(pizza.title);
  print(pizza.price);

  print(noodles.format());
  print(pizza.format());
}

class MenuItem {
  String title;
  double price;

  // constructor is a special function that runs when we create a new instance of the class
  // takes value and assign it to the property
  MenuItem(this.title, this.price);

  // defining a method
  String format() {
    return "$title --> $price";
  }
}

// Inherit / extend class
class Pizza extends MenuItem {
  List<String> toppings;

  // Pizza(this.toppings, String title, double price) : super(title, price);
  // shorthand for this:
  Pizza(this.toppings, super.title, super.price);
}
