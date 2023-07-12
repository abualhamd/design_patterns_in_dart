abstract class Pizza {
  String getDescription();
  double getCost();
}

class PizzaImpl implements Pizza {
  @override
  double getCost() {
    return 3.50;
  }

  @override
  String getDescription() {
    return 'your favoirte pizza';
  }
}

class PizzaDecorator implements Pizza {
  final Pizza _pizza;
  PizzaDecorator(this._pizza);
  @override
  double getCost() {
    return _pizza.getCost(); //3.5
  }

  @override
  String getDescription() {
    return _pizza.getDescription(); //your favoirte pizza';
  }
}

class CheesePizzaDecorator extends PizzaDecorator {
  CheesePizzaDecorator(Pizza pizza) : super(pizza);

  @override
  double getCost() {
    return super.getCost() + 1.5;// 3.5 + 1.5
  }

  @override
  String getDescription() {
    return '${super.getDescription()} Extra cheese';//your favoirte pizza' + 'Extra cheese'
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
