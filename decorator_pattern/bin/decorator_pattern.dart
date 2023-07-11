import 'package:decorator_pattern/models/pizza.dart';
import 'package:decorator_pattern/models/widget.dart';

void main() {
  // Pizza pizza = PizzaImpl();
  // print(pizza.getDescription());

  // pizza = MushroomPizzaDecorator(pizza);
  // print(pizza.getDescription());

  // pizza = CheesePizzaDecorator(pizza);
  // print(pizza.getDescription());

  Widget widget = Column(children: [Text(), Container(child: Text())]);
  print(widget.draw());
}
