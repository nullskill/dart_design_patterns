/// The Singleton pattern is useful when we want to limit the number
/// of instances of a class and ensure global access to that instance.
library;

// Singleton class
class Singleton {
  static Singleton? _instance;

  // Private constructor
  Singleton._();

  // Factory method to get the singleton instance
  factory Singleton() => _instance ??= Singleton._();

  void showMessage() {
    print("Hello from Singleton!");
  }
}

void main() {
  // Create two instances of Singleton
  final singleton1 = Singleton();
  final singleton2 = Singleton();

  // Both instances are the same
  print(singleton1 == singleton2); // Output: true

  // Show message from the singleton
  singleton1.showMessage(); // Output: "Hello from Singleton!"
  singleton2.showMessage(); // Output: "Hello from Singleton!"
}
