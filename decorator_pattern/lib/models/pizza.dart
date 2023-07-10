abstract class Pizza {
  String getDescription();
  double getCost();
}

class PizzaDecorator implements Pizza {
  final Pizza _pizza;
  PizzaDecorator(this._pizza);
  @override
  double getCost() {
    return _pizza.getCost();
  }

  @override
  String getDescription() {
    return _pizza.getDescription();
  }
}

class CheesePizzaDecorator extends PizzaDecorator {
  CheesePizzaDecorator(Pizza pizza) : super(pizza);

  @override
  double getCost() {
    return super.getCost() + 1.5;
  }

  @override
  String getDescription() {
    return '${super.getDescription()} Extra cheese';
  }
}

class MushroomPizzaDecorator extends PizzaDecorator {
  MushroomPizzaDecorator(Pizza pizza) : super(pizza);

  @override
  double getCost() {
    return super.getCost() + 2.30;
  }

  @override
  String getDescription() {
    return '${super.getDescription()} + mushroom';
  }
}
