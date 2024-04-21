/// The Decorator pattern allows to dynamically add behavior or attributes
/// to an object by wrapping it with decorators that share the same interface.
library;

// Abstract interface for shapes
abstract interface class Shape {
  String draw();
}

/* Concrete shapes */

class Square implements Shape {
  @override
  String draw() => "Square";
}

class Triangle implements Shape {
  @override
  String draw() => "Triangle";
}

// Decorator interface
abstract class ShapeDecorator implements Shape {
  final Shape shape;

  ShapeDecorator(this.shape);

  @override
  String draw();
}

/* Concrete decorators */

class GreenShapeDecorator extends ShapeDecorator {
  GreenShapeDecorator(super.shape);

  @override
  String draw() => "Green ${shape.draw()}";
}

class BlueShapeDecorator extends ShapeDecorator {
  BlueShapeDecorator(super.shape);

  @override
  String draw() => "Blue ${shape.draw()}";
}

void main() {
  final square = Square();
  print(square.draw()); // Square

  final greenSquare = GreenShapeDecorator(square);
  print(greenSquare.draw()); // Green Square

  final blueGreenSquare = BlueShapeDecorator(greenSquare);
  print(blueGreenSquare.draw()); // Blue Green Square
}
