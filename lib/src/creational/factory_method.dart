/// The Factory Method pattern allows to create objects without specifying their exact class,
/// promoting flexibility and extensibility in your code.
library;

// Defining the product interface
abstract interface class Product {
  String showMessage();
}

// Concrete product classes
class ConcreteProductA implements Product {
  @override
  String showMessage() {
    return 'Hello from Concrete Product A';
  }
}

class ConcreteProductB implements Product {
  @override
  String showMessage() {
    return 'Hello from Concrete Product B';
  }
}

// Product types
enum ProductType { A, B }

// Creator class
abstract interface class Creator {
  // The factory method
  Product createProduct(ProductType type);
}

// Concrete creator class
class ConcreteCreator implements Creator {
  @override
  Product createProduct(ProductType type) => switch (type) {
        ProductType.A => ConcreteProductA(),
        ProductType.B => ConcreteProductB(),
      };
}

void main() {
  Creator creator = ConcreteCreator();

  Product productA = creator.createProduct(ProductType.A);
  print(productA.showMessage()); // Hello from Concrete Product A

  Product productB = creator.createProduct(ProductType.B);
  print(productB.showMessage()); // Hello from Concrete Product B
}
