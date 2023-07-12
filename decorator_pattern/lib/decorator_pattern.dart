// Base interface for the component
abstract class Component {
  void operation();
}

// Concrete component
class ConcreteComponent implements Component {
  @override
  void operation() {
    print('Executing operation in ConcreteComponent');
  }
}

// Decorator
abstract class Decorator implements Component {
  Component component;

  Decorator(this.component);

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
