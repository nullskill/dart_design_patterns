/// The Visitor pattern allows to add new operations
/// to existing object structures without modifying those structures.
library;

// Abstract interface for the elements (accepts visitors)
abstract interface class Element {
  void accept(Visitor visitor);
}

/* Concrete elements */

class ConcreteElementA implements Element {
  @override
  void accept(Visitor visitor) {
    visitor.visitElementA(this);
  }
}

class ConcreteElementB implements Element {
  @override
  void accept(Visitor visitor) {
    visitor.visitElementB(this);
  }
}

// Visitor interface
abstract interface class Visitor {
  void visitElementA(ConcreteElementA elementA);
  void visitElementB(ConcreteElementB elementB);
}

// Concrete visitor: LogVisitor
class LogVisitor implements Visitor {
  @override
  void visitElementA(ConcreteElementA elementA) {
    print("Logging Element A");
  }

  @override
  void visitElementB(ConcreteElementB elementB) {
    print("Logging Element B");
  }
}

// Concrete visitor: DisplayVisitor
class DisplayVisitor implements Visitor {
  @override
  void visitElementA(ConcreteElementA elementA) {
    print("Displaying Element A");
  }

  @override
  void visitElementB(ConcreteElementB elementB) {
    print("Displaying Element B");
  }
}

void main() {
  final elementA = ConcreteElementA();
  final elementB = ConcreteElementB();

  final logVisitor = LogVisitor();
  final displayVisitor = DisplayVisitor();

  elementA.accept(logVisitor); // Logging Element A
  elementB.accept(logVisitor); // Logging Element B

  elementA.accept(displayVisitor); // Displaying Element A
  elementB.accept(displayVisitor); // Displaying Element B
}
