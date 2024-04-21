/// The Builder pattern allows to create complex objects step by step,
/// providing flexibility and separation of concerns.
library;

// Product class
class House {
  String? foundation;
  String? walls;
  String? roof;
  String? doors;
  String? windows;

  void display() {
    print("House with $foundation, $walls, $roof, $doors, and $windows.");
  }
}

// Builder interface
abstract class HouseBuilder {
  void buildFoundation();
  void buildWalls();
  void buildRoof();
  void buildDoors();
  void buildWindows();
  House getResult();
}

// Concrete builder
class ConcreteHouseBuilder implements HouseBuilder {
  House house = House();

  @override
  void buildFoundation() {
    house.foundation = "Concrete foundation";
  }

  @override
  void buildWalls() {
    house.walls = "Brick walls";
  }

  @override
  void buildRoof() {
    house.roof = "Tile roof";
  }

  @override
  void buildDoors() {
    house.doors = "Wooden doors";
  }

  @override
  void buildWindows() {
    house.windows = "Glass windows";
  }

  @override
  House getResult() {
    return house;
  }
}

// Director
class HouseDirector {
  HouseBuilder builder;

  HouseDirector(this.builder);

  House constructHouse() {
    builder.buildFoundation();
    builder.buildWalls();
    builder.buildRoof();
    builder.buildDoors();
    builder.buildWindows();
    return builder.getResult();
  }
}

void main() {
  final builder = ConcreteHouseBuilder();
  final director = HouseDirector(builder);

  final house = director.constructHouse();
  house.display();
}
