// Method overriding

void main() {
  var noodles = MenuItem('veg noodles', 9.99);
  var pizza = Pizza(["mushrooms", "peppers"], "veg volcano", 15.99);

  print(noodles.format());
  print(pizza.format());

  // Dart uses toString method to convert class to a readable format
  print(noodles);
  print(pizza);
}

class MenuItem {
  String title;
  double price;

  MenuItem(this.title, this.price);

  String format() {
    return "$title --> $price";
  }

  // overriding toString() for print
  @override
  String toString() {
    return format();
  }
}

class Pizza extends MenuItem {
  List<String> toppings;
  Pizza(this.toppings, super.title, super.price);

  // new method overrides the MenuItem class
  @override
  String format() {
    var formattedToppings = 'Contains:';

    for (final t in toppings) {
      formattedToppings = '$formattedToppings $t';
    }

    return '$title -> £$price \n$formattedToppings';
  }

  @override
  String toString() {
    return 'Instance of Pizza: $title, $price, $toppings';
  }
}
