
import 'package:decorator_pattern/decorator_pattern.dart';

void main() {
  
  // Creating a concrete component
  Component component = ConcreteComponent();

  // Decorating the component with a concrete decorator
  Component decoratedComponent = ConcreteDecorator(component);

  // Calling the operation
  decoratedComponent.operation();
}