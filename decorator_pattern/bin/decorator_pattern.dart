

// import 'package:decorator_pattern/decorator_pattern.dart';

// void main() {
  
//   // Creating a concrete component
//   Component component = Component();

//   // Decorating the component with a concrete decorator
//   Component decoratedComponent = ConcreteDecorator(component);

//   // Calling the operation
//   decoratedComponent.operation();
// }

import 'package:decorator_pattern/models/pizza.dart';
import 'package:decorator_pattern/models/widget.dart';

void main() {
  Pizza pizza = PizzaImpl();
  print("${pizza.getDescription()}+${pizza.getCost()}");

  pizza = MushroomPizzaDecorator(pizza);
  print("${pizza.getDescription()}+${pizza.getCost()}");

  pizza = CheesePizzaDecorator(pizza);
  print("${pizza.getDescription()}+${pizza.getCost()}");

  Widget widget = Column(children: [Text(), Container(child: Text())]);
  print(widget.draw());
}
