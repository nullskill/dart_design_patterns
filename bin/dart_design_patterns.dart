import 'package:dart_design_patterns/src/behavioral/observer.dart' as observer;
import 'package:dart_design_patterns/src/creational/builder.dart' as builder;
import 'package:dart_design_patterns/src/creational/factory_method.dart' as factory_method;
import 'package:dart_design_patterns/src/creational/singleton.dart' as singleton;

void main(List<String> arguments) {
  // creational patterns
  builder.main();
  singleton.main();
  factory_method.main();
  // behavioral patterns
  observer.main();
}
