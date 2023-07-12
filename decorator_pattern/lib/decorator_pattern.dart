// Base interface for the component
 class Component {
 void operation() {
    print('Executing operation in ConcreteComponent');
  }}

// Concrete component
// class ConcreteComponent implements Component {
//   @override
 
// }

// Decorator
abstract class Decorator implements Component {
  Component component;

  Decorator(this.component);

// my conflict is here
  @override
  void operation() {
    component.operation();
  }
}

// Concrete decorator
class ConcreteDecorator extends Decorator {
  ConcreteDecorator(Component component) : super(component);

  @override
  void operation() {
    super.operation();
    additionalOperation();
  }

  void additionalOperation() {
    print('Executing additional operation in ConcreteDecorator');
  }
}
